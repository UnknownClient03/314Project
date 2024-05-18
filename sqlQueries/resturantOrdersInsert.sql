USE RESTURANTS;

--orders

DISABLE TRIGGER orderPriceQty ON OrderDetails;

INSERT INTO Order_ VALUES(0 , 0, 0, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(0, 0, 1, 10.0, NULL);

INSERT INTO Order_ VALUES(1 , 0, 0, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(13, 1, 4, 27.0, NULL);

INSERT INTO Order_ VALUES(2 , 1, 0, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(39, 2, 1, 13.0, NULL);
INSERT INTO OrderDetails VALUES(21, 2, 2, 16.0, NULL);
INSERT INTO OrderDetails VALUES(23, 2, 3, 12.0, NULL);

INSERT INTO Order_ VALUES(3 , 1, 0, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(22, 3, 1, 15.0, NULL);
INSERT INTO OrderDetails VALUES(37, 3, 1, 12.0, NULL);
INSERT INTO OrderDetails VALUES(33, 3, 3, 14.0, NULL);
INSERT INTO OrderDetails VALUES(35, 3, 1, 20.0, NULL);

INSERT INTO Order_ VALUES(4 , 0, 4, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(18, 4, 1, 14.0, NULL);
INSERT INTO OrderDetails VALUES(3, 4, 2, 15.0, NULL);
INSERT INTO OrderDetails VALUES(9, 4, 1, 25.0, NULL);

INSERT INTO Order_ VALUES(5 , 3, 4, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(79, 5, 4, 11.0, NULL);
INSERT INTO OrderDetails VALUES(70, 5, 1, 20.0, NULL);
INSERT INTO OrderDetails VALUES(64, 5, 3, 10.0, NULL);
INSERT INTO OrderDetails VALUES(78, 5, 1, 11.0, NULL);

INSERT INTO Order_ VALUES(6 , 5, 1, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(119, 6, 2, 5.0, NULL);

INSERT INTO Order_ VALUES(7 , 5, 1, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(108, 7, 3, 21, NULL);
INSERT INTO OrderDetails VALUES(107, 7, 2, 21, NULL);

INSERT INTO Order_ VALUES(8 , 5, 1, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(107, 8, 2, 21, NULL);
INSERT INTO OrderDetails VALUES(116, 8, 1, 6.0, NULL);
INSERT INTO OrderDetails VALUES(113, 8, 4, 3.0, NULL);

INSERT INTO Order_ VALUES(9 , 5, 6, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(105, 9, 1, 20.0, NULL);
INSERT INTO OrderDetails VALUES(107, 9, 1, 21.0, NULL);

INSERT INTO Order_ VALUES(10, 5, 6, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(108, 10, 3, 21.0, NULL);
INSERT INTO OrderDetails VALUES(117, 10, 2, 27.0, NULL);
INSERT INTO OrderDetails VALUES(118, 10, 4, 5.0, NULL);

INSERT INTO Order_ VALUES(11, 4, 1, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(82, 11, 2, 18.0, NULL);
INSERT INTO OrderDetails VALUES(89, 11, 1, 20.0, NULL);

INSERT INTO Order_ VALUES(12, 4, 1, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(88, 12, 3, 13.0, NULL);

INSERT INTO Order_ VALUES(13, 9, 8, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(11, 13, 2, 40.0, NULL);
INSERT INTO OrderDetails VALUES(12, 13, 2, 30.0, NULL);

INSERT INTO Order_ VALUES(14, 2, 6, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(57, 14, 4, 10.95, NULL);
INSERT INTO OrderDetails VALUES(53, 14, 1, 31.95, NULL);
INSERT INTO OrderDetails VALUES(58, 14, 3, 16.95, NULL);
INSERT INTO OrderDetails VALUES(59, 14, 1, 12.95, NULL);

INSERT INTO Order_ VALUES(15, 2, 9, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(47, 15, 3, 16.95, NULL);

INSERT INTO Order_ VALUES(16, 6, 2, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(122, 16, 4, 19.0, NULL);
INSERT INTO OrderDetails VALUES(126, 16, 1, 24.0, NULL);
INSERT INTO OrderDetails VALUES(129, 16, 1, 26.0, NULL);

INSERT INTO Order_ VALUES(17, 6, 2, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(131, 17, 1, 24.0, NULL);
INSERT INTO OrderDetails VALUES(126, 17, 2, 24.0, NULL);

INSERT INTO Order_ VALUES(18, 6, 3, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(131, 18, 1, 24.0, NULL);

ENABLE TRIGGER orderPriceQty ON OrderDetails;

INSERT INTO Order_ VALUES(19, 7, 3, '2024-04-19', NULL, 'processed', 0, 0);
INSERT INTO OrderDetails VALUES(150, 19, 3, 12.60, NULL);
INSERT INTO OrderDetails VALUES(157, 19, 4, 12.60, NULL);
INSERT INTO OrderDetails VALUES(156, 19, 1, 11.55, NULL);