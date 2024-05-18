USE RESTURANTS;

--drop tables
DROP TABLE Payment;
DROP TABLE OrderDetails;
DROP TABLE Order_
DROP TABLE Membership;
DROP TABLE CAddress;
DROP TABLE CustomerAccountDetails;
DROP TABLE Customer;
DROP TABLE ItemReview
DROP TABLE ItemKeyword;
DROP TABLE Item;
DROP TABLE ResturantKeyword;
DROP TABLE OperatingHours;
DROP TABLE Contact;
DROP TABLE RAddress;
DROP TABLE ResturantAccountDetails;
DROP TABLE Resturant;

--drop users
DROP USER readItem;
DROP LOGIN readItems;
DROP USER resturantAccount;
DROP LOGIN resturantAccounts;
DROP USER customerAccount;
DROP LOGIN customerAccounts;

--drop procedures/functions

DROP PROCEDURE SelectItems;
DROP PROCEDURE getSaltPepper;
DROP PROCEDURE checkPassword;
DROP PROCEDURE InsertNewCustomer;
DROP PROCEDURE createNewOrder;
DROP PROCEDURE refundOrder;
DROP PROCEDURE updateDeliveryCost;
DROP FUNCTION checkStatus;