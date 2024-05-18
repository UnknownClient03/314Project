USE TEST;

drop table exampletable;

create table exampletable
(
	ID int not null,
	lastname varchar(255),
	firstname varchar(255),
	age int,
	PRIMARY KEY (ID)
);


INSERT INTO exampletable VALUES (0, 'Cortez', 'Russ', 33);
INSERT INTO exampletable VALUES (1, 'Harper', 'Nathan', 26);
INSERT INTO exampletable VALUES (2, 'Ott', 'Salvatore', 22);
INSERT INTO exampletable VALUES (3, 'McConnell', 'Eric', 30);
INSERT INTO exampletable VALUES (4, 'Jackson', 'Casey', 26);
INSERT INTO exampletable VALUES (5, 'Finley', 'Nelson', 38);
INSERT INTO exampletable VALUES (6, 'Hopper', 'Lyle', 21);
INSERT INTO exampletable VALUES (7, 'Massey', 'Patrick', 42);
INSERT INTO exampletable VALUES (8, 'Head', 'Jeremy', 25);
INSERT INTO exampletable VALUES (9, 'Krueger', 'Alan', 39);
INSERT INTO exampletable VALUES (10, 'Abdrew', 'Smith', 39);

Select firstname FROM exampletable;
