USE RESTURANTS;

CREATE TABLE Resturant (
	ID int not null,
	name varchar(255) not null,
	abn bigint not null,
	rating Decimal(2, 1) DEFAULT 0,
	CHECK (rating BETWEEN 0 AND 5),
	CHECK (abn < 1000000000000),
	PRIMARY KEY (ID)
);

CREATE TABLE ResturantAccountDetails(
	ResturantID int not null,
	Hashpassword varchar(64) not null,
	salt varchar(16) not null,
	pepper varchar(16) not null,
	PRIMARY KEY (ResturantID),
	FOREIGN KEY (ResturantID) REFERENCES Resturant(ID)
);

CREATE TABLE RAddress (
	ResturantID int not null,
	Country varchar(255) not null,
	City varchar(255) not null,
	Street varchar(255) not null,
	StreetNumber int not null,
	unit CHAR,
	postcode int,
	PRIMARY KEY (ResturantID),
	CHECK (postcode < 100000),
	FOREIGN KEY (ResturantID) REFERENCES Resturant(ID)
);

CREATE TABLE Contact(
	ResturantID int not null,
	phoneNumber int,
	alternatePhoneNumber int,
	manager varchar(255),
	email varchar(255),
	UNIQUE (email),
	website varchar(255),
	PRIMARY KEY(ResturantID),
	CHECK (phoneNumber < 10000000000),
	CHECK (alternatePhoneNumber < 10000000000),
	FOREIGN KEY (ResturantID) REFERENCES Resturant(ID)
);

CREATE TABLE OperatingHours(
	ResturantID int not null,
	day varchar(255) not null,
	startTime int not null,
	endTime int not null,
	CHECK (day = 'MON' OR
		day = 'TUE' OR
		day = 'WED' OR
		day = 'THU' OR
		day = 'FRI' OR
		day = 'SAT' OR
		day = 'Sun'),
	CHECK (startTime >= 0000 AND startTime < 2460),
	CHECK (endTime > startTime),
	FOREIGN KEY (ResturantID) REFERENCES Resturant(ID)
);

CREATE TABLE ResturantKeyword(
	ResturantID int not null,
	kWord varChar(255),
	FOREIGN KEY (ResturantID) REFERENCES Resturant(ID)
);

CREATE TABLE Item(
	ResturantID int not null,
	ID int not null,
	name varchar(255) not null,
	description varchar(255),
	availability Bit DEFAULT 1,
	price DECIMAL(8, 2) not null,
	discount DECIMAL(4, 2) not null,
	kilojoules int,
	isVegan Bit DEFAULT 0,
	isvegeterian Bit DEFAULT 0,
	isGlutenFree Bit DEFAULT 0,
	rating Decimal(2, 1) DEFAULT 0,
	category varchar(255) NOT NULL,
	PRIMARY KEY (ID),
	CHECK (rating BETWEEN 0 AND 5),
	CHECK (availability = 0 or availability = 1),
	CHECK (discount BETWEEN 0 AND 1),
	CHECK (category = 'drinks' OR
		   category = 'desert' OR
		   category = 'entree' OR
		   category = 'main' OR
		   category = 'kids' OR
		   category = 'specials'),
	CHECK (rating BETWEEN 0 AND 5),
	CHECK (discount != 1),
	FOREIGN KEY (ResturantID) REFERENCES Resturant(ID)
);

CREATE TABLE ItemKeyword(
	itemID int not null,
	kWord varChar(255),
	FOREIGN KEY(itemID) REFERENCES Item(ID)
);

CREATE TABLE ItemReview(
	itemID int not null,
	name varchar(255),
	desciprtion varchar(255),
	rating Decimal(2, 1) DEFAULT 0,
	CHECK (rating BETWEEN 0 AND 5),
	FOREIGN KEY(itemID) REFERENCES Item(ID)
);


CREATE TABLE Customer(
	ID int not null,
	firstName varchar (255) not null,
	lastName varchar (255) not null,
	phoneNumber int,
	email varchar(255) not null,
	UNIQUE (email),
	PRIMARY KEY(ID),
	CHECK (phoneNumber < 10000000000),
);

CREATE TABLE CustomerAccountDetails(
	customerID int not null,
	Hashpassword varchar(64) not null,
	salt varchar(16) not null,
	pepper varchar(16) not null,
	PRIMARY KEY (customerID),
	FOREIGN KEY (customerID) REFERENCES Customer(ID)
);

CREATE TABLE CAddress (
	customerID int not null,
	Country varchar(255) not null,
	City varchar(255) not null,
	Street varchar(255) not null,
	StreetNumber int not null,
	unit CHAR,
	postcode int,
	PRIMARY KEY (customerID),
	CHECK (postcode < 100000),
	FOREIGN KEY (customerID) REFERENCES Customer(ID)
);

CREATE TABLE Membership(
	customerID int not null,
	type varchar(255) not null, 
	paymentType varchar(255) not null,
	lastpayment date not null,
	nextpayment date not null,
	PRIMARY KEY(customerID),
	CHECK(type = 'silver' OR type = 'gold' OR type = 'platinum'),
	CHECK(paymentType = 'monthly' OR paymentType = 'annually'),
	FOREIGN KEY (customerID) REFERENCES Customer(ID)
);

CREATE TABLE Order_(
	ID int not null,
	ResturantID int not null,
	customerID int not null,
	orderDate Date not null,
	arrivalTime int,
	status varchar(255) not null,
	quantity int not null,
	totalprice DECIMAL(8, 2) not null,
	PRIMARY KEY(ID),
	CHECK (status = 'processed' OR
		   status = 'cooking' OR
		   status = 'completed' OR
		   status = 'dispatched' OR
		   status = 'arrived' OR
		   status = 'canceled'),
	FOREIGN KEY (ResturantID) REFERENCES Resturant(ID),
	FOREIGN KEY (customerID) REFERENCES Customer(ID)
);

CREATE TABLE OrderDetails (
	itemID int not null,
	orderID int not null,
	quantity int not null,
	unitprice DECIMAL(8, 2) not null,
	notes varchar(255),
	FOREIGN KEY (itemID) REFERENCES Item(ID),
	FOREIGN KEY (orderID) REFERENCES Order_(ID)
);


CREATE TABLE Payment (
	orderID int not null,
	itemCost DECIMAL(8, 2) not null,
	deliveryCost DECIMAL(4, 2) not null,
	discount DECIMAL(4, 2) not null,
	PRIMARY KEY(orderID),
	CHECK (discount >= 0 AND discount < 1),
	FOREIGN KEY (orderID) REFERENCES Order_(ID)
);