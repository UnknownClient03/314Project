USE RESTURANTS;

GO
CREATE PROCEDURE SelectItems @A nvarchar(30), @B nvarchar(10), @C nvarchar(10), @D nvarchar(10), @E nvarchar(10), @isVegan bit, @isvegeterian bit, @isGlutenFree bit, @category nvarchar(30), @minPrice DECIMAL(8, 2), @maxPrice DECIMAL(8, 2), @minRating Decimal(2, 1), @maxRating Decimal(2, 1) 
AS
BEGIN
SET NOCOUNT ON
DECLARE @kwords TABLE(ID int not null, kword nvarchar(30) not null);
BEGIN TRY insert into @kwords values (0, @A) END TRY BEGIN CATCH END CATCH;
BEGIN TRY insert into @kwords values (1, @B) END TRY BEGIN CATCH END CATCH;
BEGIN TRY insert into @kwords values (2, @C) END TRY BEGIN CATCH END CATCH;
BEGIN TRY insert into @kwords values (3, @D) END TRY BEGIN CATCH END CATCH;
BEGIN TRY insert into @kwords values (4, @E) END TRY BEGIN CATCH END CATCH;

SELECT * INTO #Item FROM Item WHERE ID = null;

DECLARE @condition INT;
SET @condition = 0;
WHILE @condition < (SELECT COUNT(kword) FROM @kwords)
    BEGIN 
	DECLARE @kword nvarchar(30);
	SET @kword = (SELECT kword FROM @kwords WHERE ID = @condition);
	INSERT INTO #Item SELECT * FROM Item WHERE EXISTS(SELECT ResturantID FROM ResturantKeyword WHERE ResturantKeyword.ResturantID = Item.ResturantID AND kWord LIKE @kword) OR
											   EXISTS(SELECT itemID FROM ItemKeyword WHERE ID = itemID AND kWord LIKE @kword);
	SET @condition = @condition+1;
END
	SELECT COUNT(ID) as precedence, ResturantID, ID, name, description, availability, price, discount, kilojoules, isVegan, isvegeterian, isGlutenFree, rating, category
		FROM #Item GROUP BY ResturantID, ID, name, description, availability, price, discount, kilojoules, isVegan, isvegeterian, isGlutenFree, rating, category
		HAVING isVegan >= @isVegan AND isvegeterian >= @isvegeterian AND isGlutenFree >= @isGlutenFree AND category = CASE WHEN @category = 'all' THEN category ELSE @category END
		AND price BETWEEN @minPrice AND @maxPrice AND rating BETWEEN @minRating AND @maxRating ORDER BY precedence DESC;
END;

GO
CREATE PROCEDURE InsertNewCustomer @ID int, @firstname nvarchar(30), @lastname nvarchar(30), @phoneNumber int, @email nvarchar(30), @password nvarchar(64), @salt nvarchar(16), @pepper nvarchar(16), @country nvarchar(30), @city nvarchar(30), @street nvarchar(30), @streetNum nvarchar(30), @unit nvarchar(30), @postcode int, @membership nvarchar(30), @type nvarchar(30), @lastpayment date, @nextpayment date, @isMember bit
AS
BEGIN
	INSERT INTO Customer VALUES(@ID, @firstname, @lastname, @phoneNumber, @email);
	INSERT INTO CAddress VALUES(@ID, @country, @city, @street, @streetNum, @unit, @postcode);
	IF @isMember = 1
	BEGIN
		INSERT INTO CustomerAccountDetails VALUES(@ID, @password, @salt, @pepper);
		INSERT INTO Membership VALUES(@ID, @membership, @type, @lastpayment, @nextpayment);
	END
END

GO
CREATE PROCEDURE getSaltPepper @email nvarchar(30), @isResturant bit AS
BEGIN
	IF @isResturant = 1 SELECT salt, pepper FROM ResturantAccountDetails WHERE ResturantID = ANY (SELECT ResturantID FROM Contact WHERE email = @email);
	IF @isResturant = 0 SELECT salt, pepper FROM CustomerAccountDetails WHERE customerID = ANY (SELECT ID FROM Customer WHERE email = @email);
END

GO
CREATE PROCEDURE checkPassword @pass nvarchar(64), @isResturant bit AS
BEGIN
	IF @isResturant = 1 SELECT ResturantID AS ID FROM ResturantAccountDetails WHERE Hashpassword = @pass;
	IF @isResturant = 0 SELECT customerID AS ID FROM customerAccountDetails WHERE Hashpassword = @pass;
END
GO

CREATE PROCEDURE createNewOrder @ID int, @customerID int, @itemID int, @today date, @quantity int, @notes nvarchar(255)
AS
BEGIN
	DECLARE @resturantID INT;
	SET @resturantID = (SELECT resturantID FROM Item WHERE ID = @itemID);

	IF (SELECT ID FROM Order_ WHERE @resturantID = ResturantID AND @customerID = customerID AND status = 'processed') IS NOT NULL 
		SET @ID = (SELECT ID FROM Order_ WHERE @resturantID = ResturantID AND @customerID = customerID);	--something here causes an error for the statement underneath? but still passes the right result
	
	BEGIN TRY INSERT INTO Order_ VALUES (@ID, @resturantID, @customerID, @today, NULL, 'processed', 0, 0) END TRY BEGIN CATCH END CATCH;

	DECLARE @price DECIMAL(8, 2);
	SET @price = (SELECT price FROM Item WHERE ID = @itemID) / (1-(SELECT discount FROM Item WHERE ID = @itemID));
	INSERT INTO OrderDetails VALUES (@itemID, @ID, @quantity, @price, @notes);
END;

GO
CREATE PROCEDURE refundOrder @orderID int AS
BEGIN
	SELECT dbo.checkStatus((SELECT status FROM Order_ WHERE ID = @orderID), 'canceled') AS statChanged;
	UPDATE Order_ SET status = 'canceled' WHERE ID = @orderID AND dbo.checkStatus(status, 'canceled') IS NOT NULL;
END

GO
CREATE PROCEDURE updateDeliveryCost @deliveryCost DECIMAL(4, 2), @customerID int
AS
BEGIN
	DECLARE @splitDcost DECIMAL(4, 2);
	SET @splitDcost = @deliveryCost / (SELECT COUNT(ID) FROM Order_ WHERE customerID = @customerID AND status = 'processed');
	UPDATE Payment SET deliveryCost = deliveryCost + @splitDcost WHERE orderID = ANY (SELECT ID FROM Order_ WHERE customerID = @customerID AND status = 'processed'); 
END

GO
CREATE FUNCTION checkStatus (@preStatus nvarchar(64), @postStatus nvarchar(64)) RETURNS INT
AS
BEGIN
IF		@preStatus = 'processed' AND @postStatus <> 'cooking' AND @postStatus <> 'canceled' RETURN NULL
ELSE IF @preStatus = 'cooking' AND @postStatus <> 'completed' AND @postStatus <> 'canceled' RETURN NULL
ELSE IF @preStatus = 'completed' AND @postStatus <> 'dispatched' RETURN NULL
ELSE IF @preStatus = 'dispatched' AND @postStatus <> 'arrived' RETURN NULL
ELSE IF @preStatus = 'arrived' RETURN NULL
ELSE IF @preStatus = 'canceled' RETURN NULL
RETURN 1
END