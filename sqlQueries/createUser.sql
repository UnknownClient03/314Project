USE RESTURANTS;

CREATE LOGIN readItems WITH PASSWORD = '';
CREATE USER readItem FOR LOGIN readItems;
GRANT SELECT ON Item TO readItem;
GRANT SELECT ON ItemKeyword TO readItem;
GRANT SELECT, INSERT ON ItemReview TO readItem;
GRANT SELECT ON Resturant TO readItem;
GRANT SELECT ON OperatingHours TO readItem;
GRANT SELECT ON ResturantKeyword TO readItem;
--this may need to be split into another level of permission
GRANT SELECT ON Customer TO readItem;
GRANT SELECT ON Order_ TO readItem;
GRANT SELECT ON OrderDetails TO readItem;
GRANT SELECT ON Payment TO readItem;
GRANT SELECT ON Membership TO readItem;
GRANT SELECT ON CAddress TO readItem;
GRANT SELECT ON RAddress TO readItem;
GRANT SELECT ON Contact TO readItem;
--
GRANT EXECUTE ON SelectItems TO readItem;
GRANT EXECUTE ON getSaltPepper TO readItem;
GRANT EXECUTE ON checkPassword TO readItem;
GRANT EXECUTE ON InsertNewCustomer TO readItem;
GRANT EXECUTE ON createNewOrder TO readItem;
GRANT EXECUTE ON refundOrder TO readItem;
GRANT EXECUTE ON updateDeliveryCost TO readItem;


CREATE LOGIN resturantAccounts WITH PASSWORD = '';
CREATE USER resturantAccount FOR LOGIN resturantAccounts;
GRANT SELECT, DELETE, UPDATE, INSERT ON Resturant TO resturantAccount;
GRANT SELECT, DELETE, UPDATE, INSERT ON ResturantAccountDetails TO resturantAccount;
GRANT SELECT, DELETE, UPDATE, INSERT ON RAddress TO resturantAccount;
GRANT SELECT, DELETE, UPDATE, INSERT ON Contact TO resturantAccount;
GRANT SELECT, DELETE, UPDATE, INSERT ON ResturantKeyword TO resturantAccount;
GRANT SELECT, DELETE, UPDATE, INSERT ON OperatingHours TO resturantAccount;
GRANT SELECT, DELETE, UPDATE, INSERT ON Item TO resturantAccount;
GRANT SELECT, DELETE, UPDATE, INSERT ON ItemKeyword TO resturantAccount;
GRANT SELECT, DELETE, UPDATE, INSERT ON ItemReview TO resturantAccount;
GRANT SELECT ON Order_ TO resturantAccount;
GRANT SELECT, DELETE ON OrderDetails TO resturantAccount;
GRANT EXECUTE ON checkPassword TO resturantAccount;



CREATE LOGIN customerAccounts WITH PASSWORD = '';
CREATE USER customerAccount FOR LOGIN customerAccounts;
GRANT SELECT, UPDATE, DELETE ON CAddress TO customerAccount;
GRANT SELECT, UPDATE, DELETE ON Customer TO customerAccount;
GRANT SELECT, UPDATE, DELETE ON Membership TO customerAccount;
GRANT SELECT, UPDATE, DELETE ON CustomerAccountDetails TO customerAccount;
GRANT SELECT, DELETE ON Order_ TO customerAccount;
GRANT SELECT, DELETE ON OrderDetails TO customerAccount;
GRANT SELECT, DELETE ON Payment TO customerAccount;
GRANT EXECUTE ON checkPassword TO customerAccount;
