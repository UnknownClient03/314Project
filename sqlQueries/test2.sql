USE RESTURANTS;

EXEC createNewOrder 2, 2, 2, '2024-04-02', 4, '';

SELECT * FROM Order_ WHERE ResturantID = 0;
SELECT * FROM ORDER_ WHERE ID = 0;

SELECT orderID, price FROM OrderDetails INNER JOIN Item on ID = itemID;


SELECT * FROM payment;

SELECT * FROM ItemReview;
EXEC getSaltPepper 'allisonjdixon03@gmail.com', 1;

SELECT * FROM payment;

SELECT ID FROM Item WHERE ResturantID != 0;

SELECT ID FROM Item WHERE ResturantID = 1 AND ID = 0;

SELECT * FROM OrderDetails INNER JOIN ITEM ON ID = itemID WHERE orderID = 0;

SELECT customerID FROM ORDER_ WHERE ResturantID = 0 AND ID = 0;

SELECT * FROM Customer INNER JOIN CAddress ON ID = customerID WHERE ID = any(SELECT customerID FROM ORDER_ WHERE ResturantID = 0 AND ID = 0);

SELECT * FROM Resturant INNER JOIN Contact ON ID = Contact.ResturantID INNER JOIN RAddress ON ID = RAddress.ResturantID WHERE ID = 0;

SELECT ID, * FROM ORDER_ WHERE ResturantID = 0;

SELECT * FROM OrderDetails INNER JOIN ITEM ON ID = itemID WHERE orderID = 1;

UPDATE Order_ SET status = 'processed' WHERE ID = 4 AND ResturantID = 0;
UPDATE Order_ SET status = 'cooking' WHERE ID = 4 AND ResturantID = 0;

UPDATE 
SELECT * FROM ORDER_;


SELECT ID, * FROM ORDER_ WHERE ResturantID = 0 AND ID = 0;

SELECT * FROM Customer INNER JOIN CAddress ON ID = customerID WHERE ID = any(SELECT customerID FROM ORDER_ WHERE ResturantID = 0 AND ID = 0)
SELECT * FROM Customer INNER JOIN CAddress ON ID = customerID WHERE ID = any(SELECT customerID FROM ORDER_ WHERE ResturantID = 0 AND ID = 4)



DELETE FROM OrderDetails WHERE itemID = 0;

SELECT * FROM ItemReview;

EXEC UpdateStatus 0, 0, 'cooking';
EXEC UpdateStatus 0, 0, 'completed';
SELECT * FROM ORDER_;



DROP FUNCTION checkStatus;

UPDATE Order_ SET status = 'completed' WHERE ResturantID = 0 AND ID = 0 AND dbo.checkStatus(status, 'completed') IS NOT NULL;

SELECT * FROM Order_ WHERE ResturantID = 0 AND ID = 0;

SELECT checkStatus('cooking');

UPDATE Order_ SET arrivalTime = 0 WHERE ID = 0 AND ResturantID = 0 AND (status = 'processed' OR status = 'cooking');
UPDATE Order_ SET arrivalTime = 0 WHERE ID = 0 AND ResturantID = 0 AND (status = 'completed' OR status = 'dispatched');

EXEC refundOrder 1;

