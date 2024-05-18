USE RESTURANTS;

GO
CREATE TRIGGER AVGratingI ON Item AFTER INSERT, UPDATE, DELETE
AS UPDATE Resturant SET Resturant.rating = t.average FROM (SELECT ResturantID, AVG(rating) AS average FROM Item GROUP BY ResturantID) AS t WHERE t.ResturantID = ID;

GO
CREATE TRIGGER AVGratingR ON Item AFTER INSERT, UPDATE, DELETE
AS UPDATE Item SET Item.rating = t.average FROM (SELECT itemID, AVG(rating) AS average FROM ItemReview GROUP BY itemID) AS t WHERE t.itemID = ID;


GO
CREATE TRIGGER orderPriceQty ON OrderDetails AFTER INSERT
AS
BEGIN
	UPDATE Order_ SET Order_.quantity = t.total FROM (SELECT orderID, SUM(quantity) AS total FROM OrderDetails GROUP BY orderID) AS t WHERE t.orderID = ID;
	UPDATE Order_ SET Order_.totalprice = t.total FROM (SELECT orderID, SUM(unitprice * quantity) AS total FROM OrderDetails GROUP BY orderID) AS t WHERE t.orderID = ID;
END

GO
CREATE TRIGGER Createpayment ON Order_ AFTER INSERT
AS
BEGIN
	DECLARE @orderID int;
	SET @orderID = (SELECT ID FROM Order_ LEFT JOIN Payment ON ID = orderID WHERE orderID IS NULL);


	DECLARE @itemCost int;
	SET @itemCost = (SELECT totalprice FROM Order_ WHERE ID = @orderID);

	DECLARE @type nvarchar(10);
	SET @type = (SELECT type FROM Membership WHERE customerID = ANY (SELECT customerID FROM Order_ WHERE ID = @orderID));

	DECLARE @discount DECIMAL(4, 2);
	SET @discount = CASE WHEN @type = 'silver' THEN 0.05
						 WHEN @type = 'gold' THEN 0.1
						 WHEN @type = 'platinum' THEN 0.2
						 ELSE 0
					END;

	INSERT into Payment VALUES (@orderID, @itemCost, 0, @discount);
END

GO
CREATE TRIGGER updatepayment ON Order_ FOR UPDATE
AS UPDATE Payment SET itemCost = (SELECT totalprice FROM Order_ WHERE ID = orderID);