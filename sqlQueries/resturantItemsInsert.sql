USE RESTURANTS;

DISABLE TRIGGER AVGratingI ON Item;
DISABLE TRIGGER AVGratingR ON Item;

--items

INSERT INTO Item VALUES(00000000, 00000000, 'Cheese Bread', null, 1, 10.00, 0, null, 0, 1, 0, 3.2, 'entree');
INSERT INTO ItemReview VALUES(00000000, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000000, 'bread');
INSERT INTO ItemKeyword VALUES(00000000, 'cheese');
INSERT INTO ItemKeyword VALUES(00000000, 'herbs');
INSERT INTO ItemKeyword VALUES(00000000, 'starter');
INSERT INTO ItemKeyword VALUES(00000000, 'basic');

INSERT INTO Item VALUES(00000000, 00000001, 'Garlic Bread', null, 1, 9.00, 0, null, 0, 1, 0, 3.1, 'entree');
INSERT INTO ItemReview VALUES(00000001, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000001, 'garlic');
INSERT INTO ItemKeyword VALUES(00000001, 'bread');
INSERT INTO ItemKeyword VALUES(00000001, 'cheese');
INSERT INTO ItemKeyword VALUES(00000001, 'starter');
INSERT INTO ItemKeyword VALUES(00000001, 'basic');

INSERT INTO Item VALUES(00000000, 00000002, 'Bown of Chips', 'With tomato sauce', 1, 12.00, 0, null, 0, 1, 0, 5.0, 'entree');
INSERT INTO ItemReview VALUES(00000002, '', '', 5.0);
INSERT INTO ItemKeyword VALUES(00000002, 'chips');
INSERT INTO ItemKeyword VALUES(00000002, 'potato');
INSERT INTO ItemKeyword VALUES(00000002, 'tomato sauce');
INSERT INTO ItemKeyword VALUES(00000002, 'starter');
INSERT INTO ItemKeyword VALUES(00000002, 'basic');

INSERT INTO Item VALUES(00000000, 00000003, 'Potato Wedges', 'With sweet chilli sauce and sour cream.', 1, 15.00, 0, null, 0, 1, 0, 4.3, 'entree');
INSERT INTO ItemReview VALUES(00000003, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000003, 'potato');
INSERT INTO ItemKeyword VALUES(00000003, 'wedges');
INSERT INTO ItemKeyword VALUES(00000003, 'chilli sauce');
INSERT INTO ItemKeyword VALUES(00000003, 'sour cream');
INSERT INTO ItemKeyword VALUES(00000003, 'starter');

INSERT INTO Item VALUES(00000000, 00000004, 'Salt & Pepper Squid', 'With rocket base and aioli.', 1, 18.00, 0, null, 0, 0, 0, 2.5, 'entree');
INSERT INTO ItemReview VALUES(00000004, '', '', 2.5);
INSERT INTO ItemKeyword VALUES(00000004, 'calamari');
INSERT INTO ItemKeyword VALUES(00000004, 'seafood');
INSERT INTO ItemKeyword VALUES(00000004, 'squid');
INSERT INTO ItemKeyword VALUES(00000004, 'rocket');
INSERT INTO ItemKeyword VALUES(00000004, 'aioli');

INSERT INTO Item VALUES(00000000, 00000005, 'Chicken Schnitzel', 'Golden crumbled tender chicken breast served with your choice of sauce and two sides: chips and salad.', 1, 26.00, 0, null, 0, 0, 0, 3.7, 'main');
INSERT INTO ItemReview VALUES(00000005, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000005, 'chicken');
INSERT INTO ItemKeyword VALUES(00000005, 'salad ');
INSERT INTO ItemKeyword VALUES(00000005, 'chips');
INSERT INTO ItemKeyword VALUES(00000005, 'schnitzel');
INSERT INTO ItemKeyword VALUES(00000005, 'cumb');

INSERT INTO Item VALUES(00000000, 00000006, 'Beef Burger', 'Grilled 180g patty, cheese, lettuce, tomato, onion, pickles and burger sauce served with chips.', 1, 23.00, 0, null, 0, 0, 0, 3.2, 'main');
INSERT INTO ItemReview VALUES(00000006, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000006, 'burger');
INSERT INTO ItemKeyword VALUES(00000006, 'beef');
INSERT INTO ItemKeyword VALUES(00000006, 'cheese');
INSERT INTO ItemKeyword VALUES(00000006, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000006, 'chips');

INSERT INTO Item VALUES(00000000, 00000007, 'Southern Fried Chicken Burger', 'Spiced chicken breast, cheese, lettuce, pickles and chilli mayo served with chips.', 1, 23.00, 0, null, 0, 0, 0, 2.7, 'main');
INSERT INTO ItemReview VALUES(00000007, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000007, 'burger');
INSERT INTO ItemKeyword VALUES(00000007, 'chicken');
INSERT INTO ItemKeyword VALUES(00000007, 'cheese');
INSERT INTO ItemKeyword VALUES(00000007, 'chips');
INSERT INTO ItemKeyword VALUES(00000007, 'chilli mayo');

INSERT INTO Item VALUES(00000000, 00000008, 'Beef Nachos', 'Chilli Con Carne served with corn chips, diced tomatos, guacamole, mozzarella cheese, sour cream and fresh coriander.', 1, 25.00, 0, null, 0, 0, 0, 3.7, 'main');
INSERT INTO ItemReview VALUES(00000008, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000008, 'Nachos');
INSERT INTO ItemKeyword VALUES(00000008, 'Beef');
INSERT INTO ItemKeyword VALUES(00000008, 'corn chips');
INSERT INTO ItemKeyword VALUES(00000008, 'guacamole');
INSERT INTO ItemKeyword VALUES(00000008, 'sour cream');

INSERT INTO Item VALUES(00000000, 00000009, 'Cabonara Pasta', 'Cream based fettuccine pasta tossed in bacon, garlic, white wine, fresh green herbs and finished with butter cheese.', 1, 25.00, 0, null, 0, 0, 0, 3.1, 'main');
INSERT INTO ItemReview VALUES(00000009, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000009, 'pasta');
INSERT INTO ItemKeyword VALUES(00000009, 'italian');
INSERT INTO ItemKeyword VALUES(00000009, 'bacon');
INSERT INTO ItemKeyword VALUES(00000009, 'fettuccine');
INSERT INTO ItemKeyword VALUES(00000009, 'garlic');

INSERT INTO Item VALUES(00000000, 00000010, 'Rump Steak', 'grain-fed 90 days, Riverina, NSW.', 1, 30.00, 0, null, 0, 0, 1, 3.4, 'main');
INSERT INTO ItemReview VALUES(00000010, '', '', 3.4);
INSERT INTO ItemKeyword VALUES(00000010, 'steak');
INSERT INTO ItemKeyword VALUES(00000010, 'meat');
INSERT INTO ItemKeyword VALUES(00000010, 'rump');
INSERT INTO ItemKeyword VALUES(00000010, 'angus');
INSERT INTO ItemKeyword VALUES(00000010, 'beef');

INSERT INTO Item VALUES(00000000, 00000011, 'Scotch Fillet', 'Grain-fed 45 days, Northern River, NSW.', 1, 40.00, 0, null, 0, 0, 1, 2.1, 'main');
INSERT INTO ItemReview VALUES(00000011, '', '', 2.1);
INSERT INTO ItemKeyword VALUES(00000011, 'steak')
INSERT INTO ItemKeyword VALUES(00000011, 'meat');
INSERT INTO ItemKeyword VALUES(00000011, 'rump');
INSERT INTO ItemKeyword VALUES(00000011, 'angus')
INSERT INTO ItemKeyword VALUES(00000011, 'beef');

INSERT INTO Item VALUES(00000000, 00000012, 'Lamb Skewers', 'Marinated in souvlaki seasoning and served with mint yogurt.', 1, 30.00, 0, null, 0, 0, 1, 4.6, 'main');
INSERT INTO ItemReview VALUES(00000012, '', '', 4.6);
INSERT INTO ItemKeyword VALUES(00000012, 'lamb');
INSERT INTO ItemKeyword VALUES(00000012, 'skewers');
INSERT INTO ItemKeyword VALUES(00000012, 'yogurt');
INSERT INTO ItemKeyword VALUES(00000012, 'souvlaki');
INSERT INTO ItemKeyword VALUES(00000012, 'meat');

INSERT INTO Item VALUES(00000000, 00000013, 'Chicken Skewers', 'marinated in house spices and served with chilli mayo sauce.', 1, 27.00, 0, null, 0, 0, 1, 4.9, 'main');
INSERT INTO ItemReview VALUES(00000013, '', '', 4.9);
INSERT INTO ItemKeyword VALUES(00000013, 'lamb');
INSERT INTO ItemKeyword VALUES(00000013, 'skewers');
INSERT INTO ItemKeyword VALUES(00000013, 'yogurt');
INSERT INTO ItemKeyword VALUES(00000013, 'souvlaki');
INSERT INTO ItemKeyword VALUES(00000013, 'meat');

INSERT INTO Item VALUES(00000000, 00000014, 'Ceasar Salad', 'Cos lettuce, tossed in caesar sauce, croutons with poached egg, bacon bits and parmesan cheese.', 1, 18.00, 0, null, 0, 0, 1, 3.9, 'main');
INSERT INTO ItemReview VALUES(00000014, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000014, 'salad');
INSERT INTO ItemKeyword VALUES(00000014, 'healthy');
INSERT INTO ItemKeyword VALUES(00000014, 'bacon');
INSERT INTO ItemKeyword VALUES(00000014, 'parmesan cheese');
INSERT INTO ItemKeyword VALUES(00000014, 'lettuce');

INSERT INTO Item VALUES(00000000, 00000015, 'Roast Pumpkin Salad', 'Roast Pumpkin, feta cheese, braised beetroot, walnut and baby spinach dressed with sherry vinaigrette.', 1, 18.00, 0, null, 1, 1, 0, 2.4, 'main');
INSERT INTO ItemReview VALUES(00000015, '', '', 2.4);
INSERT INTO ItemKeyword VALUES(00000015, 'salad');
INSERT INTO ItemKeyword VALUES(00000015, 'healthy');
INSERT INTO ItemKeyword VALUES(00000015, 'pumpkin');
INSERT INTO ItemKeyword VALUES(00000015, 'feta');
INSERT INTO ItemKeyword VALUES(00000015, 'spinach');

INSERT INTO Item VALUES(00000000, 00000016, 'Sticky Date', 'With butterscotch sauce and vanilla ice cream.', 1, 14.00, 0, null, 0, 0, 0, 3.7, 'desert');
INSERT INTO ItemReview VALUES(00000016, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000016, 'Sticky');
INSERT INTO ItemKeyword VALUES(00000016, 'sweet');
INSERT INTO ItemKeyword VALUES(00000016, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000016, 'butterscotch');
INSERT INTO ItemKeyword VALUES(00000016, 'vanilla');

INSERT INTO Item VALUES(00000000, 00000017, 'Chocolate Brownie', 'Slice of chocolate brownie with 1 scoop of ice cream.', 1, 14.00, 0, null, 0, 0, 0, 4.2, 'desert');
INSERT INTO ItemReview VALUES(00000017, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000017, 'chocolate');
INSERT INTO ItemKeyword VALUES(00000017, 'brownie');
INSERT INTO ItemKeyword VALUES(00000017, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000017, 'sweet');
INSERT INTO ItemKeyword VALUES(00000017, 'slice');

INSERT INTO Item VALUES(00000000, 00000018, 'Strawberry Eaton Mess', 'Fresh strawberries, rasberries, crushed, meringue, vanilla ice cream and whipped cream.', 1, 14.00, 0, null, 1, 1, 0, 3.6, 'desert');
INSERT INTO ItemReview VALUES(00000018, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000018, 'sweet');
INSERT INTO ItemKeyword VALUES(00000018, 'strawberries');
INSERT INTO ItemKeyword VALUES(00000018, 'rasberries');
INSERT INTO ItemKeyword VALUES(00000018, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000018, 'eaton Mess');

INSERT INTO Item VALUES(00000000, 00000019, 'Bowl of Ice Cream', '3 scoops of vanilla ice cream.', 1, 10.00, 0, null, 0, 0, 1, 4.4, 'desert');
INSERT INTO ItemReview VALUES(00000019, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000019, 'sweet');
INSERT INTO ItemKeyword VALUES(00000019, 'vanilla');
INSERT INTO ItemKeyword VALUES(00000019, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000019, 'kids');
INSERT INTO ItemKeyword VALUES(00000019, 'basic');



INSERT INTO Item VALUES(00000001, 00000020, 'Galinha Burger', 'Grilled chicken, lettuce, cheese, mayo.', 1, 12.00, 0, null, 0, 0, 0, 3.0, 'main'); 
INSERT INTO ItemReview VALUES(00000020, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000020, 'burger');
INSERT INTO ItemKeyword VALUES(00000020, 'chicken');
INSERT INTO ItemKeyword VALUES(00000020, 'grilled');
INSERT INTO ItemKeyword VALUES(00000020, 'cheese');
INSERT INTO ItemKeyword VALUES(00000020, 'mayo');

INSERT INTO Item VALUES(00000001, 00000021, 'Jumbo burger', 'Grilled double chicken, double cheese, lettuce, mayo.', 1, 16.00, 0 , null, 0, 0, 0, 2.2, 'main'); 
INSERT INTO ItemReview VALUES(00000021, '', '', 2.2);
INSERT INTO ItemKeyword VALUES(00000021, 'burger');
INSERT INTO ItemKeyword VALUES(00000021, 'chicken');
INSERT INTO ItemKeyword VALUES(00000021, 'cheese');
INSERT INTO ItemKeyword VALUES(00000021, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000021, 'mayo');

INSERT INTO Item VALUES(00000001, 00000022, 'Royal Byurger', 'Grilled chicken, lettuce, cheese, egg, pineapple, mayo.', 1, 15.00, 0, null, 0, 0, 0, 2.8, 'main'); 
INSERT INTO ItemReview VALUES(00000022, '', '', 2.8);
INSERT INTO ItemKeyword VALUES(00000022, 'burger');
INSERT INTO ItemKeyword VALUES(00000022, 'chicken');
INSERT INTO ItemKeyword VALUES(00000022, 'grilled');
INSERT INTO ItemKeyword VALUES(00000022, 'egg');
INSERT INTO ItemKeyword VALUES(00000022, 'cheese');

INSERT INTO Item VALUES(00000001, 00000023, 'Schnitzel burger', 'Lettuce, cheese, mayo.', 1, 12.00, 0, null, 0, 0, 0, 3.5, 'main'); 
INSERT INTO ItemReview VALUES(00000023, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000023, 'burger');
INSERT INTO ItemKeyword VALUES(00000023, 'schnitzel');
INSERT INTO ItemKeyword VALUES(00000023, 'chicken');
INSERT INTO ItemKeyword VALUES(00000023, 'cheese');
INSERT INTO ItemKeyword VALUES(00000023, 'mayo');

INSERT INTO Item VALUES(00000001, 00000024, 'Fish burger', 'Lettuce, cheese, tatare sauce.', 1, 12.00, 0, null, 0, 0, 0, 3.0, 'main'); 
INSERT INTO ItemReview VALUES(00000024, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000024, 'burger');
INSERT INTO ItemKeyword VALUES(00000024, 'fish');
INSERT INTO ItemKeyword VALUES(00000024, 'cheese');
INSERT INTO ItemKeyword VALUES(00000024, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000024, 'tartare');

INSERT INTO Item VALUES(00000001, 00000025, 'Beef burger', 'Lettuce, beetroot, tomato, onion, mayo.', 1, 12.00, 0, null, 0, 0, 0, 5.0, 'main'); 
INSERT INTO ItemReview VALUES(00000025, '', '', 5.0);
INSERT INTO ItemKeyword VALUES(00000025, 'burger');
INSERT INTO ItemKeyword VALUES(00000025, 'beef');
INSERT INTO ItemKeyword VALUES(00000025, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000025, 'tomato');
INSERT INTO ItemKeyword VALUES(00000025, 'lettuce');

INSERT INTO Item VALUES(00000001, 00000026, 'Vegie Burger', 'Lettuce, cheese, beetroot, tomato, onion, mayo.', 1, 12.00, 0, null, 0, 0, 0, 4.1, 'main'); 
INSERT INTO ItemReview VALUES(00000026, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000026, 'burger');
INSERT INTO ItemKeyword VALUES(00000026, 'veg');
INSERT INTO ItemKeyword VALUES(00000026, 'mayo');
INSERT INTO ItemKeyword VALUES(00000026, 'tomato');
INSERT INTO ItemKeyword VALUES(00000026, 'cheese');

INSERT INTO Item VALUES(00000001, 00000027, 'Galinha Wrap', 'Grilled chicken, lettuce, cheese, mayo.', 1, 12.00, 0, null, 0, 0, 0, 4.5, 'main'); 
INSERT INTO ItemReview VALUES(00000027, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000027, 'wrap');
INSERT INTO ItemKeyword VALUES(00000027, 'twister');
INSERT INTO ItemKeyword VALUES(00000027, 'chicken');
INSERT INTO ItemKeyword VALUES(00000027, 'grilled');
INSERT INTO ItemKeyword VALUES(00000027, 'cheese');

INSERT INTO Item VALUES(00000001, 00000028, 'Schnitzel Wrap', 'lettuce, cheese, mayo.', 1, 12.00, 0, null, 0, 0, 0, 4.8, 'main'); 
INSERT INTO ItemReview VALUES(00000028, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000028, 'wrap');
INSERT INTO ItemKeyword VALUES(00000028, 'twister');
INSERT INTO ItemKeyword VALUES(00000028, 'schnitzel');
INSERT INTO ItemKeyword VALUES(00000028, 'chicken');
INSERT INTO ItemKeyword VALUES(00000028, 'mayo');

INSERT INTO Item VALUES(00000001, 00000029, 'Cheezee wrap', 'Beef patty, cheddar cheese, lettuce, tomato, onion, pickle, burger sauce.', 1, 12.00, 0, null, 0, 0, 0, 2.8, 'main'); 
INSERT INTO ItemReview VALUES(00000029, '', '', 2.8);
INSERT INTO ItemKeyword VALUES(00000029, 'wrap');
INSERT INTO ItemKeyword VALUES(00000029, 'twister');
INSERT INTO ItemKeyword VALUES(00000029, 'cheese');
INSERT INTO ItemKeyword VALUES(00000029, 'beef');
INSERT INTO ItemKeyword VALUES(00000029, 'cheddar');

INSERT INTO Item VALUES(00000001, 00000030, 'Fish & chips', '3pc flathead, small chips, tartare sauce.', 1, 15.00, 0, null, 0, 0, 0, 2.6, 'main'); 
INSERT INTO ItemReview VALUES(00000030, '', '', 2.6);
INSERT INTO ItemKeyword VALUES(00000030, 'fish');
INSERT INTO ItemKeyword VALUES(00000030, 'chips');
INSERT INTO ItemKeyword VALUES(00000030, 'flathead');
INSERT INTO ItemKeyword VALUES(00000030, 'tartare');
INSERT INTO ItemKeyword VALUES(00000030, 'seafood');

INSERT INTO Item VALUES(00000001, 00000031, 'Calamari & chips', '5pc calamari rings, small chips, tartare sauce.', 1, 15.00, 0, null, 0, 0, 0, 2.4, 'main'); 
INSERT INTO ItemReview VALUES(00000031, '', '', 2.4);
INSERT INTO ItemKeyword VALUES(00000031, 'calamari');
INSERT INTO ItemKeyword VALUES(00000031, 'chips');
INSERT INTO ItemKeyword VALUES(00000031, 'seafood');
INSERT INTO ItemKeyword VALUES(00000031, 'tartare');
INSERT INTO ItemKeyword VALUES(00000031, 'squid');

INSERT INTO Item VALUES(00000001, 00000032, 'Seafood basket', '2pc flathead, 2pc calamari, 2 prawn cutlets, small chips, tartare sauce.', 1, 20.00, 0, null, 0, 0, 0, 3.0, 'main'); 
INSERT INTO ItemReview VALUES(00000032, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000032, 'seafood');
INSERT INTO ItemKeyword VALUES(00000032, 'flathead');
INSERT INTO ItemKeyword VALUES(00000032, 'calamari');
INSERT INTO ItemKeyword VALUES(00000032, 'prawn');
INSERT INTO ItemKeyword VALUES(00000032, 'basket');

INSERT INTO Item VALUES(00000001, 00000033, 'Chicken avocado Salad', 'grilled chicken breast, cos lettuce, carrot, beetroot, tomato, cucumber, onion, honey mustard.', 1, 14.00, 0, null, 0, 0, 1, 2.9, 'main'); 
INSERT INTO ItemReview VALUES(00000033, '', '', 2.9);
INSERT INTO ItemKeyword VALUES(00000033, 'chicken');
INSERT INTO ItemKeyword VALUES(00000033, 'avocado');
INSERT INTO ItemKeyword VALUES(00000033, 'salad');
INSERT INTO ItemKeyword VALUES(00000033, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000033, 'beetroot');

INSERT INTO Item VALUES(00000001, 00000034, 'Garden Salad', 'Cos lettuce, carrot, beetroot, tomato, cucumber, onion, garden salad dressing.', 1, 8.00, 0, null, 1, 1, 1, 2.6, 'main'); 
INSERT INTO ItemReview VALUES(00000034, '', '', 2.6);
INSERT INTO ItemKeyword VALUES(00000034, 'salad');
INSERT INTO ItemKeyword VALUES(00000034, 'healthy');
INSERT INTO ItemKeyword VALUES(00000034, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000034, 'tomato');
INSERT INTO ItemKeyword VALUES(00000034, 'dressing');

INSERT INTO Item VALUES(00000001, 00000035, 'Fish, chips & salad', '3pc flathead, small chips, tartare sauce, garden salad.', 1, 20.00, 0, null, 0, 0, 0, 4.5, 'main'); 
INSERT INTO ItemReview VALUES(00000035, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000035, 'seafood');
INSERT INTO ItemKeyword VALUES(00000035, 'fish');
INSERT INTO ItemKeyword VALUES(00000035, 'salad');
INSERT INTO ItemKeyword VALUES(00000035, 'chips');
INSERT INTO ItemKeyword VALUES(00000035, 'flathead');

INSERT INTO Item VALUES(00000001, 00000036, 'Kids cheeseburger', 'Beef, lettuce, american cheddar cheese, mayo, with tomato sauce.', 1, 12.00, 0, null, 0, 0, 0, 2.1, 'kids'); 
INSERT INTO ItemReview VALUES(00000036, '', '', 2.1);
INSERT INTO ItemKeyword VALUES(00000036, 'burger');
INSERT INTO ItemKeyword VALUES(00000036, 'cheese');
INSERT INTO ItemKeyword VALUES(00000036, 'beef');
INSERT INTO ItemKeyword VALUES(00000036, 'cheddar');
INSERT INTO ItemKeyword VALUES(00000036, 'cheeseburger');

INSERT INTO Item VALUES(00000001, 00000037, 'Kids galinha burger', 'Grilled chicken, lettuce, cheese, mayo, with tomato sauce.', 1, 12.00, 0, null, 0, 0, 0, 4.8, 'kids');
INSERT INTO ItemReview VALUES(00000037, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000037, 'burger');
INSERT INTO ItemKeyword VALUES(00000037, 'chicken');
INSERT INTO ItemKeyword VALUES(00000037, 'grilled');
INSERT INTO ItemKeyword VALUES(00000037, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000037, 'cheese');

INSERT INTO Item VALUES(00000001, 00000038, 'Kids fish & chips combo', '2pc flathead,with tomato sauce.', 1, 15.00, 0, null, 0, 0, 0, 3.0, 'kids'); 
INSERT INTO ItemReview VALUES(00000038, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000038, 'fish');
INSERT INTO ItemKeyword VALUES(00000038, 'seafood');
INSERT INTO ItemKeyword VALUES(00000038, 'chips');
INSERT INTO ItemKeyword VALUES(00000038, 'flathead');
INSERT INTO ItemKeyword VALUES(00000038, 'tomato sauce');

INSERT INTO Item VALUES(00000001, 00000039, 'Kids nuggets & chips combo', 'With tomato sauce.', 1, 13.00, 0, null, 0, 0, 0, 4.8, 'kids');
INSERT INTO ItemReview VALUES(00000039, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000039, 'nuggets');
INSERT INTO ItemKeyword VALUES(00000039, 'chips');
INSERT INTO ItemKeyword VALUES(00000039, 'tomato sauce');
INSERT INTO ItemKeyword VALUES(00000039, 'combo');
INSERT INTO ItemKeyword VALUES(00000039, 'small');



INSERT INTO Item VALUES(00000002, 00000040, 'Herb Bread', 'Grilled ciabatta with garlic butter.', 1, 6.95, 0, 3472, 0, 1, 0, 3.8, 'entree');
INSERT INTO ItemReview VALUES(00000040, '', '', 3.8);
INSERT INTO ItemKeyword VALUES(00000040, 'herb');
INSERT INTO ItemKeyword VALUES(00000040, 'bread');
INSERT INTO ItemKeyword VALUES(00000040, 'garlic');
INSERT INTO ItemKeyword VALUES(00000040, 'basic');
INSERT INTO ItemKeyword VALUES(00000040, 'starter');

INSERT INTO Item VALUES(00000002, 00000041, 'Cheeseburger Spring roll', 'your favorite burger as a spring roll, served with tomato sauce.', 1, 17.95, 0, 2320, 0, 0, 1, 3.1, 'entree');
INSERT INTO ItemReview VALUES(00000041, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000041, 'burger');
INSERT INTO ItemKeyword VALUES(00000041, 'spring roll');
INSERT INTO ItemKeyword VALUES(00000041, 'cheeseburger');
INSERT INTO ItemKeyword VALUES(00000041, 'tomato sauce');
INSERT INTO ItemKeyword VALUES(00000041, 'starter');

INSERT INTO Item VALUES(00000002, 00000042, 'Buffalo Wings', 'marinated buffalo chicken wings, served with ranch sauce.', 1, 14.95, 0, 2690, 0, 0, 0, 3.4, 'entree');
INSERT INTO ItemReview VALUES(00000042, '', '', 3.4);
INSERT INTO ItemKeyword VALUES(00000042, 'wings');
INSERT INTO ItemKeyword VALUES(00000042, 'ranch sauce');
INSERT INTO ItemKeyword VALUES(00000042, 'buffalo');
INSERT INTO ItemKeyword VALUES(00000042, 'sticky');
INSERT INTO ItemKeyword VALUES(00000042, 'starter');

INSERT INTO Item VALUES(00000002, 00000043, 'Chicken Wrap', 'Tossed pita filled with slow-cooked chicken breast, lettuce, mozzarella, chilli & whole egg mayo, served with seasonal chips.', 1, 14.95, 0, 4367, 0, 0, 0, 2.7, 'main');
INSERT INTO ItemReview VALUES(00000043, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000043, 'wrap');
INSERT INTO ItemKeyword VALUES(00000043, 'twister');
INSERT INTO ItemKeyword VALUES(00000043, 'chicken');
INSERT INTO ItemKeyword VALUES(00000043, 'pita');
INSERT INTO ItemKeyword VALUES(00000043, 'mozzarella');

INSERT INTO Item VALUES(00000002, 00000044, 'Rocket Salad', 'Fresh baby rocket, sundried tomatoes, mushrooms, olives, feta & basil peso dressing.', 1, 16.95, 0, 988, 1, 1, 1, 3.6, 'main');
INSERT INTO ItemReview VALUES(00000044, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000044, 'salad');
INSERT INTO ItemKeyword VALUES(00000044, 'rocket');
INSERT INTO ItemKeyword VALUES(00000044, 'healthy');
INSERT INTO ItemKeyword VALUES(00000044, 'mushrooms');
INSERT INTO ItemKeyword VALUES(00000044, 'dressing');

INSERT INTO Item VALUES(00000002, 00000045, 'Vegan Wrap', 'Tossed pita filled with vegan schnitty, lettuce & tomato relish, served with seasoned chips & tomato relish.', 1, 22.95, 0, 3963, 1, 1, 0, 3.6, 'main');
INSERT INTO ItemReview VALUES(00000045, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000045, 'wrap');
INSERT INTO ItemKeyword VALUES(00000045, 'twister');
INSERT INTO ItemKeyword VALUES(00000045, 'fake');
INSERT INTO ItemKeyword VALUES(00000045, 'healthy');
INSERT INTO ItemKeyword VALUES(00000045, 'relish');

INSERT INTO Item VALUES(00000002, 00000046, 'Creamy mushroom Risotto', 'Tossed with garlic, caralelised onions, baby spinach, creamy mushroom sauce & parmesan cheese.', 1, 14.95, 0, 3781, 0, 1, 0, 3.7, 'main');
INSERT INTO ItemReview VALUES(00000046, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000046, 'mushroom');
INSERT INTO ItemKeyword VALUES(00000046, 'risotto');
INSERT INTO ItemKeyword VALUES(00000046, 'garlic');
INSERT INTO ItemKeyword VALUES(00000046, 'onion');
INSERT INTO ItemKeyword VALUES(00000046, 'spinach');

INSERT INTO Item VALUES(00000002, 00000047, 'Fettuccine Bolognese', '100% Australian Angus beef bolognese, topped with parmesan cheese.', 1, 16.95, 0, 2250, 0, 0, 0, 2.8, 'main');
INSERT INTO ItemReview VALUES(00000047, '', '', 2.8);
INSERT INTO ItemKeyword VALUES(00000047, 'fettuccine');
INSERT INTO ItemKeyword VALUES(00000047, 'bolognese');
INSERT INTO ItemKeyword VALUES(00000047, 'beef');
INSERT INTO ItemKeyword VALUES(00000047, 'parmesan');
INSERT INTO ItemKeyword VALUES(00000047, 'pasta');

INSERT INTO Item VALUES(00000002, 00000048, 'Creamy Chicken pasta', 'Sauteed chicken breast carelised onions, baby spinach, garlic & creamy mushroom sauce.', 1, 22.95, 0, 3494, 0, 0, 0, 2.5, 'main');
INSERT INTO ItemReview VALUES(00000048, '', '', 2.5);
INSERT INTO ItemKeyword VALUES(00000048, 'chicken');
INSERT INTO ItemKeyword VALUES(00000048, 'pasta');
INSERT INTO ItemKeyword VALUES(00000048, 'onion');
INSERT INTO ItemKeyword VALUES(00000048, 'mushroom');
INSERT INTO ItemKeyword VALUES(00000048, 'spinach');

INSERT INTO Item VALUES(00000002, 00000049, 'Angus beef lasagne', '100% aussie beef lasagne topped with mozzarella cheese & served with garden salad', 1, 22.95, 0, 3470, 0, 0, 0, 2.9, 'main');
INSERT INTO ItemReview VALUES(00000049, '', '', 2.9);
INSERT INTO ItemKeyword VALUES(00000049, 'beef');
INSERT INTO ItemKeyword VALUES(00000049, 'angus');
INSERT INTO ItemKeyword VALUES(00000049, 'steak');
INSERT INTO ItemKeyword VALUES(00000049, 'lasagne');
INSERT INTO ItemKeyword VALUES(00000049, 'mozzarella');

INSERT INTO Item VALUES(00000002, 00000050, '200g Sirlion', '200g MSA 120-day grain-fed sirlion, served with your choice of 2 sides.', 1, 31.95, 0, 4627, 0, 0, 1, 2.1, 'main');
INSERT INTO ItemReview VALUES(00000050, '', '', 2.1);
INSERT INTO ItemKeyword VALUES(00000050, 'sirlion');
INSERT INTO ItemKeyword VALUES(00000050, 'beef');
INSERT INTO ItemKeyword VALUES(00000050, 'steak');
INSERT INTO ItemKeyword VALUES(00000050, 'salad');
INSERT INTO ItemKeyword VALUES(00000050, 'chips');

INSERT INTO Item VALUES(00000002, 00000051, 'New york Steak', '300g MSA 120-day grain-fed sirlion, onion rings & served with your choice of 2 sides.', 1, 40.95, 0, 5754, 0, 0, 1, 4.6, 'main');
INSERT INTO ItemReview VALUES(00000051, '', '', 4.6);
INSERT INTO ItemKeyword VALUES(00000051, 'steak');
INSERT INTO ItemKeyword VALUES(00000051, 'beef');
INSERT INTO ItemKeyword VALUES(00000051, 'sirlion');
INSERT INTO ItemKeyword VALUES(00000051, 'onion');
INSERT INTO ItemKeyword VALUES(00000051, 'rings');

INSERT INTO Item VALUES(00000002, 00000052, 'T-bone', 'Darling Downs 450g T-bone, served with your choice of 2 sides.', 1, 42.95, 0, 7291, 0, 0, 1, 4.2, 'main');
INSERT INTO ItemReview VALUES(00000052, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000052, 't-bone');
INSERT INTO ItemKeyword VALUES(00000052, 'steak');
INSERT INTO ItemKeyword VALUES(00000052, 'meat');
INSERT INTO ItemKeyword VALUES(00000052, 'salad');
INSERT INTO ItemKeyword VALUES(00000052, 'chips');

INSERT INTO Item VALUES(00000002, 00000053, 'Schnitzel Parmigiana', 'hand-crumbed chicken breast, topped with napolitana sauce & mozzarella, served with your choice of 2 sides.', 1, 31.95, 0, 5604, 0, 0, 0, 3.3, 'main');
INSERT INTO ItemReview VALUES(00000053, '', '', 3.3);
INSERT INTO ItemKeyword VALUES(00000053, 'schnitzel');
INSERT INTO ItemKeyword VALUES(00000053, 'parmigiana');
INSERT INTO ItemKeyword VALUES(00000053, 'chicken');
INSERT INTO ItemKeyword VALUES(00000053, 'cumbed');
INSERT INTO ItemKeyword VALUES(00000053, 'napolitana');

INSERT INTO Item VALUES(00000002, 00000054, 'Claires Chicken Nuggets', 'Tempura chicken breast nuggets, served with tomato sauce & seasoned chips.', 1, 12.95, 0, 2819, 0, 0, 0, 4.6, 'kids');
INSERT INTO ItemReview VALUES(00000054, '', '', 4.6);
INSERT INTO ItemKeyword VALUES(00000054, 'nuggets');
INSERT INTO ItemKeyword VALUES(00000054, 'chicken');
INSERT INTO ItemKeyword VALUES(00000054, 'somato chips');
INSERT INTO ItemKeyword VALUES(00000054, 'chips');
INSERT INTO ItemKeyword VALUES(00000054, 'small');

INSERT INTO Item VALUES(00000002, 00000055, 'Siennas beef sausages', 'Char-grilled 100% Aussie beef sausages, served with tomato sauce & seasoned chips.', 1, 12.95, 0, 3430, 0, 0, 0, 2.9, 'kids');
INSERT INTO ItemReview VALUES(00000055, '', '', 2.9);
INSERT INTO ItemKeyword VALUES(00000055, 'beef');
INSERT INTO ItemKeyword VALUES(00000055, 'sausage');
INSERT INTO ItemKeyword VALUES(00000055, 'meat');
INSERT INTO ItemKeyword VALUES(00000055, 'tomato sauce');
INSERT INTO ItemKeyword VALUES(00000055, 'small');

INSERT INTO Item VALUES(00000002, 00000056, 'Billys Bolognese', '100% aussie angus beef bolognese, carelised onions, topped with napolitana sauce.', 1, 12.95, 0, 4115, 0, 0, 0, 3.6, 'kids');
INSERT INTO ItemReview VALUES(00000056, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000056, 'bolognese');
INSERT INTO ItemKeyword VALUES(00000056, 'beef');
INSERT INTO ItemKeyword VALUES(00000056, 'angus');
INSERT INTO ItemKeyword VALUES(00000056, 'pasta');
INSERT INTO ItemKeyword VALUES(00000056, 'small');

INSERT INTO Item VALUES(00000002, 00000057, 'Pennys Pancakes', 'Two pancakes served with hundreds & thousands, maple syrup & vanilla ice cream.', 1, 10.95, 0, 2229, 0, 0, 0, 5.0, 'kids');
INSERT INTO ItemReview VALUES(00000057, '', '', 5.0);
INSERT INTO ItemKeyword VALUES(00000057, 'pancakes');
INSERT INTO ItemKeyword VALUES(00000057, 'maple syrup');
INSERT INTO ItemKeyword VALUES(00000057, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000057, 'sweet');
INSERT INTO ItemKeyword VALUES(00000057, 'vanilla');

INSERT INTO Item VALUES(00000002, 00000058, 'Pancakes with nutella', 'Triple stacked pancakes, smothered in nutella, with home-made crumble & vanilla ice cream.', 1, 16.95, 0, 5243, 0, 0, 0, 2.0, 'desert');
INSERT INTO ItemReview VALUES(00000058, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000058, 'pancakes');
INSERT INTO ItemKeyword VALUES(00000058, 'nutella');
INSERT INTO ItemKeyword VALUES(00000058, 'sweet');
INSERT INTO ItemKeyword VALUES(00000058, 'crumble');
INSERT INTO ItemKeyword VALUES(00000058, 'ice cream');

INSERT INTO Item VALUES(00000002, 00000059, 'Crepes with nutella', 'Cream, strawberries, marshmallows with warm nutella & vanilla ice cream.', 1, 12.95, 0, 4646, 0, 0, 0, 4.0, 'desert');
INSERT INTO ItemReview VALUES(00000059, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000059, 'crepes');
INSERT INTO ItemKeyword VALUES(00000059, 'nutella');
INSERT INTO ItemKeyword VALUES(00000059, 'marshmallow');
INSERT INTO ItemKeyword VALUES(00000059, 'sweet');
INSERT INTO ItemKeyword VALUES(00000059, 'ice cream');



INSERT INTO Item VALUES(00000003, 00000060, 'Plain bread', null, 1, 3.50, 0, null, 0, 0, 0, 3.5, 'entree');
INSERT INTO ItemReview VALUES(00000050, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000060, 'plain');
INSERT INTO ItemKeyword VALUES(00000060, 'bread');
INSERT INTO ItemKeyword VALUES(00000060, 'wheat');
INSERT INTO ItemKeyword VALUES(00000060, 'starter');
INSERT INTO ItemKeyword VALUES(00000060, 'basic');

INSERT INTO Item VALUES(00000003, 00000061, 'Garlic bread', null, 1, 4.50, 0, null, 0, 0, 0, 3.8, 'entree');
INSERT INTO ItemReview VALUES(00000061, '', '', 3.8);
INSERT INTO ItemKeyword VALUES(00000061, 'bread');
INSERT INTO ItemKeyword VALUES(00000061, 'garlic');
INSERT INTO ItemKeyword VALUES(00000061, 'basic');
INSERT INTO ItemKeyword VALUES(00000061, 'starter');
INSERT INTO ItemKeyword VALUES(00000061, 'herbs');

INSERT INTO Item VALUES(00000003, 00000062, 'Tomato bruschetta', null, 1, 7.50, 0, null, 0, 0, 0, 2.6, 'entree');
INSERT INTO ItemReview VALUES(00000062, '', '', 2.6);
INSERT INTO ItemKeyword VALUES(00000062, 'bruschetta');
INSERT INTO ItemKeyword VALUES(00000062, 'tomato');
INSERT INTO ItemKeyword VALUES(00000062, 'starter');
INSERT INTO ItemKeyword VALUES(00000062, 'onion');
INSERT INTO ItemKeyword VALUES(00000062, 'basil');

INSERT INTO Item VALUES(00000003, 00000063, 'Garlic crust', null, 1, 15.00, 0, null, 0, 0, 0, 3.6, 'entree');
INSERT INTO ItemReview VALUES(00000063, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000063, 'garlic');
INSERT INTO ItemKeyword VALUES(00000063, 'crust');
INSERT INTO ItemKeyword VALUES(00000063, 'starter');
INSERT INTO ItemKeyword VALUES(00000063, 'basic');
INSERT INTO ItemKeyword VALUES(00000063, 'small');

INSERT INTO Item VALUES(00000003, 00000064, 'Gnocchi fritti with crumbled feta', null, 1, 10.00, 0, null, 0, 1, 0, 2.6, 'entree');
INSERT INTO ItemReview VALUES(00000064, '', '', 2.6);
INSERT INTO ItemKeyword VALUES(00000064, 'feta');
INSERT INTO ItemKeyword VALUES(00000064, 'italian');
INSERT INTO ItemKeyword VALUES(00000064, 'fried');
INSERT INTO ItemKeyword VALUES(00000064, 'crumble');
INSERT INTO ItemKeyword VALUES(00000064, 'starter');

INSERT INTO Item VALUES(00000003, 00000065, 'Spaghetti marinara', 'assorted seafood, sauce, basil.', 1, 22.00, 0, null, 0, 0, 0, 4.3, 'main');
INSERT INTO ItemReview VALUES(00000065, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000065, 'spaghetti');
INSERT INTO ItemKeyword VALUES(00000065, 'seafood');
INSERT INTO ItemKeyword VALUES(00000065, 'sauce');
INSERT INTO ItemKeyword VALUES(00000065, 'basil');
INSERT INTO ItemKeyword VALUES(00000065, 'marine');

INSERT INTO Item VALUES(00000003, 00000066, 'Spaghetti bolognese', 'beef ragu, sauce.', 1, 18.00, 0, null, 0, 0, 0, 3.2, 'main');
INSERT INTO ItemReview VALUES(00000066, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000066, 'spaghetti');
INSERT INTO ItemKeyword VALUES(00000066, 'bolognese');
INSERT INTO ItemKeyword VALUES(00000066, 'beef');
INSERT INTO ItemKeyword VALUES(00000066, 'sauce');
INSERT INTO ItemKeyword VALUES(00000066, 'parmesan');

INSERT INTO Item VALUES(00000003, 00000067, 'Linguine boscaiola', 'bacons, mushrooms, shallots, white wine, cream.', 1, 20.00, 0, null, 0, 0, 0, 3.1, 'main');
INSERT INTO ItemReview VALUES(00000067, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000067, 'linguine');
INSERT INTO ItemKeyword VALUES(00000067, 'boscaiola');
INSERT INTO ItemKeyword VALUES(00000067, 'bacon');
INSERT INTO ItemKeyword VALUES(00000067, 'mushrrom');
INSERT INTO ItemKeyword VALUES(00000067, 'shallots');

INSERT INTO Item VALUES(00000003, 00000068, 'Linguine carbonara', 'Bacon, mushrooms, egg, parmesan, cream.', 1, 20.00, 0, null, 0, 0, 0, 4.0, 'main');
INSERT INTO ItemReview VALUES(00000068, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000068, 'linguine');
INSERT INTO ItemKeyword VALUES(00000068, 'carbonara');
INSERT INTO ItemKeyword VALUES(00000068, 'pasta');
INSERT INTO ItemKeyword VALUES(00000068, 'bacon');
INSERT INTO ItemKeyword VALUES(00000068, 'parmesan');

INSERT INTO Item VALUES(00000003, 00000069, 'Penne Calabrese', 'meatballs, sauce, parmesan', 1, 20.00, 0, null, 0, 0, 0, 3.8, 'main');
INSERT INTO ItemReview VALUES(00000069, '', '', 3.8);
INSERT INTO ItemKeyword VALUES(00000069, 'pasta');
INSERT INTO ItemKeyword VALUES(00000069, 'penne');
INSERT INTO ItemKeyword VALUES(00000069, 'meatballs');
INSERT INTO ItemKeyword VALUES(00000069, 'beef');
INSERT INTO ItemKeyword VALUES(00000069, 'parmesan');

INSERT INTO Item VALUES(00000003, 00000070, 'Penne abruzzi', 'prawns, bacon, garlic, oregano, brandy rose sauce.', 1, 20.00, 0, null, 0, 0, 0, 2.7, 'main');
INSERT INTO ItemReview VALUES(00000070, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000070, 'pasta');
INSERT INTO ItemKeyword VALUES(00000070, 'prawn');
INSERT INTO ItemKeyword VALUES(00000070, 'bacon');
INSERT INTO ItemKeyword VALUES(00000070, 'penne');
INSERT INTO ItemKeyword VALUES(00000070, 'garlic');

INSERT INTO Item VALUES(00000003, 00000071, 'Gnocchi beef cheek', 'beef, basil, sauce.', 1, 22.00, 0, null, 0, 0, 0, 3.8, 'main');
INSERT INTO ItemReview VALUES(00000071, '', '', 3.8);
INSERT INTO ItemKeyword VALUES(00000071, 'beef');
INSERT INTO ItemKeyword VALUES(00000071, 'basil');
INSERT INTO ItemKeyword VALUES(00000071, 'tender');
INSERT INTO ItemKeyword VALUES(00000071, 'meat');
INSERT INTO ItemKeyword VALUES(00000071, 'slow cook');

INSERT INTO Item VALUES(00000003, 00000072, 'Gnocchi gorgonzola', 'parmesan, blue vein cheese, cream.', 1, 20.00, 0, null, 0, 1, 0, 4.9, 'main');
INSERT INTO ItemReview VALUES(00000072, '', '', 4.9);
INSERT INTO ItemKeyword VALUES(00000072, 'blue cheese');
INSERT INTO ItemKeyword VALUES(00000072, 'parmesan');
INSERT INTO ItemKeyword VALUES(00000072, 'soft');
INSERT INTO ItemKeyword VALUES(00000072, 'gorgonzola');
INSERT INTO ItemKeyword VALUES(00000072, 'cheese');

INSERT INTO Item VALUES(00000003, 00000073, 'Mushrooms', 'assorted mushrooms, lemon, parsley, light chilli bread crumbs.', 1, 14.00, 0, null, 0, 1, 0, 2.0, 'entree');
INSERT INTO ItemReview VALUES(00000073, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000073, 'mushrooms');
INSERT INTO ItemKeyword VALUES(00000073, 'lemon');
INSERT INTO ItemKeyword VALUES(00000073, 'parley');
INSERT INTO ItemKeyword VALUES(00000073, 'chilli');
INSERT INTO ItemKeyword VALUES(00000073, 'bread');

INSERT INTO Item VALUES(00000003, 00000074, 'Grilled haloumi', 'rocket, balsamic, honey.', 1, 14.00, 0, null, 0, 1, 1, 3.8, 'entree');
INSERT INTO ItemReview VALUES(00000074, '', '', 3.8);
INSERT INTO ItemKeyword VALUES(00000074, 'grilled');
INSERT INTO ItemKeyword VALUES(00000074, 'haloumi');
INSERT INTO ItemKeyword VALUES(00000074, 'rocket');
INSERT INTO ItemKeyword VALUES(00000074, 'honey');
INSERT INTO ItemKeyword VALUES(00000074, 'balsamic');

INSERT INTO Item VALUES(00000003, 00000075, 'Garlic prawns', 'basil, sauce, bread.', 1, 17.00, 0, null, 0, 0, 0, 3.2, 'entree');
INSERT INTO ItemReview VALUES(00000075, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000075, 'seafood');
INSERT INTO ItemKeyword VALUES(00000075, 'garlic');
INSERT INTO ItemKeyword VALUES(00000075, 'basil');
INSERT INTO ItemKeyword VALUES(00000075, 'bread');
INSERT INTO ItemKeyword VALUES(00000075, 'sauce');

INSERT INTO Item VALUES(00000003, 00000076, 'Salt & pepper fritto Mistro', 'prawns, calamari, white bait, parsley, lemon, aioli.', 1, 16.00, 0, null, 0, 0, 0, 4.8, 'entree');
INSERT INTO ItemReview VALUES(00000076, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000076, 'seafood');
INSERT INTO ItemKeyword VALUES(00000076, 'prawns');
INSERT INTO ItemKeyword VALUES(00000076, 'calamari');
INSERT INTO ItemKeyword VALUES(00000076, 'squid');
INSERT INTO ItemKeyword VALUES(00000076, 'lemon');

INSERT INTO Item VALUES(00000003, 00000077, 'Vanilla Panna cotta', 'served with coullis of mixed berries.', 1, 11.00, 0, null, 0, 0, 0, 2.4, 'desert');
INSERT INTO ItemReview VALUES(00000077, '', '', 2.4);
INSERT INTO ItemKeyword VALUES(00000077, 'sweet');
INSERT INTO ItemKeyword VALUES(00000077, 'berry');
INSERT INTO ItemKeyword VALUES(00000077, 'panna cotta');
INSERT INTO ItemKeyword VALUES(00000077, 'vanilla');
INSERT INTO ItemKeyword VALUES(00000077, 'mixed');

INSERT INTO Item VALUES(00000003, 00000078, 'Tiramisu', 'savoiardi biscuits, coffee, mascarpone cream, chocolate.', 1, 11.00, 0, null, 0, 0, 0, 3.7, 'desert');
INSERT INTO ItemReview VALUES(00000078, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000078, 'sweet');
INSERT INTO ItemKeyword VALUES(00000078, 'chocolate');
INSERT INTO ItemKeyword VALUES(00000078, 'biscuit');
INSERT INTO ItemKeyword VALUES(00000078, 'coffee');
INSERT INTO ItemKeyword VALUES(00000078, 'mascarpone');

INSERT INTO Item VALUES(00000003, 00000079, 'Rosettas pistachio italian cheesecake', 'pistachio mascarpone cheesecake, meringue, vanilla, strawberry.', 1, 11.00, 0, null, 0, 0, 0, 3.5, 'desert');
INSERT INTO ItemReview VALUES(00000079, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000079, 'sweet');
INSERT INTO ItemKeyword VALUES(00000079, 'cheesecake');
INSERT INTO ItemKeyword VALUES(00000079, 'cake');
INSERT INTO ItemKeyword VALUES(00000079, 'vanilla');
INSERT INTO ItemKeyword VALUES(00000079, 'strawberry');



INSERT INTO Item VALUES(00000004, 00000080, 'Garlic Bread', null, 1, 9.00, 0, null, 0, 1, 0, 3.2, 'entree');
INSERT INTO ItemReview VALUES(00000080, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000080, 'garlic');
INSERT INTO ItemKeyword VALUES(00000080, 'starter');
INSERT INTO ItemKeyword VALUES(00000080, 'basic');
INSERT INTO ItemKeyword VALUES(00000080, 'bread');
INSERT INTO ItemKeyword VALUES(00000080, 'herbs');

INSERT INTO Item VALUES(00000004, 00000081, 'Chicken Wings', 'Tossed house-made chilli sauce on a bed of rocket.', 1, 18.00, 0, null, 0, 0, 0, 4.9, 'entree');
INSERT INTO ItemReview VALUES(00000081, '', '', 4.9);
INSERT INTO ItemKeyword VALUES(00000081, 'chicken');
INSERT INTO ItemKeyword VALUES(00000081, 'wings');
INSERT INTO ItemKeyword VALUES(00000081, 'chilli');
INSERT INTO ItemKeyword VALUES(00000081, 'rocket');
INSERT INTO ItemKeyword VALUES(00000081, 'starter');

INSERT INTO Item VALUES(00000004, 00000082, 'Garlic Pizza', null, 1, 18.00, 0, null, 0, 1, 0, 2.0, 'entree');
INSERT INTO ItemReview VALUES(00000082, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000082, 'pizza');
INSERT INTO ItemKeyword VALUES(00000082, 'garlic');
INSERT INTO ItemKeyword VALUES(00000082, 'cheese');
INSERT INTO ItemKeyword VALUES(00000082, 'starter');
INSERT INTO ItemKeyword VALUES(00000082, 'share');

INSERT INTO Item VALUES(00000004, 00000083, 'Fish tacos', 'Grilled soft taco, crispy fish, shredded lettuce, chipotle mayo and pickles.', 1, 20.00, 0, null, 0, 0, 0, 4.2, 'entree');
INSERT INTO ItemReview VALUES(00000083, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000083, 'taco');
INSERT INTO ItemKeyword VALUES(00000083, 'fish');
INSERT INTO ItemKeyword VALUES(00000083, 'chipotle');
INSERT INTO ItemKeyword VALUES(00000083, 'seafood');
INSERT INTO ItemKeyword VALUES(00000083, 'pickle');

INSERT INTO Item VALUES(00000004, 00000084, 'Tomato Basil Bruschetta', 'garlic french stick topped with diced tomatoes, onion, balsamic glaze, olive oil, garlic, chopped basil, parmesan cheese, salt and cracked pepper.', 1, 15.00, 0, null, 0, 1, 0, 4.6, 'entree');
INSERT INTO ItemReview VALUES(00000084, '', '', 4.6);
INSERT INTO ItemKeyword VALUES(00000084, 'bruschetta');
INSERT INTO ItemKeyword VALUES(00000084, 'basil');
INSERT INTO ItemKeyword VALUES(00000084, 'tomato');
INSERT INTO ItemKeyword VALUES(00000084, 'diced');
INSERT INTO ItemKeyword VALUES(00000084, 'onion');

INSERT INTO Item VALUES(00000004, 00000085, 'Margherita Pizza', 'Classic tomato, mozzarella and basil on a tomato base.', 1, 20.00, 0, null, 0, 1, 0, 2.5, 'main');
INSERT INTO ItemReview VALUES(00000085, '', '', 2.5);
INSERT INTO ItemKeyword VALUES(00000085, 'pizza');
INSERT INTO ItemKeyword VALUES(00000085, 'margherita');
INSERT INTO ItemKeyword VALUES(00000085, 'cheese');
INSERT INTO ItemKeyword VALUES(00000085, 'tomato');
INSERT INTO ItemKeyword VALUES(00000085, 'basil');

INSERT INTO Item VALUES(00000004, 00000086, 'Hawaiian Pizza', 'Smoked ham, fresh pineapple and mozzarella on a tomato base.', 1, 23.00, 0, null, 0, 0, 0, 3.9, 'main');
INSERT INTO ItemReview VALUES(00000086, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000086, 'hawaiian');
INSERT INTO ItemKeyword VALUES(00000086, 'pizza');
INSERT INTO ItemKeyword VALUES(00000086, 'ham');
INSERT INTO ItemKeyword VALUES(00000086, 'pineapple');
INSERT INTO ItemKeyword VALUES(00000086, 'tomato base');

INSERT INTO Item VALUES(00000004, 00000087, 'Pepperoni Pizza', 'Pepperoni, mozzarella and oregano on a tomato base.', 1, 23.00, 0, null, 0, 0, 0, 4.2, 'main');
INSERT INTO ItemReview VALUES(00000087, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000087, 'pepperoni');
INSERT INTO ItemKeyword VALUES(00000087, 'pizza');
INSERT INTO ItemKeyword VALUES(00000087, 'oregano');
INSERT INTO ItemKeyword VALUES(00000087, 'cheese');
INSERT INTO ItemKeyword VALUES(00000087, 'tomato base');

INSERT INTO Item VALUES(00000004, 00000088, 'Chicken Burger', 'chicken fillet with lettuce, tomato, red onion, aioli and chips.', 1, 23.00, 0, null, 0, 0, 0, 4.0, 'main');
INSERT INTO ItemReview VALUES(00000088, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000088, 'chicken');
INSERT INTO ItemKeyword VALUES(00000088, 'burger');
INSERT INTO ItemKeyword VALUES(00000088, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000088, 'onion');
INSERT INTO ItemKeyword VALUES(00000088, 'chips');

INSERT INTO Item VALUES(00000004, 00000089, 'Vegie Burger', 'grilled mushroom, fried halloumi, lettuce, aioli, honey mustard dressing served with chips.', 1, 20.00, 0, null, 0, 1, 0, 2.7, 'main');
INSERT INTO ItemReview VALUES(00000089, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000089, 'veg');
INSERT INTO ItemKeyword VALUES(00000089, 'burger');
INSERT INTO ItemKeyword VALUES(00000089, 'mushroom');
INSERT INTO ItemKeyword VALUES(00000089, 'halloumi');
INSERT INTO ItemKeyword VALUES(00000089, 'honey mustard');

INSERT INTO Item VALUES(00000004, 00000090, 'Chicken schnitzel', 'schnitzel with chips salad and lemon.', 1, 24.00, 0, null, 0, 0, 0, 3.3, 'main');
INSERT INTO ItemReview VALUES(00000090, '', '', 3.3);
INSERT INTO ItemKeyword VALUES(00000090, 'chicken');
INSERT INTO ItemKeyword VALUES(00000090, 'schnitzel');
INSERT INTO ItemKeyword VALUES(00000090, 'chips');
INSERT INTO ItemKeyword VALUES(00000090, 'salad');
INSERT INTO ItemKeyword VALUES(00000090, 'lemon');

INSERT INTO Item VALUES(00000004, 00000091, 'Seared Salmon', 'Pan-fried Atlantic salmon with crispy pancetta, chickpeas, Napolitana sauce, rocket, tzatziki sauce and finished with saavedra sauce.', 1, 34.00, 0, null, 0, 0, 1, 2.3, 'main');
INSERT INTO ItemReview VALUES(00000091, '', '', 2.3);
INSERT INTO ItemKeyword VALUES(00000091, 'salmon');
INSERT INTO ItemKeyword VALUES(00000091, 'seafood');
INSERT INTO ItemKeyword VALUES(00000091, 'sauce');
INSERT INTO ItemKeyword VALUES(00000091, 'pan fried');
INSERT INTO ItemKeyword VALUES(00000091, 'seared');

INSERT INTO Item VALUES(00000004, 00000092, 'Grilled Barramundi', 'With lemon herb greek potatoes, lemon butter sauce and green oil.', 1, 34.00, 0, null, 0, 0, 1, 3.6, 'main');
INSERT INTO ItemReview VALUES(00000092, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000092, 'grilled');
INSERT INTO ItemKeyword VALUES(00000092, 'barramundi');
INSERT INTO ItemKeyword VALUES(00000092, 'seafood');
INSERT INTO ItemKeyword VALUES(00000092, 'potato');
INSERT INTO ItemKeyword VALUES(00000092, 'lemon');

INSERT INTO Item VALUES(00000004, 00000093, 'Beer Battered Fish & chips', 'Battered fish of the day with chips, tartare sauce and house salad.', 1, 29.00, 0, null, 0, 0, 0, 2.6, 'main');
INSERT INTO ItemReview VALUES(00000093, '', '', 2.6);
INSERT INTO ItemKeyword VALUES(00000093, 'fish');
INSERT INTO ItemKeyword VALUES(00000093, 'battered');
INSERT INTO ItemKeyword VALUES(00000093, 'chips');
INSERT INTO ItemKeyword VALUES(00000093, 'seafood');
INSERT INTO ItemKeyword VALUES(00000093, 'cod');

INSERT INTO Item VALUES(00000004, 00000094, 'Banana & Caramel Creme Brulee', 'With house made pistachio biscotti.', 1, 16.00, 0, null, 0, 1, 1, 2.7, 'desert');
INSERT INTO ItemReview VALUES(00000094, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000094, 'banana');
INSERT INTO ItemKeyword VALUES(00000094, 'caramel');
INSERT INTO ItemKeyword VALUES(00000094, 'creme brulee');
INSERT INTO ItemKeyword VALUES(00000094, 'sweet');
INSERT INTO ItemKeyword VALUES(00000094, 'bisuit');

INSERT INTO Item VALUES(00000004, 00000095, 'Nutella Pizza', 'Fresh banana, strawberries and mint leaves.', 1, 16.00, 0, null, 0, 0, 1, 3.6, 'desert');
INSERT INTO ItemReview VALUES(00000095, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000095, 'nutella');
INSERT INTO ItemKeyword VALUES(00000095, 'pizza');
INSERT INTO ItemKeyword VALUES(00000095, 'banana');
INSERT INTO ItemKeyword VALUES(00000095, 'mint');
INSERT INTO ItemKeyword VALUES(00000095, 'chocolate');

INSERT INTO Item VALUES(00000004, 00000096, 'Sticky date', 'Served with a kalua and caramel sauce and valilla ice cream.', 1, 16.00, 0, null, 0, 0, 0, 4.2, 'desert');
INSERT INTO ItemReview VALUES(00000096, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000096, 'sticky');
INSERT INTO ItemKeyword VALUES(00000096, 'data');
INSERT INTO ItemKeyword VALUES(00000096, 'caramel');
INSERT INTO ItemKeyword VALUES(00000096, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000096, 'sweet');

INSERT INTO Item VALUES(00000004, 00000097, 'kids Fish & Chips', null, 1, 15.00, 0, null, 0, 0, 0, 4.1, 'kids');
INSERT INTO ItemReview VALUES(00000097, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000097, 'fish');
INSERT INTO ItemKeyword VALUES(00000097, 'chips');
INSERT INTO ItemKeyword VALUES(00000097, 'seafood');
INSERT INTO ItemKeyword VALUES(00000097, 'small');
INSERT INTO ItemKeyword VALUES(00000097, 'cod');

INSERT INTO Item VALUES(00000004, 00000098, 'Kids Burger', null, 1, 15.00, 0, null, 0, 0, 0, 4.6, 'kids');
INSERT INTO ItemReview VALUES(00000098, '', '', 4.6);
INSERT INTO ItemKeyword VALUES(00000098, 'burger');
INSERT INTO ItemKeyword VALUES(00000098, 'cheese');
INSERT INTO ItemKeyword VALUES(00000098, 'meat');
INSERT INTO ItemKeyword VALUES(00000098, 'small');
INSERT INTO ItemKeyword VALUES(00000098, 'tomato sauce');

INSERT INTO Item VALUES(00000004, 00000099, 'Kids Pizza', null, 1, 15.00, 0, null, 0, 0, 0, 4.7, 'kids');
INSERT INTO ItemReview VALUES(00000099, '', '', 4.7);
INSERT INTO ItemKeyword VALUES(00000099, 'pizza');
INSERT INTO ItemKeyword VALUES(00000099, 'cheese');
INSERT INTO ItemKeyword VALUES(00000099, 'small');
INSERT INTO ItemKeyword VALUES(00000099, 'tomato');
INSERT INTO ItemKeyword VALUES(00000099, 'kid');



INSERT INTO Item VALUES(00000005, 00000100, 'Onion Bhaji', 'Sliced onion rolled in chick pea flour and deep fried.', 1, 6.00, 0, null, 0, 0, 0, 4.0, 'entree');
INSERT INTO ItemReview VALUES(00000100, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000100, 'onion');
INSERT INTO ItemKeyword VALUES(00000100, 'chick');
INSERT INTO ItemKeyword VALUES(00000100, 'pea');
INSERT INTO ItemKeyword VALUES(00000100, 'deep fried');
INSERT INTO ItemKeyword VALUES(00000100, 'rolled');

INSERT INTO Item VALUES(00000005, 00000101, 'Aloo Tikki', 'Lightly spiced crispy potato patties shallow fried in sunflower oil, on a bed of chick-pea masala with khatta chutney.', 1, 12.00, 0, null, 0, 0, 0, 4.4, 'entree');
INSERT INTO ItemReview VALUES(00000101, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000101, 'potato');
INSERT INTO ItemKeyword VALUES(00000101, 'sunflower');
INSERT INTO ItemKeyword VALUES(00000101, 'chutney');
INSERT INTO ItemKeyword VALUES(00000101, 'masala');
INSERT INTO ItemKeyword VALUES(00000101, 'chick pea');

INSERT INTO Item VALUES(00000005, 00000102, 'Vegetable Samosa', 'Plain flour crisp pastry filled with seasoned peas, potatoes and deep fried.', 1, 7.00, 0, null, 0, 1, 1, 2.9, 'entree');
INSERT INTO ItemReview VALUES(00000102, '', '', 2.9);
INSERT INTO ItemKeyword VALUES(00000102, 'veg');
INSERT INTO ItemKeyword VALUES(00000102, 'samosa');
INSERT INTO ItemKeyword VALUES(00000102, 'potato');
INSERT INTO ItemKeyword VALUES(00000102, 'deep fried');
INSERT INTO ItemKeyword VALUES(00000102, 'pea');

INSERT INTO Item VALUES(00000005, 00000103, 'Papdi chaat', 'Crunchy tangy hot and sweet flovours combine to make papdi chaat delicious to eat as a snack or a great alternative to a meal.', 1, 12.00, 0, null, 0, 0, 0, 3.0, 'entree');
INSERT INTO ItemReview VALUES(00000103, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000103, 'papdi');
INSERT INTO ItemKeyword VALUES(00000103, 'chaat');
INSERT INTO ItemKeyword VALUES(00000103, 'spicy');
INSERT INTO ItemKeyword VALUES(00000103, 'hot');
INSERT INTO ItemKeyword VALUES(00000103, 'snack');

INSERT INTO Item VALUES(00000005, 00000104, 'Lamb cutlets', 'Mouthwatering juicy and tender fresh lamb cutlets marinated with yogurt and freshly ground masala cooked in the tandoor.', 1, 12.00, 0, null, 0, 0, 1, 4.9, 'entree');
INSERT INTO ItemReview VALUES(00000104, '', '', 4.9);
INSERT INTO ItemKeyword VALUES(00000104, 'lamb');
INSERT INTO ItemKeyword VALUES(00000104, 'meat');
INSERT INTO ItemKeyword VALUES(00000104, 'cutlets');
INSERT INTO ItemKeyword VALUES(00000104, 'yogurt');
INSERT INTO ItemKeyword VALUES(00000104, 'tandoor');

INSERT INTO Item VALUES(00000005, 00000105, 'Buttter Chicken', 'Chicken marinated and grilled in tandoor, then cooked in a tomato based bravy with a hint of butter and cream.', 1, 20.00, 0, null, 0, 0, 1, 3.3, 'main');
INSERT INTO ItemReview VALUES(00000105, '', '', 3.3);
INSERT INTO ItemKeyword VALUES(00000105, 'butter');
INSERT INTO ItemKeyword VALUES(00000105, 'chicken');
INSERT INTO ItemKeyword VALUES(00000105, 'tandoor');
INSERT INTO ItemKeyword VALUES(00000105, 'tomato');
INSERT INTO ItemKeyword VALUES(00000105, 'cream');

INSERT INTO Item VALUES(00000005, 00000106, 'Mango chicken', 'tender chicken curry blended together with mango, black mustard seeds, finished with cream.', 1, 20.00, 0, null, 0, 0, 1, 3.5, 'main');
INSERT INTO ItemReview VALUES(000000106, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000106, 'mango');
INSERT INTO ItemKeyword VALUES(00000106, 'chicken');
INSERT INTO ItemKeyword VALUES(00000106, 'mustard');
INSERT INTO ItemKeyword VALUES(00000106, 'black');
INSERT INTO ItemKeyword VALUES(00000106, 'curry');

INSERT INTO Item VALUES(00000005, 00000107, 'Lamb korma', 'Tender lamb pieces cooked in onion gravy, tomato sauce, finished in a cashew nut sauce with cream.', 1, 21.00, 0, null, 0, 0, 1, 2.2, 'main');
INSERT INTO ItemReview VALUES(00000107, '', '', 2.2);
INSERT INTO ItemKeyword VALUES(00000107, 'lamb');
INSERT INTO ItemKeyword VALUES(00000107, 'korma');
INSERT INTO ItemKeyword VALUES(00000107, 'onion');
INSERT INTO ItemKeyword VALUES(00000107, 'gravy');
INSERT INTO ItemKeyword VALUES(00000107, 'cashew');

INSERT INTO Item VALUES(00000005, 00000108, 'Lamb vindaloo', 'Delicious lamb simmered in traditional hot vindaloo sauce.', 1, 21.00, 0, null, 0, 0, 1, 4.7, 'main');
INSERT INTO ItemReview VALUES(00000108, '', '', 4.7);
INSERT INTO ItemKeyword VALUES(00000108, 'lamb');
INSERT INTO ItemKeyword VALUES(00000108, 'vindaloo');
INSERT INTO ItemKeyword VALUES(00000108, 'simmer');
INSERT INTO ItemKeyword VALUES(00000108, 'spicy');
INSERT INTO ItemKeyword VALUES(00000108, 'hot');

INSERT INTO Item VALUES(00000005, 00000109, 'Prawn vindaloo', 'Delicious prawns simmered in traditional hot vindaloo sauce.', 1, 25.00, 0, null, 0, 0, 1, 2.9, 'main');
INSERT INTO ItemReview VALUES(00000109, '', '', 2.9);
INSERT INTO ItemKeyword VALUES(00000109, 'prawn');
INSERT INTO ItemKeyword VALUES(00000109, 'seafood');
INSERT INTO ItemKeyword VALUES(00000109, 'vindaloo');
INSERT INTO ItemKeyword VALUES(00000109, 'spicy');
INSERT INTO ItemKeyword VALUES(00000109, 'hot');

INSERT INTO Item VALUES(00000005, 00000110, 'Prawn tikka masala', 'Prawns cooked in fresh onions, capsicum and garnished with fresh chilli and coriander.', 1, 25.00, 0, null, 0, 0, 1, 4.1, 'main');
INSERT INTO ItemReview VALUES(000000110, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000110, 'prawn');
INSERT INTO ItemKeyword VALUES(00000110, 'seafood');
INSERT INTO ItemKeyword VALUES(00000110, 'masala');
INSERT INTO ItemKeyword VALUES(00000110, 'onion');
INSERT INTO ItemKeyword VALUES(00000110, 'chilli');

INSERT INTO Item VALUES(00000005, 00000111, 'Vegetable Biryani', 'Selected seasonal vegetables, cooked with basmati rice and exotic blend of herbs and spices.', 1, 15.00, 0, null, 0, 1, 1, 3.0, 'main');
INSERT INTO ItemReview VALUES(000000111, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000111, 'veg');
INSERT INTO ItemKeyword VALUES(00000111, 'rice');
INSERT INTO ItemKeyword VALUES(00000111, 'herb');
INSERT INTO ItemKeyword VALUES(00000111, 'spice');
INSERT INTO ItemKeyword VALUES(00000111, 'biryani');

INSERT INTO Item VALUES(00000005, 00000112, 'Lamb Biryani', 'Lamb pieces cooked with basmati rice and exotic blend of herbs and spices.', 1, 19.00, 0, null, 0, 0, 1, 4.3, 'main');
INSERT INTO ItemReview VALUES(00000112, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000112, 'biryani');
INSERT INTO ItemKeyword VALUES(00000112, 'lamb');
INSERT INTO ItemKeyword VALUES(00000112, 'meat');
INSERT INTO ItemKeyword VALUES(00000112, 'rice');
INSERT INTO ItemKeyword VALUES(00000112, 'spice');

INSERT INTO Item VALUES(00000005, 00000113, 'Tandoori Roti', 'this traditional indian tandoor baked wholemeal flatbread is a prominent part of the indian diet.', 1, 3.00, 0, null, 0, 0, 0, 4.8, 'entree');
INSERT INTO ItemReview VALUES(00000113, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000113, 'bread');
INSERT INTO ItemKeyword VALUES(00000113, 'randoori');
INSERT INTO ItemKeyword VALUES(00000113, 'roti');
INSERT INTO ItemKeyword VALUES(00000113, 'flat');
INSERT INTO ItemKeyword VALUES(00000113, 'wholemeal');

INSERT INTO Item VALUES(00000005, 00000114, 'Garlic Naan', 'traditional indian flatbread is enriched with yoghurt, topped with garlic, baked to perform in our clay oven, then lightly brushed with glee.', 1, 3.60, 0, null, 0, 0, 0, 2.8, 'entree');
INSERT INTO ItemReview VALUES(00000114, '', '', 2.8);
INSERT INTO ItemKeyword VALUES(00000114, 'fgarlic');
INSERT INTO ItemKeyword VALUES(00000114, 'naan');
INSERT INTO ItemKeyword VALUES(00000114, 'bread');
INSERT INTO ItemKeyword VALUES(00000114, 'yoghurt');
INSERT INTO ItemKeyword VALUES(00000114, 'garlic');

INSERT INTO Item VALUES(00000005, 00000115, 'Steamed rice basmati', 'Fine quality steamed basmati rice.', 1, 4.50, 0, null, 0, 1, 1, 3.8, 'entree');
INSERT INTO ItemReview VALUES(00000115, '', '', 3.8);
INSERT INTO ItemKeyword VALUES(00000115, 'rice');
INSERT INTO ItemKeyword VALUES(00000115, 'basmati');
INSERT INTO ItemKeyword VALUES(00000115, 'Steamed');
INSERT INTO ItemKeyword VALUES(00000115, 'small');
INSERT INTO ItemKeyword VALUES(00000115, 'basic');

INSERT INTO Item VALUES(00000005, 00000116, 'Pulao Rice', 'Rice cooked with cumun seeds and green peas.', 1, 6.00, 0, null, 0, 1, 1, 3.9, 'entree');
INSERT INTO ItemReview VALUES(00000116, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000116, 'rice');
INSERT INTO ItemKeyword VALUES(00000116, 'cumun');
INSERT INTO ItemKeyword VALUES(00000116, 'pea');
INSERT INTO ItemKeyword VALUES(00000116, 'seed');
INSERT INTO ItemKeyword VALUES(00000116, 'small');

INSERT INTO Item VALUES(00000005, 00000117, 'Gulab Jumun', 'This delicious dessert consists of dumplings traditionally made from thickened and reduced milk soaked in rose flavoured sugar syrup, served warm.', 1, 27.00, 0, null, 0, 0, 0, 4.6, 'desert');
INSERT INTO ItemReview VALUES(00000117, '', '', 4.6);
INSERT INTO ItemKeyword VALUES(00000117, 'gulab');
INSERT INTO ItemKeyword VALUES(00000117, 'jumun');
INSERT INTO ItemKeyword VALUES(00000117, 'sweet');
INSERT INTO ItemKeyword VALUES(00000117, 'dumplings');
INSERT INTO ItemKeyword VALUES(00000117, 'sugar');

INSERT INTO Item VALUES(00000005, 00000118, 'Mango Kulfi', 'Refreshing homemade ice cream flavoured with saffron and mango.', 1, 5.00, 0, null, 0, 0, 0, 2.0, 'desert');
INSERT INTO ItemReview VALUES(00000118, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000118, 'mango');
INSERT INTO ItemKeyword VALUES(00000118, 'kulfi');
INSERT INTO ItemKeyword VALUES(00000118, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000118, 'saffron');
INSERT INTO ItemKeyword VALUES(00000118, 'sweet');

INSERT INTO Item VALUES(00000005, 00000119, 'Pistachio Kulfi', 'A traditional homemade indian ice-cream containing a delicate blend of crushed pistachios and saffron, topped with crushed pista.', 1, 5.00, 0, null, 0, 0, 0, 3.9, 'desert');
INSERT INTO ItemReview VALUES(00000119, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000119, 'pistachio');
INSERT INTO ItemKeyword VALUES(00000119, 'kulfi');
INSERT INTO ItemKeyword VALUES(00000119, 'sweet');
INSERT INTO ItemKeyword VALUES(00000119, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000119, 'pista');



INSERT INTO Item VALUES(00000006, 00000120, 'Mamas meatballs', 'Slow cooked beef meatballs in napolitana sauce served freshly baked bread rolls.', 1, 15.00, 0, null, 0, 0, 0, 4.1, 'entree');
INSERT INTO ItemReview VALUES(00000120, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000120, 'meatballs');
INSERT INTO ItemKeyword VALUES(00000120, 'meat');
INSERT INTO ItemKeyword VALUES(00000120, 'beef');
INSERT INTO ItemKeyword VALUES(00000120, 'napolitana');
INSERT INTO ItemKeyword VALUES(00000120, 'bread roll');

INSERT INTO Item VALUES(00000006, 00000121, 'Arancini', 'Italian rice balls stuffed with porcini mushrooms and truffle oil with capsicum sauce.', 1, 16.00, 0, null, 0, 0, 0, 4.3, 'entree');
INSERT INTO ItemReview VALUES(00000121, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000121, 'arancini');
INSERT INTO ItemKeyword VALUES(00000121, 'rice ball');
INSERT INTO ItemKeyword VALUES(00000121, 'mushrooms');
INSERT INTO ItemKeyword VALUES(00000121, 'truffle');
INSERT INTO ItemKeyword VALUES(00000121, 'capsicum');

INSERT INTO Item VALUES(00000006, 00000122, 'Octopus salad', 'Grilled whole octopus pieces with mixed salad, artichoke, onion, feta and olives, cherry tomatoes.', 1, 19, 0, null, 0, 0, 0, 4.1, 'entree');
INSERT INTO ItemReview VALUES(00000122, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000122, 'octopus');
INSERT INTO ItemKeyword VALUES(00000122, 'seafood');
INSERT INTO ItemKeyword VALUES(00000122, 'salad');
INSERT INTO ItemKeyword VALUES(00000122, 'artichoke');
INSERT INTO ItemKeyword VALUES(00000122, 'cherry tomatoes');

INSERT INTO Item VALUES(00000006, 00000123, 'Pane duo', 'Freshly baked bread rolls served with butter and olive oil with balsamic.', 1, 7.00, 0, null, 0, 1, 0, 4.5, 'entree');
INSERT INTO ItemReview VALUES(00000123, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000123, 'Pane duo');
INSERT INTO ItemKeyword VALUES(00000123, 'bread');
INSERT INTO ItemKeyword VALUES(00000123, 'roll');
INSERT INTO ItemKeyword VALUES(00000123, 'butter');
INSERT INTO ItemKeyword VALUES(00000123, 'olive oil');

INSERT INTO Item VALUES(00000006, 00000124, 'Garlic and cheese pizza', 'Baked fresh on order.', 1, 13.00, 0, null, 0, 1, 0, 3.4, 'entree');
INSERT INTO ItemReview VALUES(00000124, '', '', 3.4);
INSERT INTO ItemKeyword VALUES(00000124, 'garlic');
INSERT INTO ItemKeyword VALUES(00000124, 'cheese');
INSERT INTO ItemKeyword VALUES(00000124, 'pizza');
INSERT INTO ItemKeyword VALUES(00000124, 'share');
INSERT INTO ItemKeyword VALUES(00000124, 'starter');

INSERT INTO Item VALUES(00000006, 00000125, 'Margherite pizza', 'Mozzarella cheese and basil.', 1, 20.00, 0, null, 0, 0, 0, 4.0, 'main');
INSERT INTO ItemReview VALUES(00000125, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000125, 'pizza');
INSERT INTO ItemKeyword VALUES(00000125, 'margherite');
INSERT INTO ItemKeyword VALUES(00000125, 'cheese');
INSERT INTO ItemKeyword VALUES(00000125, 'basil');
INSERT INTO ItemKeyword VALUES(00000125, 'tomato');

INSERT INTO Item VALUES(00000006, 00000126, 'Regina pizza', 'Mozzarella cheese, cherry tomato and basil with fresh pieces of bocconcini.', 1, 24.00, 0, null, 0, 0, 0, 4.9, 'main');
INSERT INTO ItemReview VALUES(00000126, '', '', 4.9);
INSERT INTO ItemKeyword VALUES(00000126, 'regina');
INSERT INTO ItemKeyword VALUES(00000126, 'pizza');
INSERT INTO ItemKeyword VALUES(00000126, 'mozzarella');
INSERT INTO ItemKeyword VALUES(00000126, 'cheese');
INSERT INTO ItemKeyword VALUES(00000126, 'bocconcini');

INSERT INTO Item VALUES(00000006, 00000127, 'San remo Pizza', 'Mozzarella cheese, eggplant, mushroom, capsicum, sun-dried tomato, feta cheese and olives.', 1, 25.00, 0, null, 0, 0, 0, 4.7, 'main');
INSERT INTO ItemReview VALUES(00000127, '', '', 4.7);
INSERT INTO ItemKeyword VALUES(00000127, 'pizza');
INSERT INTO ItemKeyword VALUES(00000127, 'san remo');
INSERT INTO ItemKeyword VALUES(00000127, 'cheese');
INSERT INTO ItemKeyword VALUES(00000127, 'eggplant');
INSERT INTO ItemKeyword VALUES(00000127, 'mushrooms');

INSERT INTO Item VALUES(00000006, 00000128, 'Tropicana Pizza', 'Mozzarella cheese, ham and pineapple.', 1, 22.00, 0, null, 0, 0, 0, 4.1, 'main');
INSERT INTO ItemReview VALUES(00000128, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000128, 'pizza');
INSERT INTO ItemKeyword VALUES(00000128, 'tropicana');
INSERT INTO ItemKeyword VALUES(00000128, 'ham');
INSERT INTO ItemKeyword VALUES(00000128, 'pinapple');
INSERT INTO ItemKeyword VALUES(00000128, 'cheese');

INSERT INTO Item VALUES(00000006, 00000129, 'Supreme Pizza', 'Mozzarella cheese, sopressa salami, spanish onion, ham, pineapple, capsicum, mushroom, olives.', 1, 26.00, 0, null, 0, 0, 0, 4.4, 'main');
INSERT INTO ItemReview VALUES(00000129, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000129, 'pizza');
INSERT INTO ItemKeyword VALUES(00000129, 'supreme');
INSERT INTO ItemKeyword VALUES(00000129, 'salami');
INSERT INTO ItemKeyword VALUES(00000129, 'ham');
INSERT INTO ItemKeyword VALUES(00000129, 'pinapple');

INSERT INTO Item VALUES(00000006, 00000130, 'Barbeque Meat Pizza', 'Mozzarella cheese, sopressa salami, ham, italian sausage and spanish onion, bbq sauce.', 1, 25.00, 0, null, 0, 0, 0, 4.4, 'main');
INSERT INTO ItemReview VALUES(00000130, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000130, 'pizza');
INSERT INTO ItemKeyword VALUES(00000130, 'meat');
INSERT INTO ItemKeyword VALUES(00000130, 'salami');
INSERT INTO ItemKeyword VALUES(00000130, 'ham');
INSERT INTO ItemKeyword VALUES(00000130, 'sausage');

INSERT INTO Item VALUES(00000006, 00000131, 'Barbeque chicken Pizza', 'Mozzarella cheese, chicken, mushroom and pineapple, roast capsicum, bbq sauce, onion.', 1, 24.00, 0, null, 0, 0, 0, 4.6, 'main');
INSERT INTO ItemReview VALUES(00000131, '', '', 4.6);
INSERT INTO ItemKeyword VALUES(00000131, 'pizza');
INSERT INTO ItemKeyword VALUES(00000131, 'Barbeque');
INSERT INTO ItemKeyword VALUES(00000131, 'chicken');
INSERT INTO ItemKeyword VALUES(00000131, 'musgrrom');
INSERT INTO ItemKeyword VALUES(00000131, 'bbq');

INSERT INTO Item VALUES(00000006, 00000132, 'Gamberi Pizza', 'Mozzarella cheese, marinated prawns, basil, garlic and capers.', 1, 24.00, 0, null, 0, 0, 0, 3.6, 'main');
INSERT INTO ItemReview VALUES(00000132, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000132, 'pizza');
INSERT INTO ItemKeyword VALUES(00000132, 'gamberi');
INSERT INTO ItemKeyword VALUES(00000132, 'prawns');
INSERT INTO ItemKeyword VALUES(00000132, 'cheese');
INSERT INTO ItemKeyword VALUES(00000132, 'capers');

INSERT INTO Item VALUES(00000006, 00000133, 'Perri perri Pizza', 'Mozzarella cheese, chicken, roast capsicum and caramelised onion, perri-perri sauce.', 1, 24.00, 0, null, 0, 0, 0, 3.1, 'main');
INSERT INTO ItemReview VALUES(00000133, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000133, 'pizza');
INSERT INTO ItemKeyword VALUES(00000133, 'perri');
INSERT INTO ItemKeyword VALUES(00000133, 'sauce');
INSERT INTO ItemKeyword VALUES(00000133, 'chicken');
INSERT INTO ItemKeyword VALUES(00000133, 'capsicum');

INSERT INTO Item VALUES(00000006, 00000134, 'Mediterranean lamb Pizza', 'Mozzarella cheese, roast capsicum, spanish onion, feta cheese, salsa verde and pink frilled marinated lamb.', 1, 26.00, 0, null, 0, 0, 0, 4.5, 'main');
INSERT INTO ItemReview VALUES(00000134, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000134, 'pizza');
INSERT INTO ItemKeyword VALUES(00000134, 'lamb');
INSERT INTO ItemKeyword VALUES(00000134, 'mediterranean');
INSERT INTO ItemKeyword VALUES(00000134, 'capsicum');
INSERT INTO ItemKeyword VALUES(00000134, 'salsa');

INSERT INTO Item VALUES(00000006, 00000135, 'Sausage and funghi Pizza', 'Mozzarella cheese, italian sausage, mushroom, cherry tomato.', 1, 24.00, 0, null, 0, 0, 0, 4.2, 'main');
INSERT INTO ItemReview VALUES(00000135, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000135, 'pizza');
INSERT INTO ItemKeyword VALUES(00000135, 'sausage');
INSERT INTO ItemKeyword VALUES(00000135, 'funghi');
INSERT INTO ItemKeyword VALUES(00000135, 'mushroom');
INSERT INTO ItemKeyword VALUES(00000135, 'cherry');

INSERT INTO Item VALUES(00000006, 00000136, 'Calabrese Pizza', 'Mozzarella cheese, sopressa salami, spanish onion, artichoke hearts, sun-dried tomatoes.', 1, 25.00, 0, null, 0, 0, 0, 3.5, 'main');
INSERT INTO ItemReview VALUES(00000136, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000136, 'pizza');
INSERT INTO ItemKeyword VALUES(00000136, 'calabrese');
INSERT INTO ItemKeyword VALUES(00000136, 'salami');
INSERT INTO ItemKeyword VALUES(00000136, 'sun dried');
INSERT INTO ItemKeyword VALUES(00000136, 'artichoke');

INSERT INTO Item VALUES(00000006, 00000137, 'Kids calamari', 'Lightly crumbed calamari served with chips', 1, 13.90, 0, null, 0, 0, 0, 3.1, 'kids');
INSERT INTO ItemReview VALUES(00000137, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000137, 'calamari');
INSERT INTO ItemKeyword VALUES(00000137, 'seafood');
INSERT INTO ItemKeyword VALUES(00000137, 'chicken');
INSERT INTO ItemKeyword VALUES(00000137, 'chips');
INSERT INTO ItemKeyword VALUES(00000137, 'small');

INSERT INTO Item VALUES(00000006, 00000138, 'Red spaghetti', 'Soft beef meatballs cooked in napoletana sauce with spaghetti.', 1, 10.90, 0, null, 0, 0, 0, 2.6, 'kids');
INSERT INTO ItemReview VALUES(00000138, '', '', 2.6);
INSERT INTO ItemKeyword VALUES(00000138, 'spaghetti');
INSERT INTO ItemKeyword VALUES(00000138, 'beef');
INSERT INTO ItemKeyword VALUES(00000138, 'soft');
INSERT INTO ItemKeyword VALUES(00000138, 'meatball');
INSERT INTO ItemKeyword VALUES(00000138, 'napoletana');

INSERT INTO Item VALUES(00000006, 00000139, 'Ham & Pineapple pizza', 'Woodfired pizza with ham, cheese and pineapple.', 1, 12.90, 0, null, 0, 0, 0, 3.0, 'kids');
INSERT INTO ItemReview VALUES(00000139, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000139, 'ham');
INSERT INTO ItemKeyword VALUES(00000139, 'pineapple');
INSERT INTO ItemKeyword VALUES(00000139, 'pizza');
INSERT INTO ItemKeyword VALUES(00000139, 'cheese');
INSERT INTO ItemKeyword VALUES(00000139, 'small');



INSERT INTO Item VALUES(00000007, 00000140, 'Tropical Whopper', '100% aussie flame grilled beef topped with melted cheese, double premium eye bacon, 2x slices of fresh pineapple, smoky BBQ sauce, mayo and fresh salted on a toasted sesame seed bun.', 1, 9.75, 0, 3540, 0, 0, 0, 1.4, 'specials');
INSERT INTO ItemReview VALUES(00000140, '', '', 1.4);
INSERT INTO ItemKeyword VALUES(00000140, 'burger');
INSERT INTO ItemKeyword VALUES(00000140, 'pineapple');
INSERT INTO ItemKeyword VALUES(00000140, 'grilled');
INSERT INTO ItemKeyword VALUES(00000140, 'beef');
INSERT INTO ItemKeyword VALUES(00000140, 'bacon');

INSERT INTO Item VALUES(00000007, 00000141, 'Aussie Whopper', '100% flame-grilled aussie beef topped with premium eye bacon, melted cheese, freshly cracked egg, ketchup, onoin, tomato, lettuce and beetroot on a toasted sesame seed bun.', 1, 9.75, 0, 2880, 0, 0, 0, 3.5, 'main');
INSERT INTO ItemReview VALUES(00000141, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000141, 'burger');
INSERT INTO ItemKeyword VALUES(00000141, 'beef');
INSERT INTO ItemKeyword VALUES(00000141, 'bacon');
INSERT INTO ItemKeyword VALUES(00000141, 'cheese');
INSERT INTO ItemKeyword VALUES(00000141, 'egg');

INSERT INTO Item VALUES(00000007, 00000142, 'Original Whopper', 'Think of the cripy lettuce and ripe tomato. Think of the freshly-toasted seasame seed bun. think of the flame-grilled aussie beef. Now double it. thats a whopper.', 1, 9.90, 0, 3730, 0, 0, 0, 2.3, 'main');
INSERT INTO ItemReview VALUES(00000142, '', '', 2.3);
INSERT INTO ItemKeyword VALUES(00000142, 'burger');
INSERT INTO ItemKeyword VALUES(00000142, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000142, 'tomato');
INSERT INTO ItemKeyword VALUES(00000142, 'bun');
INSERT INTO ItemKeyword VALUES(00000142, 'original');

INSERT INTO Item VALUES(00000007, 00000143, 'Double cheeseburger', 'The cheeseburger with twice the flavour. two flame-grilled 100! beef patties, two slices of cheese, pickles, mustard and tomato sauce on a toasted sesame seed bun.', 1, 9.90, 0, 1920, 0, 0, 0, 4.3, 'main');
INSERT INTO ItemReview VALUES(00000143, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000143, 'burger');
INSERT INTO ItemKeyword VALUES(00000143, 'double');
INSERT INTO ItemKeyword VALUES(00000143, 'cheese');
INSERT INTO ItemKeyword VALUES(00000143, 'grilled');
INSERT INTO ItemKeyword VALUES(00000143, 'beef');

INSERT INTO Item VALUES(00000007, 00000144, 'Hamburger', 'Classic combo of a flame grilled aussie beef patty topped with crunchy pickle, mustard and tomato sauce, served on a freshly toasted sesame seed bun.', 1, 8.50, 0, 1223, 0, 0, 0, 3.2, 'main');
INSERT INTO ItemReview VALUES(00000144, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000144, 'burger');
INSERT INTO ItemKeyword VALUES(00000144, 'beef');
INSERT INTO ItemKeyword VALUES(00000144, 'pickle');
INSERT INTO ItemKeyword VALUES(00000144, 'mustard');
INSERT INTO ItemKeyword VALUES(00000144, 'bun');

INSERT INTO Item VALUES(00000007, 00000145, 'Grill Masters Chicago Angus', 'A thick and juicy angus patty, stacked with double bacon, natural cheese, peppercorn sauce tomato and lettuce on a toasted brioche bun.', 1, 10.85, 0, 3680, 0, 0, 0, 1.8, 'main');
INSERT INTO ItemReview VALUES(00000145, '', '', 1.8);
INSERT INTO ItemKeyword VALUES(00000145, 'burger');
INSERT INTO ItemKeyword VALUES(00000145, 'angus');
INSERT INTO ItemKeyword VALUES(00000145, 'bacon');
INSERT INTO ItemKeyword VALUES(00000145, 'cheese');
INSERT INTO ItemKeyword VALUES(00000145, 'peppercorn');

INSERT INTO Item VALUES(00000007, 00000146, 'Aussie jacks fried chicken', 'Big thick, crispy and juicy fried chicken fillet, topped with premium eye becon, melted cheese, freshly cracked egg, lettuce, beetroot abd mayop on a toasted brioche bun.', 1, 9.45, 0, 3930, 0, 0, 0, 1.2, 'main');
INSERT INTO ItemReview VALUES(00000146, '', '', 1.2);
INSERT INTO ItemKeyword VALUES(00000146, 'burger');
INSERT INTO ItemKeyword VALUES(00000146, 'chicken');
INSERT INTO ItemKeyword VALUES(00000146, 'becon');
INSERT INTO ItemKeyword VALUES(00000146, 'egg');
INSERT INTO ItemKeyword VALUES(00000146, 'aus');

INSERT INTO Item VALUES(00000007, 00000147, 'Spicy grilled chicken', 'Flame grilled aussie chicken breast fillet topped with fresh lettuce, hand-cut tomato and signature spicy sauce on a toasted sesame seed bun.', 1, 9.30, 0, 1490, 0, 0, 0, 3.2, 'main');
INSERT INTO ItemReview VALUES(00000147, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000147, 'burger');
INSERT INTO ItemKeyword VALUES(00000147, 'spicy');
INSERT INTO ItemKeyword VALUES(00000147, 'chicken');
INSERT INTO ItemKeyword VALUES(00000147, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000147, 'tomato');

INSERT INTO Item VALUES(00000007, 00000148, 'Hamburger kids pack', 'A flame-grilled hamburger made with 100% aussie beef.Kids portion side salad of lettuced & tomato, 600ml Mount franklin still water and randomly selected toy.', 1, 7.25, 0, 1223, 0, 0, 0, 1.3, 'kids');
INSERT INTO ItemReview VALUES(00000148, '', '', 1.3);
INSERT INTO ItemKeyword VALUES(00000148, 'burger');
INSERT INTO ItemKeyword VALUES(00000148, 'beef');
INSERT INTO ItemKeyword VALUES(00000148, 'portion');
INSERT INTO ItemKeyword VALUES(00000148, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000148, 'small');

INSERT INTO Item VALUES(00000007, 00000149, '6 nugget kids pack', 'Nuggets kids value meal with a small drink and your choice of a kids side salad or a small thick cut chips. includes a toy.', 1, 7.25, 0, 1070, 0, 0, 0, 3.1, 'kids');
INSERT INTO ItemReview VALUES(00000149, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000149, 'nugget');
INSERT INTO ItemKeyword VALUES(00000149, 'small');
INSERT INTO ItemKeyword VALUES(00000149, 'chips');
INSERT INTO ItemKeyword VALUES(00000149, 'salad');
INSERT INTO ItemKeyword VALUES(00000149, 'toy');

INSERT INTO Item VALUES(00000007, 00000150, 'Plant based whopper cheese', 'Features patty made from plants, flame-grilled to give the irresistible smoky, BBQ flavour just like our classic whopper. Loaded with cheese, crisp fresh lettuce, ripe tomatoes, onoin, pickles, mayo and tomato sauce on a toasted sesame seed bun.', 1, 12.60, 0, 3090, 0, 1, 0, 1.6, 'main');
INSERT INTO ItemReview VALUES(00000150, '', '', 1.6);
INSERT INTO ItemKeyword VALUES(00000150, 'plant');
INSERT INTO ItemKeyword VALUES(00000150, 'burger');
INSERT INTO ItemKeyword VALUES(00000150, 'healthy');
INSERT INTO ItemKeyword VALUES(00000150, 'cheese');
INSERT INTO ItemKeyword VALUES(00000150, 'bbq');

INSERT INTO Item VALUES(00000007, 00000151, 'Plant based whopper', 'Features patty made from plants, flame-grilled to give the irresistible smoky, BBQ flavour just like our classic whopper. Loaded with crisp fresh lettuce, ripe tomatoes, onoin, pickles, mayo and tomato sauce on a toasted sesame seed bun.', 1, 13.25, 0, 2790, 1, 1, 0, 2.2, 'main');
INSERT INTO ItemReview VALUES(00000151, '', '', 2.2);
INSERT INTO ItemKeyword VALUES(00000151, 'plant');
INSERT INTO ItemKeyword VALUES(00000151, 'grilled');
INSERT INTO ItemKeyword VALUES(00000151, 'healthy');
INSERT INTO ItemKeyword VALUES(00000151, 'barbeque');
INSERT INTO ItemKeyword VALUES(00000151, 'bbq');

INSERT INTO Item VALUES(00000007, 00000152, 'Burger bites mega feast', 'feast on 2 whopper cheeses, 2 cheeseburgers, 2 chickebn royales, a 20 burger bites pack, 4 small chips and 4 drinks.', 1, 39.95, 0, 29790, 0, 0, 0, 2.0, 'main');
INSERT INTO ItemReview VALUES(00000152, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000152, 'bite');
INSERT INTO ItemKeyword VALUES(00000152, 'burger');
INSERT INTO ItemKeyword VALUES(00000152, 'feast');
INSERT INTO ItemKeyword VALUES(00000152, 'share');
INSERT INTO ItemKeyword VALUES(00000152, 'family');

INSERT INTO Item VALUES(00000007, 00000153, 'Family bundle ', 'two 100% aussie beef flame-grilled whoppers, two cheeseburgers, ten crispy golden nuggets made with 100% chicken breast + two ketchup sauces, four large thick cut chips and four large soft drinks.', 1, 27.95, 0, 19860, 0, 0, 0, 1.7, 'main');
INSERT INTO ItemReview VALUES(00000153, '', '', 1.7);
INSERT INTO ItemKeyword VALUES(00000153, 'burger');
INSERT INTO ItemKeyword VALUES(00000153, 'combo');
INSERT INTO ItemKeyword VALUES(00000153, 'feast');
INSERT INTO ItemKeyword VALUES(00000153, 'share');
INSERT INTO ItemKeyword VALUES(00000153, 'family');

INSERT INTO Item VALUES(00000007, 00000154, 'Bacon deluxe hunger tamers', 'Includes one 100% aussie beef flame-grilled bacon deluxe burger, one 100% aussie beef, flame-grilled BBQ cheeseburger, one medium thick cut chips, three 100% chicken breast nuggets and a medium coke.', 1, 13.00, 0, 6628, 0, 0, 0, 1.9, 'main');
INSERT INTO ItemReview VALUES(00000154, '', '', 1.9);
INSERT INTO ItemKeyword VALUES(00000154, 'burger');
INSERT INTO ItemKeyword VALUES(00000154, 'bacon');
INSERT INTO ItemKeyword VALUES(00000154, 'beef');
INSERT INTO ItemKeyword VALUES(00000154, 'chips');
INSERT INTO ItemKeyword VALUES(00000154, 'nugget');

INSERT INTO Item VALUES(00000007, 00000155, 'Chicken royale super stunner', 'Includes our chicken royale burger with 100% crispy coated chicken layered with fresh lettuce and creamy mayo, small thick cut chips, small coke, peters drumstick mini ice cream and three 100% chicken breast nuggets.', 1, 12.15, 0, 4153, 0, 0, 0, 3.9, 'main');
INSERT INTO ItemReview VALUES(00000155, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000155, 'burger');
INSERT INTO ItemKeyword VALUES(00000155, 'royal');
INSERT INTO ItemKeyword VALUES(00000155, 'chicken');
INSERT INTO ItemKeyword VALUES(00000155, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000155, 'chips');

INSERT INTO Item VALUES(00000007, 00000156, 'Cheesburger super stunner', 'Includes our cheeseburger, small thick thick cut chips, small coke, peters drumstick mini and three 100% chicken breast nuggets.', 1, 11.55, 0, 5353, 0, 0, 0, 2.9, 'main');
INSERT INTO ItemReview VALUES(00000156, '', '', 0);
INSERT INTO ItemKeyword VALUES(00000156, 'burger');
INSERT INTO ItemKeyword VALUES(00000156, 'cheese');
INSERT INTO ItemKeyword VALUES(00000156, 'chips');
INSERT INTO ItemKeyword VALUES(00000156, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000156, 'bugget');

INSERT INTO Item VALUES(00000007, 00000157, 'Aussie whopper hunger tamers', 'Includes an aussie whopper, a BBQ cheeseburger, medium thick cut chips, three 100% chicken breast nuggets and a medium coke.', 1, 12.60, 0, 7158, 0, 0, 0, 2.5, 'main');
INSERT INTO ItemReview VALUES(00000157, '', '', 2.5);
INSERT INTO ItemKeyword VALUES(00000157, 'burger');
INSERT INTO ItemKeyword VALUES(00000157, 'cheese');
INSERT INTO ItemKeyword VALUES(00000157, 'chips');
INSERT INTO ItemKeyword VALUES(00000157, 'aus');
INSERT INTO ItemKeyword VALUES(00000157, 'nugget');

INSERT INTO Item VALUES(00000007, 00000158, 'Soft serve cone', 'A rich creamy vanilla soft serve in a crispy cone.', 1, 0.80, 0, 860, 0, 1, 1, 4.1, 'desert');
INSERT INTO ItemReview VALUES(00000158, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000158, 'cone');
INSERT INTO ItemKeyword VALUES(00000158, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000158, 'soft');
INSERT INTO ItemKeyword VALUES(00000158, 'vanilla');
INSERT INTO ItemKeyword VALUES(00000158, 'serve');

INSERT INTO Item VALUES(00000007, 00000159, 'Chocolate sundae', 'A rich and velvety vanilla soft server chocolate sundae topped with a wicked gooey chocolate fudge sauce.', 1, 1.95, 0, 1700, 0, 1, 1, 2.0, 'desert');
INSERT INTO ItemReview VALUES(00000159, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000159, 'chocolate');
INSERT INTO ItemKeyword VALUES(00000159, 'sundae');
INSERT INTO ItemKeyword VALUES(00000159, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000159, 'vanilla');
INSERT INTO ItemKeyword VALUES(00000159, 'fudge');



INSERT INTO Item VALUES(00000008, 00000160, 'Reds Box', 'Red burger box regular, reds burger, 1 piece fried chicken, small chips, regular mash & gravy, 375ml pepsi max.', 1, 14.25, 0, 4980, 0, 0, 0, 3.8, 'main');
INSERT INTO ItemReview VALUES(00000160, '', '', 3.8);
INSERT INTO ItemKeyword VALUES(00000160, 'box');
INSERT INTO ItemKeyword VALUES(00000160, 'burger');
INSERT INTO ItemKeyword VALUES(00000160, 'chicken');
INSERT INTO ItemKeyword VALUES(00000160, 'chips');
INSERT INTO ItemKeyword VALUES(00000160, 'gravy');

INSERT INTO Item VALUES(00000008, 00000161, 'Spicy Box', 'Spicy Box, spicy tender burger, 1 piece fried chicken, small chips, regular mash & gravy, 375ml pepsi max.', 1, 14.25, 0, 4280, 0, 0, 0, 4.3, 'main');
INSERT INTO ItemReview VALUES(00000161, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000161, 'box');
INSERT INTO ItemKeyword VALUES(00000161, 'tender');
INSERT INTO ItemKeyword VALUES(00000161, 'burger');
INSERT INTO ItemKeyword VALUES(00000161, 'chicken');
INSERT INTO ItemKeyword VALUES(00000161, 'fried');

INSERT INTO Item VALUES(00000008, 00000162, 'Rippa box', 'Rippa box, rippa roll, 1 piece fried chicken, small chips, regular mash & gravy, 375ml pepsi max.', 1, 15.25, 0, 4830, 0, 0, 0, 2.7, 'main');
INSERT INTO ItemReview VALUES(00000162, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000162, 'box');
INSERT INTO ItemKeyword VALUES(00000162, 'roll');
INSERT INTO ItemKeyword VALUES(00000162, 'fried');
INSERT INTO ItemKeyword VALUES(00000162, 'chicken');
INSERT INTO ItemKeyword VALUES(00000162, 'chips');

INSERT INTO Item VALUES(00000008, 00000163, 'Satisfryer', '3 pieces of fried chicken, regular mash & gravy, pineapple fritter, small chips, 375mml pepsi max.', 1, 14.75, 0, 5020, 0, 0, 0, 1.3, 'main');
INSERT INTO ItemReview VALUES(00000163, '', '', 1.3);
INSERT INTO ItemKeyword VALUES(00000163, 'box');
INSERT INTO ItemKeyword VALUES(00000163, 'fried');
INSERT INTO ItemKeyword VALUES(00000163, 'chicken');
INSERT INTO ItemKeyword VALUES(00000163, 'pineapple');
INSERT INTO ItemKeyword VALUES(00000163, 'chips');
INSERT INTO ItemKeyword VALUES(00000163, 'mash');

INSERT INTO Item VALUES(00000008, 00000164, 'trop box', 'Quarter chicken, any piece, small chips, 2 pineapple fritters, regular mash & gravy, 375ml pepsi max.', 1, 13.45, 0, 13.45, 0, 0, 0, 4.3, 'main');
INSERT INTO ItemReview VALUES(00000164, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000164, 'box');
INSERT INTO ItemKeyword VALUES(00000164, 'chicken');
INSERT INTO ItemKeyword VALUES(00000164, 'pineapple');
INSERT INTO ItemKeyword VALUES(00000164, 'mash');
INSERT INTO ItemKeyword VALUES(00000164, 'gravy');

INSERT INTO Item VALUES(00000008, 00000165, 'Big Feast', 'Whole chicken, whole 8 pieces fried chicken, large coleslaw, 2 large chips, large crispy potatoes, 1.25L pepsi max.', 1, 46.95, 0, 21351, 0, 0, 0, 1.7, 'main');
INSERT INTO ItemReview VALUES(00000165, '', '', 1.7);
INSERT INTO ItemKeyword VALUES(00000165, 'box');
INSERT INTO ItemKeyword VALUES(00000165, 'chicken');
INSERT INTO ItemKeyword VALUES(00000165, 'fried');
INSERT INTO ItemKeyword VALUES(00000165, 'share');
INSERT INTO ItemKeyword VALUES(00000165, 'family');

INSERT INTO Item VALUES(00000008, 00000166, 'Burger pack', '2 reds tender burger, 2 rippa rolls, 2 large chips, 12 cheesy nuggets and 2 tomato sauce packets.', 1, 32.95, 0, 17878, 0, 0, 0, 1.0, 'main');
INSERT INTO ItemReview VALUES(00000166, '', '', 1.0);
INSERT INTO ItemKeyword VALUES(00000166, 'pack');
INSERT INTO ItemKeyword VALUES(00000166, 'burger');
INSERT INTO ItemKeyword VALUES(00000166, 'tender');
INSERT INTO ItemKeyword VALUES(00000166, 'roll');
INSERT INTO ItemKeyword VALUES(00000166, 'nugget');

INSERT INTO Item VALUES(00000008, 00000167, 'Sweet & Sour crunch Combo', '2 pieces of our crunchy fried chicken coated in our new sweet sour sauce, a regular serve of our famous chips and 375ml drink.', 1, 12.25, 0, 4021, 0, 0, 0, 1.3, 'main');
INSERT INTO ItemReview VALUES(00000167, '', '', 1.3);
INSERT INTO ItemKeyword VALUES(00000167, 'sweet');
INSERT INTO ItemKeyword VALUES(00000167, 'sour');
INSERT INTO ItemKeyword VALUES(00000167, 'fried');
INSERT INTO ItemKeyword VALUES(00000167, 'chicken');
INSERT INTO ItemKeyword VALUES(00000167, 'chips');

INSERT INTO Item VALUES(00000008, 00000168, 'Sweet & Sour crunch big feast', '8 pieces of our crunchy fried chicken coated in our new sweet & sour sauce, whole chicken, large crunchy slaw, 2 large chips, large crunchy potatoes and 1.25L drink.', 1, 50.95, 0, 24142, 0, 0, 0, 0.9, 'specials');
INSERT INTO ItemReview VALUES(00000168, '', '', 0.9);
INSERT INTO ItemKeyword VALUES(00000168, 'sweet');
INSERT INTO ItemKeyword VALUES(00000168, 'sour');
INSERT INTO ItemKeyword VALUES(00000168, 'chicken');
INSERT INTO ItemKeyword VALUES(00000168, 'share');
INSERT INTO ItemKeyword VALUES(00000168, 'family');

INSERT INTO Item VALUES(00000008, 00000169, 'Hot Honey Fried pack', '8 pieces of hot honey fried chicken, 2 large chips, large mash & gravy, large coleslaw, 1.25L pepsi max.', 1, 35.95, 0, 17830, 0, 0, 0, 3.7, 'specials');
INSERT INTO ItemReview VALUES(00000169, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000169, 'honey');
INSERT INTO ItemKeyword VALUES(00000169, 'fried');
INSERT INTO ItemKeyword VALUES(00000169, 'chicken');
INSERT INTO ItemKeyword VALUES(00000169, 'chips');
INSERT INTO ItemKeyword VALUES(00000169, 'coleslaw');

INSERT INTO Item VALUES(00000008, 00000170, 'Tenders Box', '4 pieces chicken tenders, pineapple fritter, regular mash & gravy, small chips, tomato, 375ml pepsi max.', 1, 14.45, 0, 3159, 0, 0, 0, 0.3, 'main');
INSERT INTO ItemReview VALUES(00000170, '', '', 0.3);
INSERT INTO ItemKeyword VALUES(00000170, 'box');
INSERT INTO ItemKeyword VALUES(00000170, 'tender');
INSERT INTO ItemKeyword VALUES(00000170, 'chicken');
INSERT INTO ItemKeyword VALUES(00000170, 'pineapple');
INSERT INTO ItemKeyword VALUES(00000170, 'gravy');

INSERT INTO Item VALUES(00000008, 00000171, 'Whole Chicken', 'Whole roast chicken.', 1, 15.95, 0, 4711, 0, 0, 1, 1.5, 'main');
INSERT INTO ItemReview VALUES(00000171, '', '', 1.5);
INSERT INTO ItemKeyword VALUES(00000171, 'chicken');
INSERT INTO ItemKeyword VALUES(00000171, 'whole');
INSERT INTO ItemKeyword VALUES(00000171, 'roast');
INSERT INTO ItemKeyword VALUES(00000171, 'family');
INSERT INTO ItemKeyword VALUES(00000171, 'share');

INSERT INTO Item VALUES(00000008, 00000172, 'Fried Chicken', 'Crunchy fried chicken.', 1, 3.45, 0, 1050, 0, 0, 0, 1.3, 'main');
INSERT INTO ItemReview VALUES(00000172, '', '', 1.3);
INSERT INTO ItemKeyword VALUES(00000172, 'fried');
INSERT INTO ItemKeyword VALUES(00000172, 'chicken');
INSERT INTO ItemKeyword VALUES(00000172, 'cook');
INSERT INTO ItemKeyword VALUES(00000172, 'small');
INSERT INTO ItemKeyword VALUES(00000172, 'crunch');

INSERT INTO Item VALUES(00000008, 00000173, 'Honey fried chicken', 'Crunchy fried chicken coated in our signature hot honey sauce.', 1, 3.95, 0, 1380, 0, 0, 0, 3.3, 'main');
INSERT INTO ItemReview VALUES(00000173, '', '', 3.3);
INSERT INTO ItemKeyword VALUES(00000173, 'honey');
INSERT INTO ItemKeyword VALUES(00000173, 'fried');
INSERT INTO ItemKeyword VALUES(00000173, 'chicken');
INSERT INTO ItemKeyword VALUES(00000173, 'small');
INSERT INTO ItemKeyword VALUES(00000173, 'sauce');

INSERT INTO Item VALUES(00000008, 00000174, 'Chocolate mousse', null, 1, 4.45, 0, 1548, 0, 1, 0, 1.3, 'desert');
INSERT INTO ItemReview VALUES(00000174, '', '', 1.3);
INSERT INTO ItemKeyword VALUES(00000174, 'chocolate');
INSERT INTO ItemKeyword VALUES(00000174, 'mousse');
INSERT INTO ItemKeyword VALUES(00000174, 'sweet');
INSERT INTO ItemKeyword VALUES(00000174, 'double');
INSERT INTO ItemKeyword VALUES(00000174, 'sugar');

INSERT INTO Item VALUES(00000008, 00000175, 'Snack subs', 'chilli aioli snack sub.', 1, 3.95, 0, 1430, 0, 0, 0, 4.5, 'entree');
INSERT INTO ItemReview VALUES(00000175, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000175, 'snack');
INSERT INTO ItemKeyword VALUES(00000175, 'sub');
INSERT INTO ItemKeyword VALUES(00000175, 'chilli');
INSERT INTO ItemKeyword VALUES(00000175, 'aili');
INSERT INTO ItemKeyword VALUES(00000175, 'small');

INSERT INTO Item VALUES(00000008, 00000176, 'Chips', null, 1, 3.95, 0, 1230, 0, 1, 0, 0.4, 'entree');
INSERT INTO ItemReview VALUES(00000176, '', '', 0.4);
INSERT INTO ItemKeyword VALUES(00000176, 'chips');
INSERT INTO ItemKeyword VALUES(00000176, 'potato');
INSERT INTO ItemKeyword VALUES(00000176, 'small');
INSERT INTO ItemKeyword VALUES(00000176, 'share');
INSERT INTO ItemKeyword VALUES(00000176, 'cheap');

INSERT INTO Item VALUES(00000008, 00000177, 'Chicken nuggets', null, 1, 6.95, 0, 1490, 0, 0, 0, 4.9, 'entree');
INSERT INTO ItemReview VALUES(00000177, '', '', 4.9);
INSERT INTO ItemKeyword VALUES(00000177, 'chicken');
INSERT INTO ItemKeyword VALUES(00000177, 'nuggets');
INSERT INTO ItemKeyword VALUES(00000177, 'small');
INSERT INTO ItemKeyword VALUES(00000177, 'cheap');
INSERT INTO ItemKeyword VALUES(00000177, 'share');

INSERT INTO Item VALUES(00000008, 00000178, 'Flayva Wrap', '2 chicken tenders, lettuce, cheese, tomato & herb mayo sauce.', 1, 9.25, 0, 2570, 0, 0, 0, 3.1, 'main');
INSERT INTO ItemReview VALUES(00000178, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000178, 'wrap');
INSERT INTO ItemKeyword VALUES(00000178, 'twister');
INSERT INTO ItemKeyword VALUES(00000178, 'chicken');
INSERT INTO ItemKeyword VALUES(00000178, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000178, 'cheese');

INSERT INTO Item VALUES(00000008, 00000179, 'BBQ burger', '2 chicken tenders coated in smokey bbq sauce, bacon, cheese, fried onions & honey bbq sauce.', 1, 9.25, 0, 2980, 0, 0, 0, 0.5, 'main');
INSERT INTO ItemReview VALUES(00000179, '', '', 0.5);
INSERT INTO ItemKeyword VALUES(00000179, 'burger');
INSERT INTO ItemKeyword VALUES(00000179, 'bbq');
INSERT INTO ItemKeyword VALUES(00000179, 'barbeque');
INSERT INTO ItemKeyword VALUES(00000179, 'chicken');
INSERT INTO ItemKeyword VALUES(00000179, 'tender');



INSERT INTO Item VALUES(00000009, 00000180, 'Big mac', 'It starts with two 100% aussie beef patties. Then comes the delicious combination of crisp iceberg lettuce, melting signature cheese, onion and pickles, between a toasted sesame seed bun.', 1, 11.00, 0, 2770, 0, 0, 0, 4.4, 'main');
INSERT INTO ItemReview VALUES(00000180, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000180, 'burger');
INSERT INTO ItemKeyword VALUES(00000180, 'beef');
INSERT INTO ItemKeyword VALUES(00000180, 'onion');
INSERT INTO ItemKeyword VALUES(00000180, 'pickle');
INSERT INTO ItemKeyword VALUES(00000180, 'lettuce');

INSERT INTO Item VALUES(00000009, 00000181, 'Quater Punder', 'Its mighty simple, but it works. Take a whole quarter pound* of 100% aussie beef, then complete the tasty picture with cheese, onions, tangy mustard and pickles.', 1, 9.15, 0, 2250, 0, 0, 0, 2.3, 'main');
INSERT INTO ItemReview VALUES(00000181, '', '', 2.3);
INSERT INTO ItemKeyword VALUES(00000181, 'burger');
INSERT INTO ItemKeyword VALUES(00000181, 'beef');
INSERT INTO ItemKeyword VALUES(00000181, 'mustard');
INSERT INTO ItemKeyword VALUES(00000181, 'onion');
INSERT INTO ItemKeyword VALUES(00000181, 'cheese');

INSERT INTO Item VALUES(00000009, 00000182, 'Double Cheeseburger', 'You really will be seeing double, Two 100% aussie beef patties, melted cheese, tangy pickles, mustard and sweet ketchup.', 1, 7.45, 0, 1880, 0, 0, 0, 3.7, 'main');
INSERT INTO ItemReview VALUES(00000182, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000182, 'burger');
INSERT INTO ItemKeyword VALUES(00000182, 'beef');
INSERT INTO ItemKeyword VALUES(00000182, 'double');
INSERT INTO ItemKeyword VALUES(00000182, 'cheese');
INSERT INTO ItemKeyword VALUES(00000182, 'ketchup');

INSERT INTO Item VALUES(00000009, 00000183, 'Classic Angus', '100% aussie angus beef, classic cheese, tomato, onions and pickles with mustard and mayo.', 1, 1170, 0, 2990, 0, 0, 0, 2.3, 'main');
INSERT INTO ItemReview VALUES(00000183, '', '', 2.3);
INSERT INTO ItemKeyword VALUES(00000183, 'burger');
INSERT INTO ItemKeyword VALUES(00000183, 'beef');
INSERT INTO ItemKeyword VALUES(00000183, 'mustard');
INSERT INTO ItemKeyword VALUES(00000183, 'tomato');
INSERT INTO ItemKeyword VALUES(00000183, 'lettuce');

INSERT INTO Item VALUES(00000009, 00000184, 'McCrispy', '100% aussie chicken breast combined with fresh lettuce and a brand new signature sauce topped with a soft glazed bun.', 1, 10.05, 0, 2250, 0, 0, 0, 2.0, 'main');
INSERT INTO ItemReview VALUES(00000184, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000184, 'burger');
INSERT INTO ItemKeyword VALUES(00000184, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000184, 'sauce');
INSERT INTO ItemKeyword VALUES(00000184, 'bun');
INSERT INTO ItemKeyword VALUES(00000184, 'chicken');

INSERT INTO Item VALUES(00000009, 00000185, 'Aioli Chicken mcwrap', 'A classic combination of lettuce, tomato and garlic mayo to complement our juicy 100% aussie RSPCA approved chicken breast inside a delicious wholemeal tortilla.', 1, 11.75, 0, 1870, 0, 0, 0, 1.1, 'main');
INSERT INTO ItemReview VALUES(00000185, '', '', 1.1);
INSERT INTO ItemKeyword VALUES(00000185, 'wrap');
INSERT INTO ItemKeyword VALUES(00000185, 'twister');
INSERT INTO ItemKeyword VALUES(00000185, 'chicken');
INSERT INTO ItemKeyword VALUES(00000185, 'aioli');
INSERT INTO ItemKeyword VALUES(00000185, 'mayo');

INSERT INTO Item VALUES(00000009, 00000186, 'Chicken snack wrap', '100% aussie chicken with a seasoned tempura coating alongside fresh lettuce and creamy mayonnaise. All hand wrapped in a delicious wholemeal wrap, made with 100% aussie wheat.', 1, 5.20, 0, 908, 0, 0, 0, 2.1, 'main');
INSERT INTO ItemReview VALUES(00000186, '', '', 2.1);
INSERT INTO ItemKeyword VALUES(00000186, 'wrap');
INSERT INTO ItemKeyword VALUES(00000186, 'twister');
INSERT INTO ItemKeyword VALUES(00000186, 'chicken');
INSERT INTO ItemKeyword VALUES(00000186, 'mayo');
INSERT INTO ItemKeyword VALUES(00000186, 'lettuce');

INSERT INTO Item VALUES(00000009, 00000187, 'Garden salad', 'A mix of crisp lettuce, grape tomatoes and cucumber prepared to order.', 1, 6.00, 0, 83, 1, 1, 1, 0.8, 'main');
INSERT INTO ItemReview VALUES(00000187, '', '', 0.8);
INSERT INTO ItemKeyword VALUES(00000187, 'salad');
INSERT INTO ItemKeyword VALUES(00000187, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000187, 'healthy');
INSERT INTO ItemKeyword VALUES(00000187, 'tomato');
INSERT INTO ItemKeyword VALUES(00000187, 'cucumber');

INSERT INTO Item VALUES(00000009, 00000188, 'Classic chicken salad', 'A 100% aussie RSPCA approved chicken breast, lettuce, cucumber, grape tomatoes and pepitas with a delicious balsamic dressing.', 1, 13.35, 0, 1150, 0, 0, 1, 2.3, 'main');
INSERT INTO ItemReview VALUES(00000188, '', '', 2.3);
INSERT INTO ItemKeyword VALUES(00000188, 'salad');
INSERT INTO ItemKeyword VALUES(00000188, 'chicken');
INSERT INTO ItemKeyword VALUES(00000188, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000188, 'healthy');
INSERT INTO ItemKeyword VALUES(00000188, 'dressing');

INSERT INTO Item VALUES(00000009, 00000189, 'Hamburger happy meal', 'A simple 100% aussie beef, topped with onion, pickles, zesty ketchup and mustard, all on a soft, fluffy bun with chips and a toy.', 1, 8.70, 0, 2120, 0, 0, 0, 4.0, 'kids');
INSERT INTO ItemReview VALUES(00000189, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000189, 'burger');
INSERT INTO ItemKeyword VALUES(00000189, 'beef');
INSERT INTO ItemKeyword VALUES(00000189, 'onion');
INSERT INTO ItemKeyword VALUES(00000189, 'mustard');
INSERT INTO ItemKeyword VALUES(00000189, 'toy');

INSERT INTO Item VALUES(00000009, 00000190, 'Chicken mcnuggets happy meal', 'Made with tender juicy 100% aussie chicken breast in a crisp tempura coating, with no artificial colours, flavours or preservatives with chips and a toy.', 1, 12.05, 0, 1950, 0, 0, 0, 1.4, 'kids');
INSERT INTO ItemReview VALUES(00000190, '', '', 1.4);
INSERT INTO ItemKeyword VALUES(00000190, 'chicken');
INSERT INTO ItemKeyword VALUES(00000190, 'nugget');
INSERT INTO ItemKeyword VALUES(00000190, 'chips');
INSERT INTO ItemKeyword VALUES(00000190, 'small');
INSERT INTO ItemKeyword VALUES(00000190, 'toy');

INSERT INTO Item VALUES(00000009, 00000191, 'BBQ, bacon and cheese toastie', 'made with sourdough bread, melted aussie jack cheese, house grilled BBQ sauce and rasher bacon.', 1, 6.40, 0, 1790, 0, 1, 0, 1.8, 'entree');
INSERT INTO ItemReview VALUES(00000191, '', '', 1.8);
INSERT INTO ItemKeyword VALUES(00000191, 'toast');
INSERT INTO ItemKeyword VALUES(00000191, 'bacon');
INSERT INTO ItemKeyword VALUES(00000191, 'cheese');
INSERT INTO ItemKeyword VALUES(00000191, 'bbq');
INSERT INTO ItemKeyword VALUES(00000191, 'barbeque');

INSERT INTO Item VALUES(00000009, 00000192, 'Cheese & tomato toastie', 'Perfect toastie with melted cheese and fresh tomato.', 1, 5.30, 0, 1370, 0, 1, 0, 0.8, 'entree');
INSERT INTO ItemReview VALUES(00000192, '', '', 0.8);
INSERT INTO ItemKeyword VALUES(00000192, 'cheese');
INSERT INTO ItemKeyword VALUES(00000192, 'tomato');
INSERT INTO ItemKeyword VALUES(00000192, 'toast');
INSERT INTO ItemKeyword VALUES(00000192, 'snack');
INSERT INTO ItemKeyword VALUES(00000192, 'small');

INSERT INTO Item VALUES(00000009, 00000193, 'banana bread', 'A slice of toasted banana bread makes for a special treat any time of the day.', 1, 4.70, 0, 2270, 0, 1, 0, 2.5, 'entree');
INSERT INTO ItemReview VALUES(00000193, '', '', 2.5);
INSERT INTO ItemKeyword VALUES(00000193, 'bread');
INSERT INTO ItemKeyword VALUES(00000193, 'banana');
INSERT INTO ItemKeyword VALUES(00000193, 'toast');
INSERT INTO ItemKeyword VALUES(00000193, 'treat');
INSERT INTO ItemKeyword VALUES(00000193, 'small');

INSERT INTO Item VALUES(00000009, 00000194, 'Double choc muffin', null, 1, 5.25, 0, 3100, 0, 1, 0, 3.9, 'desert');
INSERT INTO ItemReview VALUES(00000194, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000194, 'chocolate');
INSERT INTO ItemKeyword VALUES(00000194, 'muffin');
INSERT INTO ItemKeyword VALUES(00000194, 'sweet');
INSERT INTO ItemKeyword VALUES(00000194, 'double');
INSERT INTO ItemKeyword VALUES(00000194, 'savoury');

INSERT INTO Item VALUES(00000009, 00000195, 'chocolate mcFlurry', 'Maccas signature creamy vanilla soft-serve, topped for flakes of cadbury dairy milk chocolate and an indulgent swirl of caramello sauce.', 1, 7.15, 0, 1380, 0, 1, 0, 3.3, 'desert');
INSERT INTO ItemReview VALUES(00000195, '', '', 3.3);
INSERT INTO ItemKeyword VALUES(00000195, 'chocolate');
INSERT INTO ItemKeyword VALUES(00000195, 'vanilla');
INSERT INTO ItemKeyword VALUES(00000195, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000195, 'soft serve');
INSERT INTO ItemKeyword VALUES(00000195, 'caramel');

INSERT INTO Item VALUES(00000009, 00000196, 'Soft serve cone', 'signature soft serve, whirled on a crispy cone topped with a delicious cadbury flake.', 1, 0.80, 0, 600, 0, 1, 0, 0.8, 'desert');
INSERT INTO ItemReview VALUES(00000196, '', '', 0.8);
INSERT INTO ItemKeyword VALUES(00000196, 'soft serve');
INSERT INTO ItemKeyword VALUES(00000196, 'cone');
INSERT INTO ItemKeyword VALUES(00000196, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000196, 'flake');
INSERT INTO ItemKeyword VALUES(00000196, 'chocolate');

INSERT INTO Item VALUES(00000009, 00000197, 'Hot apple Pie', 'crispy pastry, filled with aussie apples for that extra sweet taste and served piping hot.', 1, 3.90, 0, 1080, 0, 1, 0, 1.2, 'desert');
INSERT INTO ItemReview VALUES(00000197, '', '', 1.2);
INSERT INTO ItemKeyword VALUES(00000197, 'apple');
INSERT INTO ItemKeyword VALUES(00000197, 'pie');
INSERT INTO ItemKeyword VALUES(00000197, 'pastry');
INSERT INTO ItemKeyword VALUES(00000197, 'crisy');
INSERT INTO ItemKeyword VALUES(00000197, 'sweet');

INSERT INTO Item VALUES(00000009, 00000198, 'Maccas Bundle for 6', 'Any choice of 4 large burgers like the big mac or the quarter pounder and any choice of 2 small burgers like the cheeseburger or the hamburger. Also includes 4 medium fries, 6 medium soft drinks, 20 nuggets wioth 3 dipping sauces.', 1, 28.95, 0, 10856, 0, 0, 0, 2.3, 'main');
INSERT INTO ItemReview VALUES(00000198, '', '', 2.3);
INSERT INTO ItemKeyword VALUES(00000198, 'burger');
INSERT INTO ItemKeyword VALUES(00000198, 'nugget');
INSERT INTO ItemKeyword VALUES(00000198, 'chip');
INSERT INTO ItemKeyword VALUES(00000198, 'family');
INSERT INTO ItemKeyword VALUES(00000198, 'share');

INSERT INTO Item VALUES(00000009, 00000199, 'Maccas Bundle for 2', 'Any choice of 2 large burgers like the big mac or the quarter pounder and any choice of 2 small burgers like the cheeseburger or the hamburger. Also includes 2 medium fries and 2 medium soft drinks.', 1, 59.95, 0, 23958, 0, 0, 0, 2.2, 'main');
INSERT INTO ItemReview VALUES(00000199, '', '', 2.2);
INSERT INTO ItemKeyword VALUES(00000199, 'burger');
INSERT INTO ItemKeyword VALUES(00000199, 'chip');
INSERT INTO ItemKeyword VALUES(00000199, 'sauce');
INSERT INTO ItemKeyword VALUES(00000199, 'family');
INSERT INTO ItemKeyword VALUES(00000199, 'share');



INSERT INTO Item VALUES(00000010, 00000200, 'Mega Fillup', 'Zinger fillet: peice original recipe; wicked wing; piece original tender; 3 nuggets; regular chips; regular potato & gravy; regular pepsi max.', 1, 10.00, 0, 4799, 0, 0, 0, 3.6, 'specials');
INSERT INTO ItemReview VALUES(00000200, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(0000020, 'box');
INSERT INTO ItemKeyword VALUES(0000020, 'fried chicken');
INSERT INTO ItemKeyword VALUES(0000020, 'wing');
INSERT INTO ItemKeyword VALUES(0000020, 'tender');
INSERT INTO ItemKeyword VALUES(0000020, 'nugget');

INSERT INTO Item VALUES(00000010, 00000201, 'Bacon Lovers Burger combo', 'bacon lovers burger; piece original recipe; snack popcorn chicken; regular chips; regular potato & gravty; regular pepsi max.', 1, 11.45, 0, 6251, 0, 0, 0, 1.5, 'specials');
INSERT INTO ItemReview VALUES(00000201, '', '', 1.5);
INSERT INTO ItemKeyword VALUES(00000201, 'burger');
INSERT INTO ItemKeyword VALUES(00000201, 'chicken');
INSERT INTO ItemKeyword VALUES(00000201, 'Bacon');
INSERT INTO ItemKeyword VALUES(00000201, 'chicken');
INSERT INTO ItemKeyword VALUES(00000201, 'popcorn');

INSERT INTO Item VALUES(00000010, 00000202, '3 peice Box', '3 pieces original recipe; dinner roll; regular chips; regular potato & gravty; regular pepsi max.', 1, 14.45, 0, 4909, 0, 0, 0, 4.7, 'main');
INSERT INTO ItemReview VALUES(00000202, '', '', 4.7);
INSERT INTO ItemKeyword VALUES(00000202, 'box');
INSERT INTO ItemKeyword VALUES(00000202, 'fried');
INSERT INTO ItemKeyword VALUES(00000202, 'chicken');
INSERT INTO ItemKeyword VALUES(00000202, 'dinner roll');
INSERT INTO ItemKeyword VALUES(00000202, 'chips');

INSERT INTO Item VALUES(00000010, 00000203, 'Original tenders box', '3 original tenders; snack popcorn; regular chips; regular potato & gravty; regular pepsi max.', 1, 14.45, 0, 4425, 0, 0, 0, 1.6, 'main');
INSERT INTO ItemReview VALUES(00000203, '', '', 1.6);
INSERT INTO ItemKeyword VALUES(00000203, 'box');
INSERT INTO ItemKeyword VALUES(00000203, 'tender');
INSERT INTO ItemKeyword VALUES(00000203, 'popcorn chicken');
INSERT INTO ItemKeyword VALUES(00000203, 'chips');
INSERT INTO ItemKeyword VALUES(00000203, 'mash');

INSERT INTO Item VALUES(00000010, 00000204, 'Ultimate Box', 'Original recipe burger; piece of original recipe; regular chips; regular potato & gravty; regular pepsi max.', 1, 13.95, 0, 4079, 0, 0, 0, 4.3, 'main');
INSERT INTO ItemReview VALUES(00000204, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000204, 'box');
INSERT INTO ItemKeyword VALUES(00000204, 'burger');
INSERT INTO ItemKeyword VALUES(00000204, 'fried chicken');
INSERT INTO ItemKeyword VALUES(00000204, 'mash');
INSERT INTO ItemKeyword VALUES(00000204, 'gravy');

INSERT INTO Item VALUES(00000010, 00000205, 'Zinger Box', 'Zinger burger; 2 peices hot & crispy; regular chips; regular potato & gravty; regular pepsi max.', 1, 14.95, 0, 4362, 0, 0, 0, 4.6, 'main');
INSERT INTO ItemReview VALUES(00000205, '', '', 4.6);
INSERT INTO ItemKeyword VALUES(00000205, 'box');
INSERT INTO ItemKeyword VALUES(00000205, 'burger');
INSERT INTO ItemKeyword VALUES(00000205, 'spicy');
INSERT INTO ItemKeyword VALUES(00000205, 'fried chicken');
INSERT INTO ItemKeyword VALUES(00000205, 'crispy');

INSERT INTO Item VALUES(00000010, 00000206, 'Zinger crunch twister box', 'Zinger crunch twister; snack popcorn; regular chips; regular potato & gravty; regular pepsi max.', 1, 16.95, 0, 5020, 0, 0, 0, 2.0, 'main');
INSERT INTO ItemReview VALUES(00000206, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000206, 'box');
INSERT INTO ItemKeyword VALUES(00000206, 'twister');
INSERT INTO ItemKeyword VALUES(00000206, 'wrap');
INSERT INTO ItemKeyword VALUES(00000206, 'popcorn chicken');
INSERT INTO ItemKeyword VALUES(00000206, 'crunch');

INSERT INTO Item VALUES(00000010, 00000207, 'Zinger stacker burger combo', 'zinger stacker burger; regular chips; regular pepsi max.', 1, 14.95, 0, 4234, 0, 0, 0, 1.1, 'main');
INSERT INTO ItemReview VALUES(00000207, '', '', 1.1);
INSERT INTO ItemKeyword VALUES(00000207, 'meal');
INSERT INTO ItemKeyword VALUES(00000207, 'stack');
INSERT INTO ItemKeyword VALUES(00000207, 'burger');
INSERT INTO ItemKeyword VALUES(00000207, 'fried chicken');
INSERT INTO ItemKeyword VALUES(00000207, 'chips');

INSERT INTO Item VALUES(00000010, 00000208, '21 peices of Chicken', '21 peices of original recipe.', 1, 37.95, 0, 20654, 0, 0, 0, 1.4, 'main');
INSERT INTO ItemReview VALUES(00000208, '', '', 1.4);
INSERT INTO ItemKeyword VALUES(00000208, 'fried');
INSERT INTO ItemKeyword VALUES(00000208, 'chicken');
INSERT INTO ItemKeyword VALUES(00000208, 'original');
INSERT INTO ItemKeyword VALUES(00000208, 'share');
INSERT INTO ItemKeyword VALUES(00000208, 'family');

INSERT INTO Item VALUES(00000010, 00000209, 'Large Popcorn chicken', 'bite size peices of real breast fillet chicken tumnbled in our signature marinade and cooked in a crunchy coating.', 1, 9.95, 0, 3003, 0, 0, 0, 4.8, 'main');
INSERT INTO ItemReview VALUES(00000209, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000209, 'popcorn');
INSERT INTO ItemKeyword VALUES(00000209, 'chicken');
INSERT INTO ItemKeyword VALUES(00000209, 'share');
INSERT INTO ItemKeyword VALUES(00000209, 'family');
INSERT INTO ItemKeyword VALUES(00000209, 'bite');

INSERT INTO Item VALUES(00000010, 00000210, '10 wicked Wings', '10 wicked wings with a spicy marinade and crispy crunchy coating.', 1, 12.95, 0, 5039, 0, 0, 0, 4.4, 'main');
INSERT INTO ItemReview VALUES(00000210, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000210, 'wicked');
INSERT INTO ItemKeyword VALUES(00000210, 'wings');
INSERT INTO ItemKeyword VALUES(00000210, 'share');
INSERT INTO ItemKeyword VALUES(00000210, 'spicy');
INSERT INTO ItemKeyword VALUES(00000210, 'crispy');

INSERT INTO Item VALUES(00000010, 00000211, '10 nuggets', 'Nuggets made with 100% real aussie chicken breast meat, coated in the secret recipe of 11 herbs and spices, along wwith 2 dipping sauces.', 1, 9.95, 0, 2298, 0, 0, 0, 0.2, 'main');
INSERT INTO ItemReview VALUES(00000211, '', '', 0.2);
INSERT INTO ItemKeyword VALUES(00000211, 'nugget');
INSERT INTO ItemKeyword VALUES(00000211, 'chicken');
INSERT INTO ItemKeyword VALUES(00000211, 'dipping');
INSERT INTO ItemKeyword VALUES(00000211, 'sauce');
INSERT INTO ItemKeyword VALUES(00000211, 'share');

INSERT INTO Item VALUES(00000010, 00000212, 'supercharged slider', 'original tender, supercharged sauce and lettuce wrapped in a warm flatbread.', 1, 3.45, 0, 1067, 0, 0, 0, 1.5, 'kids');
INSERT INTO ItemReview VALUES(00000212, '', '', 1.5);
INSERT INTO ItemKeyword VALUES(00000212, 'slider');
INSERT INTO ItemKeyword VALUES(00000212, 'wrap');
INSERT INTO ItemKeyword VALUES(00000212, 'twister');
INSERT INTO ItemKeyword VALUES(00000212, 'tender');
INSERT INTO ItemKeyword VALUES(00000212, 'snack');

INSERT INTO Item VALUES(00000010, 00000213, 'Go bucket', 'Popcorn chicken and chip in a cup.', 1, 4.95, 0, 1740, 0, 0, 0, 1.2, 'kids');
INSERT INTO ItemReview VALUES(00000213, '', '', 1.2);
INSERT INTO ItemKeyword VALUES(00000213, 'bucket');
INSERT INTO ItemKeyword VALUES(00000213, 'snack');
INSERT INTO ItemKeyword VALUES(00000213, 'popcorn');
INSERT INTO ItemKeyword VALUES(00000213, 'chicken');
INSERT INTO ItemKeyword VALUES(00000213, 'chips');

INSERT INTO Item VALUES(00000010, 00000214, 'Giant feast', '15 pieces of original recipe; 18 nuggets; 3 dipping sauces; 3 large chips; large potato & gravy; large coleslaw; 1.25L pepsi max.', 1, 48.95, 0, 27754, 0, 0, 0, 1.9, 'main');
INSERT INTO ItemReview VALUES(00000214, '', '', 1.9);
INSERT INTO ItemKeyword VALUES(00000214, 'fried chicken');
INSERT INTO ItemKeyword VALUES(00000214, 'nugget');
INSERT INTO ItemKeyword VALUES(00000214, 'feast');
INSERT INTO ItemKeyword VALUES(00000214, 'family');
INSERT INTO ItemKeyword VALUES(00000214, 'share');

INSERT INTO Item VALUES(00000010, 00000215, 'Burger feast', '2 original rrecipe burgers and 2 zinger burgers; 6 nuggets; regular popcorn chicken; 2 large chips.', 1, 33.95, 0, 14417, 0, 0, 0, 1.4, 'main');
INSERT INTO ItemReview VALUES(00000215, '', '', 1.4);
INSERT INTO ItemKeyword VALUES(00000215, 'burger');
INSERT INTO ItemKeyword VALUES(00000215, 'fried');
INSERT INTO ItemKeyword VALUES(00000215, 'chicken');
INSERT INTO ItemKeyword VALUES(00000215, 'family');
INSERT INTO ItemKeyword VALUES(00000215, 'feast');

INSERT INTO Item VALUES(00000010, 00000216, 'Family feast', '10 peice original recipe; 2 large chips; large potato & gravy; large coleslaw; 1.25L pepsi max;', 1, 37.95, 0, 17566, 0, 0, 0, 1.3, 'main');
INSERT INTO ItemReview VALUES(00000216, '', '', 1.3);
INSERT INTO ItemKeyword VALUES(00000216, 'fried');
INSERT INTO ItemKeyword VALUES(00000216, 'chicken');
INSERT INTO ItemKeyword VALUES(00000216, 'family');
INSERT INTO ItemKeyword VALUES(00000216, 'feast');
INSERT INTO ItemKeyword VALUES(00000216, 'share');

INSERT INTO Item VALUES(00000010, 00000217, 'Crunchy Jalapeno Slaw', 'Packed with corn chips, jalapeno mayo and dressed slaw.', 1, 7.45, 0, 768, 0, 1, 1, 3.2, 'main');
INSERT INTO ItemReview VALUES(00000217, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000217, 'spicy');
INSERT INTO ItemKeyword VALUES(00000217, 'healthy');
INSERT INTO ItemKeyword VALUES(00000217, 'corn chips');
INSERT INTO ItemKeyword VALUES(00000217, 'jalapeno');
INSERT INTO ItemKeyword VALUES(00000217, 'slaw');

INSERT INTO Item VALUES(00000010, 00000218, 'Large Chips', null, 1, 5.25, 0, 2338, 0, 1, 0, 1.7, 'entree');
INSERT INTO ItemReview VALUES(00000218, '', '', 1.7);
INSERT INTO ItemKeyword VALUES(00000218, 'chips');
INSERT INTO ItemKeyword VALUES(00000218, 'poptato');
INSERT INTO ItemKeyword VALUES(00000218, 'small');
INSERT INTO ItemKeyword VALUES(00000218, 'starter');
INSERT INTO ItemKeyword VALUES(00000218, 'basic');

INSERT INTO Item VALUES(00000010, 00000219, 'Double chocolate Mousse', 'smooth double chocolate mousse desert.', 1, 3.25, 0, 1490, 0, 1, 0, 2.0, 'desert');
INSERT INTO ItemReview VALUES(00000219, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000219, 'sweet');
INSERT INTO ItemKeyword VALUES(00000219, 'double');
INSERT INTO ItemKeyword VALUES(00000219, 'chocolate');
INSERT INTO ItemKeyword VALUES(00000219, 'mousse');
INSERT INTO ItemKeyword VALUES(00000219, 'smooth');



INSERT INTO Item VALUES(00000011, 00000220, 'Vegetarian spring roll', 'Vermecelli noodles, carrots amd mushrooms served with sweet chilli sauce.', 1, 9.00, 0, null, 0, 1, 0, 3.6, 'entree');
INSERT INTO ItemReview VALUES(00000220, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000220, 'spring roll');
INSERT INTO ItemKeyword VALUES(00000220, 'noodles');
INSERT INTO ItemKeyword VALUES(00000220, 'carrots');
INSERT INTO ItemKeyword VALUES(00000220, 'mushrooms');
INSERT INTO ItemKeyword VALUES(00000220, 'chilli');

INSERT INTO Item VALUES(00000011, 00000221, 'Curry puff', 'Chicken, potatoes and peas in puff pastry with cucumber sauce.', 1, 9.00, 0, null, 0, 1, 0, 2.3, 'entree');
INSERT INTO ItemReview VALUES(00000221, '', '', 2.3);
INSERT INTO ItemKeyword VALUES(00000221, 'curry');
INSERT INTO ItemKeyword VALUES(00000221, 'potato');
INSERT INTO ItemKeyword VALUES(00000221, 'spicy');
INSERT INTO ItemKeyword VALUES(00000221, 'puff');
INSERT INTO ItemKeyword VALUES(00000221, 'pastry');

INSERT INTO Item VALUES(00000011, 00000222, 'Money bags', 'Special thai mixed prawns, pork, crab meat wrapped in pastry and deep fried served with sweet chilli sauce.', 1, 10.00, 0, null, 0, 0, 0, 2.8, 'entree');
INSERT INTO ItemReview VALUES(00000222, '', '', 2.8);
INSERT INTO ItemKeyword VALUES(00000222, 'bags');
INSERT INTO ItemKeyword VALUES(00000222, 'vrab');
INSERT INTO ItemKeyword VALUES(00000222, 'prawn');
INSERT INTO ItemKeyword VALUES(00000222, 'pork');
INSERT INTO ItemKeyword VALUES(00000222, 'sweet chilli');

INSERT INTO Item VALUES(00000011, 00000223, 'Chicken wings', 'Peek gai tod. Chicken wings marinated, seasoned deep fried and served with sweet chilli sauce.', 1, 10.00, 0, null, 0, 0, 0, 4.3, 'entree');
INSERT INTO ItemReview VALUES(00000223, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000223, 'chicken');
INSERT INTO ItemKeyword VALUES(00000223, 'wings');
INSERT INTO ItemKeyword VALUES(00000223, 'fried');
INSERT INTO ItemKeyword VALUES(00000223, 'Peek gai tod');
INSERT INTO ItemKeyword VALUES(00000223, 'sweet chilli');

INSERT INTO Item VALUES(00000011, 00000224, 'Yellow curry', 'Selected meat cooked in milk curry paste, coconut milk and potatoes.', 1, 18.90, 0, null, 0, 0, 0, 4.8, 'main');
INSERT INTO ItemReview VALUES(00000224, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000224, 'curry');
INSERT INTO ItemKeyword VALUES(00000224, 'milk');
INSERT INTO ItemKeyword VALUES(00000224, 'meat');
INSERT INTO ItemKeyword VALUES(00000224, 'coconut');
INSERT INTO ItemKeyword VALUES(00000224, 'mild');

INSERT INTO Item VALUES(00000011, 00000225, 'Red curry', 'Selected meat cooked in red curry paste, coconut milk, vegetables and bamboo shoots.', 1, 18.90, 0, null, 0, 0, 0, 3.4, 'main');
INSERT INTO ItemReview VALUES(00000225, '', '', 3.4);
INSERT INTO ItemKeyword VALUES(00000225, 'curry');
INSERT INTO ItemKeyword VALUES(00000225, 'milk');
INSERT INTO ItemKeyword VALUES(00000225, 'meat');
INSERT INTO ItemKeyword VALUES(00000225, 'bamboo');
INSERT INTO ItemKeyword VALUES(00000225, 'spicy');

INSERT INTO Item VALUES(00000011, 00000226, 'Sticky rice - north east', null, 1, 7.50, 0, null, 1, 1, 0, 3.9, 'main');
INSERT INTO ItemReview VALUES(00000226, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000226, 'rice');
INSERT INTO ItemKeyword VALUES(00000226, 'small');
INSERT INTO ItemKeyword VALUES(00000226, 'starter');
INSERT INTO ItemKeyword VALUES(00000226, 'sticky');
INSERT INTO ItemKeyword VALUES(00000226, 'healthy');

INSERT INTO Item VALUES(00000011, 00000227, 'Nam tok with beef', null, 1, 18.90, 0, null, 0, 0, 0, 3.0, 'main');
INSERT INTO ItemReview VALUES(00000227, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000227, 'nam tok');
INSERT INTO ItemKeyword VALUES(00000227, 'beef');
INSERT INTO ItemKeyword VALUES(00000227, 'grilled');
INSERT INTO ItemKeyword VALUES(00000227, 'marinated');
INSERT INTO ItemKeyword VALUES(00000227, 'spicy');

INSERT INTO Item VALUES(00000011, 00000228, 'Steamed vegetables satay sauce', null, 1, 18.90, 0, null, 0, 1, 0, 3.6, 'main');
INSERT INTO ItemReview VALUES(00000228, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000228, 'veg');
INSERT INTO ItemKeyword VALUES(00000228, 'steam');
INSERT INTO ItemKeyword VALUES(00000228, 'satay');
INSERT INTO ItemKeyword VALUES(00000228, 'healthy');
INSERT INTO ItemKeyword VALUES(00000228, 'organic');

INSERT INTO Item VALUES(00000011, 00000229, 'Pad thai mixed vegetables', null, 1, 18.90, 0, null, 0, 1, 0, 3.6, 'main');
INSERT INTO ItemReview VALUES(00000229, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000229, 'veg');
INSERT INTO ItemKeyword VALUES(00000229, 'Pad thai');
INSERT INTO ItemKeyword VALUES(00000229, 'zucchini');
INSERT INTO ItemKeyword VALUES(00000229, 'onion');
INSERT INTO ItemKeyword VALUES(00000229, 'spicy');

INSERT INTO Item VALUES(00000011, 00000230, 'Hot chips with fish fingers and sauce', null, 1, 15.90, 0, null, 0, 0, 0, 4.3, 'kids');
INSERT INTO ItemReview VALUES(00000230, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000230, 'chips');
INSERT INTO ItemKeyword VALUES(00000230, 'fish finger');
INSERT INTO ItemKeyword VALUES(00000230, 'hot');
INSERT INTO ItemKeyword VALUES(00000230, 'small');
INSERT INTO ItemKeyword VALUES(00000230, 'yum');

INSERT INTO Item VALUES(00000011, 00000231, 'Hot chips with chicken wings and sauce', null, 1, 12.90, 0, null, 0, 0, 0, 2.3, 'kids');
INSERT INTO ItemReview VALUES(00000231, '', '', 2.3);
INSERT INTO ItemKeyword VALUES(00000231, 'chips');
INSERT INTO ItemKeyword VALUES(00000231, 'chicken');
INSERT INTO ItemKeyword VALUES(00000231, 'wings');
INSERT INTO ItemKeyword VALUES(00000231, 'small');
INSERT INTO ItemKeyword VALUES(00000231, 'yum');

INSERT INTO Item VALUES(00000011, 00000232, 'Thai pad kee', 'Stir fried rice noodles with vegetables, chilli, garlic, egg, basil and bamboo.', 1, 18.90, 0, null, 0, 1, 0, 3.1, 'main');
INSERT INTO ItemReview VALUES(00000232, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000232, 'pad kee');
INSERT INTO ItemKeyword VALUES(00000232, 'rice');
INSERT INTO ItemKeyword VALUES(00000232, 'noodles');
INSERT INTO ItemKeyword VALUES(00000232, 'veg');
INSERT INTO ItemKeyword VALUES(00000232, 'chilli');

INSERT INTO Item VALUES(00000011, 00000233, 'Vegetable fried rice', 'Kawow pad pakc. Stir fried tom yum chilli paste with onions, shallots, kattir lime leaves galangal, lemongrass, tomatoes, chilli and coriander.', 1, 18.90, 0, null, 0, 1, 0, 2.7, 'main');
INSERT INTO ItemReview VALUES(00000233, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000233, 'veg');
INSERT INTO ItemKeyword VALUES(00000233, 'rice');
INSERT INTO ItemKeyword VALUES(00000233, 'fried');
INSERT INTO ItemKeyword VALUES(00000233, 'chilli');
INSERT INTO ItemKeyword VALUES(00000233, 'spicy');

INSERT INTO Item VALUES(00000011, 00000234, 'Pad thai noodles', 'Stir fried rice noodles with ground peanuts, bean sprouts and shallots.', 1, 18.90, 0, null, 0, 1, 0, 3.3, 'main');
INSERT INTO ItemReview VALUES(00000234, '', '', 3.3);
INSERT INTO ItemKeyword VALUES(00000234, 'Pad thai');
INSERT INTO ItemKeyword VALUES(00000234, 'noodles');
INSERT INTO ItemKeyword VALUES(00000234, 'peanutes');
INSERT INTO ItemKeyword VALUES(00000234, 'spicy');
INSERT INTO ItemKeyword VALUES(00000234, 'chilli');

INSERT INTO Item VALUES(00000011, 00000235, 'Thai hokkien noodles', 'Stir fried with carrots, shallots and cabbage.', 1, 18.90, 0, null, 0, 1, 0, 4.3, 'main');
INSERT INTO ItemReview VALUES(00000235, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000235, 'hokkien');
INSERT INTO ItemKeyword VALUES(00000235, 'noodles');
INSERT INTO ItemKeyword VALUES(00000235, 'carrots');
INSERT INTO ItemKeyword VALUES(00000235, 'shallots');
INSERT INTO ItemKeyword VALUES(00000235, 'cabbage');

INSERT INTO Item VALUES(00000011, 00000236, 'Thai larb', 'Minced with lemon juice, ground rice, chilli powder, onion, kaffir lime leaves, fresh coriander and chilli paste.', 1, 18.90, 0, null, 0, 1, 0, 2.9, 'main');
INSERT INTO ItemReview VALUES(00000236, '', '', 2.9);
INSERT INTO ItemKeyword VALUES(00000236, 'larb');
INSERT INTO ItemKeyword VALUES(00000236, 'lemon juice');
INSERT INTO ItemKeyword VALUES(00000236, 'chilli');
INSERT INTO ItemKeyword VALUES(00000236, 'kaffir');
INSERT INTO ItemKeyword VALUES(00000236, 'spicy');

INSERT INTO Item VALUES(00000011, 00000237, 'Thai beef salad', 'Yum nua. Sliced beef tossed with a fresh salad of coriander, mint leaves, thinly sliced onion, tomato, cucumber, chilli and lemon dressing.', 1, 18.90, 0, null, 0, 1, 0, 4.8, 'main');
INSERT INTO ItemReview VALUES(00000237, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000237, 'beef');
INSERT INTO ItemKeyword VALUES(00000237, 'salad');
INSERT INTO ItemKeyword VALUES(00000237, 'sliced');
INSERT INTO ItemKeyword VALUES(00000237, 'coriander');
INSERT INTO ItemKeyword VALUES(00000237, 'mint');

INSERT INTO Item VALUES(00000011, 00000238, 'Tom yum talay', 'Po tak. Tom yum combination seafood soup.', 1, 12.90, 0, null, 0, 0, 0, 3.7, 'main');
INSERT INTO ItemReview VALUES(00000238, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000238, 'Tom yum');
INSERT INTO ItemKeyword VALUES(00000238, 'talay');
INSERT INTO ItemKeyword VALUES(00000238, 'seafood');
INSERT INTO ItemKeyword VALUES(00000238, 'soup');
INSERT INTO ItemKeyword VALUES(00000238, 'Po tak');

INSERT INTO Item VALUES(00000011, 00000239, 'Tom yum goong', 'Thai prawn soup with chilli paste, mushrooms, coriander, lemongrass, kaffir lime leaves, galangai and chilli.', 1, 12.90, 0, null, 0, 0, 0, 3.5, 'main');
INSERT INTO ItemReview VALUES(00000239, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000239, 'Tom yum');
INSERT INTO ItemKeyword VALUES(00000239, 'goong');
INSERT INTO ItemKeyword VALUES(00000239, 'prawn');
INSERT INTO ItemKeyword VALUES(00000239, 'soup');
INSERT INTO ItemKeyword VALUES(00000239, 'chilli');



INSERT INTO Item VALUES(00000012, 00000240, 'Cheesy garlic bread', 'Garlic bread topped with beef rasher and cheese.', 1, 8.50, 0, null, 0, 1, 0, 2.3, 'entree');
INSERT INTO ItemReview VALUES(00000240, '', '', 2.3);
INSERT INTO ItemKeyword VALUES(00000240, 'cheese');
INSERT INTO ItemKeyword VALUES(00000240, 'garlic');
INSERT INTO ItemKeyword VALUES(00000240, 'bread');
INSERT INTO ItemKeyword VALUES(00000240, 'starter');
INSERT INTO ItemKeyword VALUES(00000240, 'rasher');

INSERT INTO Item VALUES(00000012, 00000241, 'Beef nachos', 'Topped with beef bolognaise, cheese, sour cream, avocado dip, jalapeno.', 1, 19.99, 0, null, 0, 0, 0, 2.9, 'entree');
INSERT INTO ItemReview VALUES(00000241, '', '', 2.9);
INSERT INTO ItemKeyword VALUES(00000241, 'beef');
INSERT INTO ItemKeyword VALUES(00000241, 'nachos');
INSERT INTO ItemKeyword VALUES(00000241, 'bolognaise');
INSERT INTO ItemKeyword VALUES(00000241, 'avocado');
INSERT INTO ItemKeyword VALUES(00000241, 'jalapeno');

INSERT INTO Item VALUES(00000012, 00000242, 'Chicken tenders', null, 1, 14.00, 0, null, 0, 0, 0, 4.5, 'entree');
INSERT INTO ItemReview VALUES(00000242, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000242, 'chicken');
INSERT INTO ItemKeyword VALUES(00000242, 'tender');
INSERT INTO ItemKeyword VALUES(00000242, 'starter');
INSERT INTO ItemKeyword VALUES(00000242, 'share');
INSERT INTO ItemKeyword VALUES(00000242, 'small');

INSERT INTO Item VALUES(00000012, 00000243, 'Buffalo wings', 'Original or hot and sour sauce.', 1, 14.00, 0, null, 0, 0, 0, 4.0, 'entree');
INSERT INTO ItemReview VALUES(00000243, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000243, 'buffalo');
INSERT INTO ItemKeyword VALUES(00000243, 'wings');
INSERT INTO ItemKeyword VALUES(00000243, 'sweet');
INSERT INTO ItemKeyword VALUES(00000243, 'sour');
INSERT INTO ItemKeyword VALUES(00000243, 'hot');

INSERT INTO Item VALUES(00000012, 00000244, 'Classic single cheese', 'Beef patty, pickles, cheese, house sauce and tomato or BBQ sauce.', 1, 14.99, 0, null, 0, 0, 0, 3.2, 'main');
INSERT INTO ItemReview VALUES(00000244, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000244, 'burger');
INSERT INTO ItemKeyword VALUES(00000244, 'beef');
INSERT INTO ItemKeyword VALUES(00000244, 'pickles');
INSERT INTO ItemKeyword VALUES(00000244, 'cheese');
INSERT INTO ItemKeyword VALUES(00000244, 'bbq sauce');

INSERT INTO Item VALUES(00000012, 00000245, 'Scotch fillet burger', 'Chargrilled scotch fillet, lettuce, tomato, onion, fried egg, BBQ sauce and aioli.', 1, 21.99, 0, null, 0, 0, 0, 4.9, 'main');
INSERT INTO ItemReview VALUES(00000245, '', '', 4.9);
INSERT INTO ItemKeyword VALUES(00000245, 'burger');
INSERT INTO ItemKeyword VALUES(00000245, 'scotch fillet');
INSERT INTO ItemKeyword VALUES(00000245, 'chargrilled');
INSERT INTO ItemKeyword VALUES(00000245, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000245, 'tomato');

INSERT INTO Item VALUES(00000012, 00000246, 'Pulled beef burger', 'Coleslaw, house special and BBQ.', 1, 16.90, 0, null, 0, 0, 0, 4.1, 'main');
INSERT INTO ItemReview VALUES(00000246, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000246, 'burger');
INSERT INTO ItemKeyword VALUES(00000246, 'pulled pork');
INSERT INTO ItemKeyword VALUES(00000246, 'pork');
INSERT INTO ItemKeyword VALUES(00000246, 'coleslaw');
INSERT INTO ItemKeyword VALUES(00000246, 'bbq');

INSERT INTO Item VALUES(00000012, 00000247, 'Chilli cheeseburger', 'With beef patty and chilli ground beef, cheese, onion, and green chilli jam.', 1, 18.99, 0, null, 0, 0, 0, 3.5, 'main');
INSERT INTO ItemReview VALUES(00000247, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000247, 'burger');
INSERT INTO ItemKeyword VALUES(00000247, 'chilli');
INSERT INTO ItemKeyword VALUES(00000247, 'cheese');
INSERT INTO ItemKeyword VALUES(00000247, 'ground beef');
INSERT INTO ItemKeyword VALUES(00000247, 'beef');

INSERT INTO Item VALUES(00000012, 00000248, 'Old classic smoked beef burger', 'Beef patty, smoked beef rasher, pineapple, caramelised onion, smoky BBQ sauce.', 1, 17.99, 0, null, 0, 0, 0, 4.5, 'main');
INSERT INTO ItemReview VALUES(00000248, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000248, 'burger');
INSERT INTO ItemKeyword VALUES(00000248, 'smoked');
INSERT INTO ItemKeyword VALUES(00000248, 'beef');
INSERT INTO ItemKeyword VALUES(00000248, 'pineapple');
INSERT INTO ItemKeyword VALUES(00000248, 'pinapple');

INSERT INTO Item VALUES(00000012, 00000249, 'Southern fried chicken burger', 'Lettuce, tomato, cheese, and chipotle mayo.', 1, 16.99, 0, null, 0, 0, 0, 2.8, 'main');
INSERT INTO ItemReview VALUES(00000249, '', '', 2.8);
INSERT INTO ItemKeyword VALUES(00000249, 'burger');
INSERT INTO ItemKeyword VALUES(00000249, 'chicken');
INSERT INTO ItemKeyword VALUES(00000249, 'southern fried');
INSERT INTO ItemKeyword VALUES(00000249, 'cheese');
INSERT INTO ItemKeyword VALUES(00000249, 'chipotle');

INSERT INTO Item VALUES(00000012, 00000250, 'Big fat burger', 'Angus beef double patty, chicken schnitzel, chorizo, beef rasher, lettuce, frid egg, double cheese, onion ring, aioli and house special sauce.', 1, 29.99, 0, null, 0, 0, 0, 3.6, 'main');
INSERT INTO ItemReview VALUES(00000250, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000250, 'burger');
INSERT INTO ItemKeyword VALUES(00000250, 'angus');
INSERT INTO ItemKeyword VALUES(00000250, 'beef');
INSERT INTO ItemKeyword VALUES(00000250, 'chicken');
INSERT INTO ItemKeyword VALUES(00000250, 'schnitzel');

INSERT INTO Item VALUES(00000012, 00000251, 'Veggie burger', 'Gourmet grilled veggie patty, lettuce, tomato, onion, corn chips, avocado, halloumi, cheese and peri-peri sauce.', 1, 14.99, 0, null, 0, 1, 0, 3.9, 'main');
INSERT INTO ItemReview VALUES(00000251, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000251, 'burger');
INSERT INTO ItemKeyword VALUES(00000251, 'veg');
INSERT INTO ItemKeyword VALUES(00000251, 'gourmet');
INSERT INTO ItemKeyword VALUES(00000251, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000251, 'corn chips');

INSERT INTO Item VALUES(00000012, 00000252, 'Chicken parmigiana', 'Homemade crispy chicken schnitzel topped with smoked beef rasher, red sauce and cheese mix with chips and salad.', 1, 28.00, 0, null, 0, 0, 0, 2.0, 'main');
INSERT INTO ItemReview VALUES(00000252, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000252, 'chicken');
INSERT INTO ItemKeyword VALUES(00000252, 'schnitzel');
INSERT INTO ItemKeyword VALUES(00000252, 'parmigiana');
INSERT INTO ItemKeyword VALUES(00000252, 'smoked');
INSERT INTO ItemKeyword VALUES(00000252, 'beef');

INSERT INTO Item VALUES(00000012, 00000253, 'Chicken mexicana', 'Topped with cheese, avocado, sour cream, roasted capsicum, with rice and chips.', 1, 28.00, 0, null, 0, 0, 0, 2.6, 'main');
INSERT INTO ItemReview VALUES(00000253, '', '', 2.6);
INSERT INTO ItemKeyword VALUES(00000253, 'chicken');
INSERT INTO ItemKeyword VALUES(00000253, 'schnitzel');
INSERT INTO ItemKeyword VALUES(00000253, 'mexicana');
INSERT INTO ItemKeyword VALUES(00000253, 'avocado');
INSERT INTO ItemKeyword VALUES(00000253, 'sour cream');

INSERT INTO Item VALUES(00000012, 00000254, 'Pulled beef box', 'With rice, coleslaw and chips.', 1, 28.00, 0, null, 0, 0, 0, 4.1, 'main');
INSERT INTO ItemReview VALUES(00000254, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000254, 'pulled beef');
INSERT INTO ItemKeyword VALUES(00000254, 'beef');
INSERT INTO ItemKeyword VALUES(00000254, 'box');
INSERT INTO ItemKeyword VALUES(00000254, 'rice');
INSERT INTO ItemKeyword VALUES(00000254, 'coleslaw');

INSERT INTO Item VALUES(00000012, 00000255, 'Slow roasted beef short ribs', 'with chips, salad and smoky homemade BBQ sauce.', 1, 36.00, 0, null, 0, 0, 0, 4.5, 'main');
INSERT INTO ItemReview VALUES(00000255, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000255, 'ribs');
INSERT INTO ItemKeyword VALUES(00000255, 'roast');
INSERT INTO ItemKeyword VALUES(00000255, 'beef');
INSERT INTO ItemKeyword VALUES(00000255, 'smoky');
INSERT INTO ItemKeyword VALUES(00000255, 'bbq sauce');

INSERT INTO Item VALUES(00000012, 00000256, 'BBQ meat platter', 'Chargrilled chicken skewers, BBQ lamb, beef short ribs, chips, salad, bread and tatziki sauce.', 1, 39.00, 0, null, 0, 0, 0, 3.0, 'main');
INSERT INTO ItemReview VALUES(00000256, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000256, 'meat');
INSERT INTO ItemKeyword VALUES(00000256, 'platter');
INSERT INTO ItemKeyword VALUES(00000256, 'lamb');
INSERT INTO ItemKeyword VALUES(00000256, 'ribs');
INSERT INTO ItemKeyword VALUES(00000256, 'chicken ');

INSERT INTO Item VALUES(00000012, 00000257, 'Greek salad', null, 1, 7.00, 0, null, 0, 1, 1, 2.5, 'main');
INSERT INTO ItemReview VALUES(00000257, '', '', 2.5);
INSERT INTO ItemKeyword VALUES(00000257, 'salad');
INSERT INTO ItemKeyword VALUES(00000257, 'healthy');
INSERT INTO ItemKeyword VALUES(00000257, 'small');
INSERT INTO ItemKeyword VALUES(00000257, 'greek');
INSERT INTO ItemKeyword VALUES(00000257, 'feta');

INSERT INTO Item VALUES(00000012, 00000258, 'Cinnamon churros', 'With dipping sauce.', 1, 12.00, 0, null, 0, 0, 0, 3.7, 'desert');
INSERT INTO ItemReview VALUES(00000258, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000258, 'cinnamon');
INSERT INTO ItemKeyword VALUES(00000258, 'churros');
INSERT INTO ItemKeyword VALUES(00000258, 'sweet');
INSERT INTO ItemKeyword VALUES(00000258, 'sauce');
INSERT INTO ItemKeyword VALUES(00000258, 'dippping');

INSERT INTO Item VALUES(00000012, 00000259, 'Waffles', 'With maple syrup and ice cream.', 1, 14.00, 0, null, 0, 1, 0, 4.2, 'desert');
INSERT INTO ItemReview VALUES(00000259, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000259, 'waffle');
INSERT INTO ItemKeyword VALUES(00000259, 'maple');
INSERT INTO ItemKeyword VALUES(00000259, 'syrup');
INSERT INTO ItemKeyword VALUES(00000259, 'sweet');
INSERT INTO ItemKeyword VALUES(00000259, 'ice cream');



INSERT INTO Item VALUES(00000013, 00000260, 'Beef kebab Roll', 'beef, lettuce, tomato, onion wrapped in a roll and choice of sauce.', 1, 14.00, 0, null, 0, 0, 0, 3.4, 'main');
INSERT INTO ItemReview VALUES(00000260, '', '', 3.4);
INSERT INTO ItemKeyword VALUES(00000260, 'Beef');
INSERT INTO ItemKeyword VALUES(00000260, 'Kebab');
INSERT INTO ItemKeyword VALUES(00000260, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000260, 'tomato');
INSERT INTO ItemKeyword VALUES(00000260, 'onion');

INSERT INTO Item VALUES(00000013, 00000261, 'Chicken shish plate', 'Marinated chicken on shish.', 1, 21.00, 0, null, 0, 0, 0, 3.0, 'main');
INSERT INTO ItemReview VALUES(00000261, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000261, 'chicken');
INSERT INTO ItemKeyword VALUES(00000261, 'shish');
INSERT INTO ItemKeyword VALUES(00000261, 'marinate');
INSERT INTO ItemKeyword VALUES(00000261, 'plate');
INSERT INTO ItemKeyword VALUES(00000261, 'herbs');

INSERT INTO Item VALUES(00000013, 00000262, 'Falafel roll', null, 1, 9.50, 0, null, 0, 0, 0, 2.7, 'main');
INSERT INTO ItemReview VALUES(00000262, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000262, 'falafel');
INSERT INTO ItemKeyword VALUES(00000262, 'roll');
INSERT INTO ItemKeyword VALUES(00000262, 'avocado');
INSERT INTO ItemKeyword VALUES(00000262, 'fava beans');
INSERT INTO ItemKeyword VALUES(00000262, 'chickpeas');

INSERT INTO Item VALUES(00000013, 00000263, 'Adana plate', 'Minced lamb shish, served with 4x types of souce, 3x types of salads, roasted tomato and roasted green chilli.', 1, 21.00, 0, null, 0, 0, 0, 2.2, 'main');
INSERT INTO ItemReview VALUES(00000263, '', '', 2.2);
INSERT INTO ItemKeyword VALUES(00000263, 'adana');
INSERT INTO ItemKeyword VALUES(00000263, 'mince');
INSERT INTO ItemKeyword VALUES(00000263, 'lamb');
INSERT INTO ItemKeyword VALUES(00000263, 'chilli');
INSERT INTO ItemKeyword VALUES(00000263, 'tomato');

INSERT INTO Item VALUES(00000013, 00000264, 'Beef snack pack', 'Shredded beef pieces on a bed of crispy golden fries.', 1, 17.00, 0, null, 0, 0, 0, 5.0, 'main');
INSERT INTO ItemReview VALUES(00000264, '', '', 5.0);
INSERT INTO ItemKeyword VALUES(00000264, 'beef');
INSERT INTO ItemKeyword VALUES(00000264, 'snack pack');
INSERT INTO ItemKeyword VALUES(00000264, 'shredded');
INSERT INTO ItemKeyword VALUES(00000264, 'chips');
INSERT INTO ItemKeyword VALUES(00000264, 'crispy');

INSERT INTO Item VALUES(00000013, 00000265, 'Chicken snack pack', 'Shredded chicken pieces on a bed of crispy golden chips.', 1, 17.50, 0, null, 0, 0, 0, 3.3, 'main');
INSERT INTO ItemReview VALUES(00000265, '', '', 3.3);
INSERT INTO ItemKeyword VALUES(00000265, 'chicken');
INSERT INTO ItemKeyword VALUES(00000265, 'snack pack');
INSERT INTO ItemKeyword VALUES(00000265, 'shredded');
INSERT INTO ItemKeyword VALUES(00000265, 'chips');
INSERT INTO ItemKeyword VALUES(00000265, 'crispy');

INSERT INTO Item VALUES(00000013, 00000266, 'King heart attack', 'Choice of snack pack, saucce, choice of burger and can of drink.', 1, 27.50, 0, null, 0, 0, 0, 4.8, 'main');
INSERT INTO ItemReview VALUES(00000266, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000266, 'snack pack');
INSERT INTO ItemKeyword VALUES(00000266, 'burger');
INSERT INTO ItemKeyword VALUES(00000266, 'beef');
INSERT INTO ItemKeyword VALUES(00000266, 'chicken');
INSERT INTO ItemKeyword VALUES(00000266, 'chips');

INSERT INTO Item VALUES(00000013, 00000267, 'Lamb snack pack', null, 1, 20.00, 0, null, 0, 0, 0, 2.0, 'main');
INSERT INTO ItemReview VALUES(00000267, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000267, 'lamb');
INSERT INTO ItemKeyword VALUES(00000267, 'snack pack');
INSERT INTO ItemKeyword VALUES(00000267, 'shredded');
INSERT INTO ItemKeyword VALUES(00000267, 'chips');
INSERT INTO ItemKeyword VALUES(00000267, 'crispy');

INSERT INTO Item VALUES(00000013, 00000268, 'Chicken pide', 'Chicken, onion, mushroom, capsicum and feta cheese. Mixed cheese and parsley.', 1, 24.00, 0, null, 0, 0, 0, 2.2, 'main');
INSERT INTO ItemReview VALUES(00000268, '', '', 2.2);
INSERT INTO ItemKeyword VALUES(00000268, 'pide');
INSERT INTO ItemKeyword VALUES(00000268, 'chicken');
INSERT INTO ItemKeyword VALUES(00000268, 'onion');
INSERT INTO ItemKeyword VALUES(00000268, 'mushroom');
INSERT INTO ItemKeyword VALUES(00000268, 'capsicum');

INSERT INTO Item VALUES(00000013, 00000269, 'King special pide', 'Two breast of chicken on rice with sweet chilli sauce and salad.', 1, 24.00, 0, null, 0, 0, 0, 4.3, 'main');
INSERT INTO ItemReview VALUES(00000269, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000269, 'pide');
INSERT INTO ItemKeyword VALUES(00000269, 'chicken');
INSERT INTO ItemKeyword VALUES(00000269, 'rice');
INSERT INTO ItemKeyword VALUES(00000269, 'sweet chilli');
INSERT INTO ItemKeyword VALUES(00000269, 'salad');

INSERT INTO Item VALUES(00000013, 00000270, 'Turkish salami pide', 'Turkish salami, onion, capsicum, olives and cheese.', 1, 24.00, 0, null, 0, 0, 0, 5.0, 'main');
INSERT INTO ItemReview VALUES(00000270, '', '', 5.0);
INSERT INTO ItemKeyword VALUES(00000270, 'pide');
INSERT INTO ItemKeyword VALUES(00000270, 'salami');
INSERT INTO ItemKeyword VALUES(00000270, 'onion');
INSERT INTO ItemKeyword VALUES(00000270, 'olives');
INSERT INTO ItemKeyword VALUES(00000270, 'cheese');

INSERT INTO Item VALUES(00000013, 00000271, 'Lahmacun', 'Mixed mince, garlic, onion, capsicum, tomato and parsley.', 1, 24.00, 0, null, 0, 0, 0, 2.2, 'main');
INSERT INTO ItemReview VALUES(00000271, '', '', 2.2);
INSERT INTO ItemKeyword VALUES(00000271, 'mince');
INSERT INTO ItemKeyword VALUES(00000271, 'garlic');
INSERT INTO ItemKeyword VALUES(00000271, 'onion');
INSERT INTO ItemKeyword VALUES(00000271, 'capsicum');
INSERT INTO ItemKeyword VALUES(00000271, 'tomato');

INSERT INTO Item VALUES(00000013, 00000272, 'Spinach and cheese gozleme', 'Pastry served with fresh lemon.', 1, 16.00, 0, null, 0, 0, 0, 3.2, 'main');
INSERT INTO ItemReview VALUES(00000272, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000272, 'spinach');
INSERT INTO ItemKeyword VALUES(00000272, 'cheese');
INSERT INTO ItemKeyword VALUES(00000272, 'gozleme');
INSERT INTO ItemKeyword VALUES(00000272, 'lemon');
INSERT INTO ItemKeyword VALUES(00000272, 'pastry');

INSERT INTO Item VALUES(00000013, 00000273, 'Chicken, mushroom and cheese gozleme', 'Pastry served with fresh lemon.', 1, 16.00, 0, null, 0, 0, 0, 2.2, 'main');
INSERT INTO ItemReview VALUES(00000273, '', '', 2.2);
INSERT INTO ItemKeyword VALUES(00000273, 'gozleme');
INSERT INTO ItemKeyword VALUES(00000273, 'chicken');
INSERT INTO ItemKeyword VALUES(00000273, 'mushroom');
INSERT INTO ItemKeyword VALUES(00000273, 'cheese');
INSERT INTO ItemKeyword VALUES(00000273, 'lemon');

INSERT INTO Item VALUES(00000013, 00000274, 'Beef, spinach and cheese gozleme', 'Pastry served with fresh lemon.', 1, 16.00, 0, null, 0, 0, 0, 2.6, 'main');
INSERT INTO ItemReview VALUES(00000274, '', '', 2.6);
INSERT INTO ItemKeyword VALUES(00000274, 'gozleme');
INSERT INTO ItemKeyword VALUES(00000274, 'beef');
INSERT INTO ItemKeyword VALUES(00000274, 'spinach');
INSERT INTO ItemKeyword VALUES(00000274, 'cheese');
INSERT INTO ItemKeyword VALUES(00000274, 'lemon');

INSERT INTO Item VALUES(00000013, 00000275, 'Chicken burger', 'Lettuce, cheese and sauce.', 1, 12.00, 0, null, 0, 0, 0, 4.6, 'main');
INSERT INTO ItemReview VALUES(00000275, '', '', 4.6);
INSERT INTO ItemKeyword VALUES(00000275, 'chicken');
INSERT INTO ItemKeyword VALUES(00000275, 'burger');
INSERT INTO ItemKeyword VALUES(00000275, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000275, 'cheese');
INSERT INTO ItemKeyword VALUES(00000275, 'sauce');

INSERT INTO Item VALUES(00000013, 00000276, 'Beef burger', 'Lettuce, beetroot, cooked onion and sauce.', 1, 12.00, 0, null, 0, 0, 0, 3.5, 'main');
INSERT INTO ItemReview VALUES(00000276, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000276, 'burger');
INSERT INTO ItemKeyword VALUES(00000276, 'beef');
INSERT INTO ItemKeyword VALUES(00000276, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000276, 'beetroot');
INSERT INTO ItemKeyword VALUES(00000276, 'onion');

INSERT INTO Item VALUES(00000013, 00000277, 'Veggie plate', '3 pieces falafel, 2 vine leaves, 2 dips and salad. Served with turkish bread.', 1, 20.00, 0, null, 0, 1, 0, 2.4, 'main');
INSERT INTO ItemReview VALUES(00000277, '', '', 2.4);
INSERT INTO ItemKeyword VALUES(00000277, 'veg');
INSERT INTO ItemKeyword VALUES(00000277, 'plate');
INSERT INTO ItemKeyword VALUES(00000277, 'falafel');
INSERT INTO ItemKeyword VALUES(00000277, 'vine');
INSERT INTO ItemKeyword VALUES(00000277, 'bread');

INSERT INTO Item VALUES(00000013, 00000278, 'Greek salad', null, 1, 12.00, 0, null, 0, 1, 1, 3.0, 'main');
INSERT INTO ItemReview VALUES(00000278, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000278, 'greek');
INSERT INTO ItemKeyword VALUES(00000278, 'salad');
INSERT INTO ItemKeyword VALUES(00000278, 'feta');
INSERT INTO ItemKeyword VALUES(00000278, 'healthy');
INSERT INTO ItemKeyword VALUES(00000278, 'small');

INSERT INTO Item VALUES(00000013, 00000279, 'Shepperd salad', null, 1, 12.00, 0, null, 1, 1, 1, 4.0, 'main');
INSERT INTO ItemReview VALUES(00000279, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000279, 'salad');
INSERT INTO ItemKeyword VALUES(00000279, 'healthy');
INSERT INTO ItemKeyword VALUES(00000279, 'tomato');
INSERT INTO ItemKeyword VALUES(00000279, 'cucumber');
INSERT INTO ItemKeyword VALUES(00000279, 'parsley');



INSERT INTO Item VALUES(00000014, 00000280, 'BBQ chicken', 'tender chicken, mushrooms, onion & mozzarella on rich BBQ sauce, finished with smoky BBQ drizzle.', 1, 18.95, 0, 7587, 0, 0, 0, 3.0, 'main');
INSERT INTO ItemReview VALUES(00000280, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000280, 'bbq');
INSERT INTO ItemKeyword VALUES(00000280, 'barbeque');
INSERT INTO ItemKeyword VALUES(00000280, 'chicken');
INSERT INTO ItemKeyword VALUES(00000280, 'pizza');
INSERT INTO ItemKeyword VALUES(00000280, 'mushroom');

INSERT INTO Item VALUES(00000014, 00000281, 'Surf & turf', 'Succulent prawns, tender steak, lightly seasoned beef, diced tomato, onion & mozzarella on a tomato base.', 1, 23.95, 0, 7388, 0, 0, 0, 3.4, 'main');
INSERT INTO ItemReview VALUES(00000281, '', '', 3.4);
INSERT INTO ItemKeyword VALUES(00000281, 'pizza');
INSERT INTO ItemKeyword VALUES(00000281, 'surf');
INSERT INTO ItemKeyword VALUES(00000281, 'turf');
INSERT INTO ItemKeyword VALUES(00000281, 'prawn');
INSERT INTO ItemKeyword VALUES(00000281, 'steak');

INSERT INTO Item VALUES(00000014, 00000282, 'Vegan deluxe', 'Juicy pineapple, mushrooms, green capsicum, diced tomato, onion & vegan mozzarella, finished with oregano & garlic.', 1, 18.95, 0, 6091, 1, 1, 0, 1.1, 'main');
INSERT INTO ItemReview VALUES(00000282, '', '', 1.1);
INSERT INTO ItemKeyword VALUES(00000282, 'pizza');
INSERT INTO ItemKeyword VALUES(00000282, 'pineapple');
INSERT INTO ItemKeyword VALUES(00000282, 'mushroom');
INSERT INTO ItemKeyword VALUES(00000282, 'capsicum');
INSERT INTO ItemKeyword VALUES(00000282, 'tomato');

INSERT INTO Item VALUES(00000014, 00000283, 'Super supreme', 'Smoky honey ham, pepperoni, italian sausage ], beef, mushrooms, kalamata olives, juicy pineapple, green capsicum, onion & mozzarella.', 1, 16.45, 0, 7990, 0, 0, 0, 4.4, 'main');
INSERT INTO ItemReview VALUES(00000283, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000283, 'pizza');
INSERT INTO ItemKeyword VALUES(00000283, 'supreme');
INSERT INTO ItemKeyword VALUES(00000283, 'ham');
INSERT INTO ItemKeyword VALUES(00000283, 'sausage');
INSERT INTO ItemKeyword VALUES(00000283, 'pepperoni');

INSERT INTO Item VALUES(00000014, 00000284, 'Mega Meat lovers', 'Steak, streaky bacon rashers, smoky honey ham, pepperoni, italian sausage, lightly seasoned beef & mozzarella on a BBQ base with a sweet baby rays hickory & brown sugar drizzle.', 1, 23.95, 0, 8702, 0, 0, 0, 3.1, 'main');
INSERT INTO ItemReview VALUES(00000284, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000284, 'pizza');
INSERT INTO ItemKeyword VALUES(00000284, 'meat');
INSERT INTO ItemKeyword VALUES(00000284, 'steak');
INSERT INTO ItemKeyword VALUES(00000284, 'bacon');
INSERT INTO ItemKeyword VALUES(00000284, 'ham');

INSERT INTO Item VALUES(00000014, 00000285, 'Hawaiian', 'Smoky honey ham, juicy pineapple & mozzarella.', 1, 16.45, 0, 7391, 0, 0, 0, 2.4, 'main');
INSERT INTO ItemReview VALUES(00000285, '', '', 2.4);
INSERT INTO ItemKeyword VALUES(00000285, 'pizza');
INSERT INTO ItemKeyword VALUES(00000285, 'hawaiian');
INSERT INTO ItemKeyword VALUES(00000285, 'ham');
INSERT INTO ItemKeyword VALUES(00000285, 'pineapple');
INSERT INTO ItemKeyword VALUES(00000285, 'mozzarella');

INSERT INTO Item VALUES(00000014, 00000286, 'Pepperoni lovers', 'Lots of pepperoni & mozzarella.', 1, 11.45, 0, 8153, 0, 0, 0, 4.9, 'main');
INSERT INTO ItemReview VALUES(00000286, '', '', 4.9);
INSERT INTO ItemKeyword VALUES(00000286, 'pizza');
INSERT INTO ItemKeyword VALUES(00000286, 'pepperoni');
INSERT INTO ItemKeyword VALUES(00000286, 'mozzarella');
INSERT INTO ItemKeyword VALUES(00000286, 'lovers');
INSERT INTO ItemKeyword VALUES(00000286, 'meat');

INSERT INTO Item VALUES(00000014, 00000287, 'Chicken supreme', 'tender chicken, mushrooms, juicy pineapple, roasted red capsicum, green capsicum, onion & mozzarella.', 1, 16.45, 0, 7468, 0, 0, 0, 2.0, 'main');
INSERT INTO ItemReview VALUES(00000287, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000287, 'pizza');
INSERT INTO ItemKeyword VALUES(00000287, 'supreme');
INSERT INTO ItemKeyword VALUES(00000287, 'chicken');
INSERT INTO ItemKeyword VALUES(00000287, 'mushroom');
INSERT INTO ItemKeyword VALUES(00000287, 'mozzarella');

INSERT INTO Item VALUES(00000014, 00000288, 'Cheese lovers', 'lots of mozzarella 7 tasty cheddar.', 1,11.45, 0, 9909, 0, 0, 0, 4.2, 'main');
INSERT INTO ItemReview VALUES(00000288, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000288, 'pizza');
INSERT INTO ItemKeyword VALUES(00000288, 'cheese');
INSERT INTO ItemKeyword VALUES(00000288, 'lovers');
INSERT INTO ItemKeyword VALUES(00000288, 'cheddar');
INSERT INTO ItemKeyword VALUES(00000288, 'mozzarella');

INSERT INTO Item VALUES(00000014, 00000289, 'Margherita', 'Diced tomato & mozzarella, finished with oregano & garlic.', 1, 11.45, 0, 6793, 0, 1, 0, 1.3, 'main');
INSERT INTO ItemReview VALUES(00000289, '', '', 1.3);
INSERT INTO ItemKeyword VALUES(00000289, 'pizza');
INSERT INTO ItemKeyword VALUES(00000289, 'margherita');
INSERT INTO ItemKeyword VALUES(00000289, 'tomato');
INSERT INTO ItemKeyword VALUES(00000289, 'mozzarella');
INSERT INTO ItemKeyword VALUES(00000289, 'oregano');

INSERT INTO Item VALUES(00000014, 00000290, 'Vegan cheese lovers', 'Lots of vegan mozzarella on a tomato base.', 1, 11.45, 0, 6203, 1, 1, 0, 2.5, 'main');
INSERT INTO ItemReview VALUES(00000290, '', '', 2.5);
INSERT INTO ItemKeyword VALUES(00000290, 'pizza');
INSERT INTO ItemKeyword VALUES(00000290, 'cheese');
INSERT INTO ItemKeyword VALUES(00000290, 'lovers');
INSERT INTO ItemKeyword VALUES(00000290, 'mozzarella');
INSERT INTO ItemKeyword VALUES(00000290, 'tomato base');

INSERT INTO Item VALUES(00000014, 00000291, 'Paneer hot & spicy', 'Diced paneer, mushrooms, pineapple, diced tomato, green capsicum, kalamata olives, onion, oregano, garlic & mozzarella finished with mango habenero drizzle.', 1, 19.95, 0, 8903, 0, 1, 0, 2.0, 'main');
INSERT INTO ItemReview VALUES(00000291, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000291, 'pizza');
INSERT INTO ItemKeyword VALUES(00000291, 'paneer');
INSERT INTO ItemKeyword VALUES(00000291, 'hot');
INSERT INTO ItemKeyword VALUES(00000291, 'spicy');
INSERT INTO ItemKeyword VALUES(00000291, 'diced tomato');

INSERT INTO Item VALUES(00000014, 00000292, 'Pepperoni lover melts', 'Lots of pepperoni & mozzarella loaded in our folded thin n crispy crust baked to melty perfection, served with a tomato sauce dip.', 1, 6.95, 0, 2990, 0, 0, 0, 3.4, 'entree');
INSERT INTO ItemReview VALUES(00000292, '', '', 3.4);
INSERT INTO ItemKeyword VALUES(00000292, 'pizza');
INSERT INTO ItemKeyword VALUES(00000292, 'melts');
INSERT INTO ItemKeyword VALUES(00000292, 'pepperoni');
INSERT INTO ItemKeyword VALUES(00000292, 'mozzarella');
INSERT INTO ItemKeyword VALUES(00000292, 'snack');

INSERT INTO Item VALUES(00000014, 00000293, 'BBQ meatlovers melts', 'pepperoni, beef, italian sausage, smoky honey ham, rich BBQ sauce & mozzarella loaded in our folded thin n crispy crust & baked to melty perfection, served with a creamy garlic dip.', 1, 6.95, 0, 2966, 0, 0, 0, 4.3, 'entree');
INSERT INTO ItemReview VALUES(00000293, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000293, 'pizza');
INSERT INTO ItemKeyword VALUES(00000293, 'bbq');
INSERT INTO ItemKeyword VALUES(00000293, 'meat');
INSERT INTO ItemKeyword VALUES(00000293, 'pepperoni');
INSERT INTO ItemKeyword VALUES(00000293, 'snack');

INSERT INTO Item VALUES(00000014, 00000294, 'Garlic bread', 'Hot oven baked traditional garlic bread.', 1, 4.95, 0, 2278, 1, 1, 0, 5.0, 'entree');
INSERT INTO ItemReview VALUES(00000294, '', '', 5.0);
INSERT INTO ItemKeyword VALUES(00000294, 'garlic');
INSERT INTO ItemKeyword VALUES(00000294, 'bread');
INSERT INTO ItemKeyword VALUES(00000294, 'starter');
INSERT INTO ItemKeyword VALUES(00000294, 'share');
INSERT INTO ItemKeyword VALUES(00000294, 'small');

INSERT INTO Item VALUES(00000014, 00000295, 'Pasta meal deal', 'Regular pasta, half garlic bread and a drink.', 1, 14.95, 0, 2290, 0, 0, 0, 1.6, 'kids');
INSERT INTO ItemReview VALUES(00000295, '', '', 1.6);
INSERT INTO ItemKeyword VALUES(00000295, 'pasta');
INSERT INTO ItemKeyword VALUES(00000295, 'small');
INSERT INTO ItemKeyword VALUES(00000295, 'garlic');
INSERT INTO ItemKeyword VALUES(00000295, 'bread');
INSERT INTO ItemKeyword VALUES(00000295, 'deal');

INSERT INTO Item VALUES(00000014, 00000296, 'Dunking good time share pack', '1 big cheese dunk with 3 sides.', 1, 24.95, 0, 1844, 0, 0, 0, 1.7, 'kids');
INSERT INTO ItemReview VALUES(00000296, '', '', 1.7);
INSERT INTO ItemKeyword VALUES(00000296, 'cheese');
INSERT INTO ItemKeyword VALUES(00000296, 'dunk');
INSERT INTO ItemKeyword VALUES(00000296, 'pack');
INSERT INTO ItemKeyword VALUES(00000296, 'share');
INSERT INTO ItemKeyword VALUES(00000296, 'deal');

INSERT INTO Item VALUES(00000014, 00000297, 'Cookie: made with nutella', 'A giant vanilla cookie, with a delectable drizzle of nutella on top. Baked and cut into 8 slices and served warm.', 1, 10.95, 0, 6952, 0, 1, 0, 4.7, 'desert');
INSERT INTO ItemReview VALUES(00000297, '', '', 4.7);
INSERT INTO ItemKeyword VALUES(00000297, 'cookie');
INSERT INTO ItemKeyword VALUES(00000297, 'nutella');
INSERT INTO ItemKeyword VALUES(00000297, 'sweet');
INSERT INTO ItemKeyword VALUES(00000297, 'vanilla');
INSERT INTO ItemKeyword VALUES(00000297, 'bake');

INSERT INTO Item VALUES(00000014, 00000298, 'Hersheys brownie', 'Triple chocolate brownie made with hersheys cocoa special dark chocolate & semi-sweet chocolate chips. Cut into 9 slices and served warm.', 1, 10.95, 0, 9270, 0, 1, 0, 1.2, 'desert');
INSERT INTO ItemReview VALUES(00000298, '', '', 1.2);
INSERT INTO ItemKeyword VALUES(00000298, 'hersheys');
INSERT INTO ItemKeyword VALUES(00000298, 'brownie');
INSERT INTO ItemKeyword VALUES(00000298, 'chocolate');
INSERT INTO ItemKeyword VALUES(00000298, 'triple');
INSERT INTO ItemKeyword VALUES(00000298, 'dark');

INSERT INTO Item VALUES(00000014, 00000299, 'Vanilla bean ice cream', 'Vanilla bean seeds infused in our classic vanilla ice cream. Double the vanilla, double the flavour.', 1, 9.95, 0, 3178, 0, 1, 0, 3.2, 'desert');
INSERT INTO ItemReview VALUES(00000299, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000299, 'vanilla');
INSERT INTO ItemKeyword VALUES(00000299, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000299, 'double');
INSERT INTO ItemKeyword VALUES(00000299, 'bean seeds');
INSERT INTO ItemKeyword VALUES(00000299, 'sweet');



INSERT INTO Item VALUES(00000015, 00000300, 'Plain omlette', null, 1, 12.80, 0, null, 0, 0, 0, 2.2, 'main');
INSERT INTO ItemReview VALUES(00000300, '', '', 2.2);
INSERT INTO ItemKeyword VALUES(00000300, 'omlette');
INSERT INTO ItemKeyword VALUES(00000300, 'plain');
INSERT INTO ItemKeyword VALUES(00000300, 'egg');
INSERT INTO ItemKeyword VALUES(00000300, 'cheese');
INSERT INTO ItemKeyword VALUES(00000300, 'coriander');

INSERT INTO Item VALUES(00000015, 00000301, 'Chicken omlette', null, 1, 14.80, 0, null, 0, 0, 0, 1.5, 'main');
INSERT INTO ItemReview VALUES(00000301, '', '', 1.5);
INSERT INTO ItemKeyword VALUES(00000301, 'chicken');
INSERT INTO ItemKeyword VALUES(00000301, 'omlette');
INSERT INTO ItemKeyword VALUES(00000301, 'egg');
INSERT INTO ItemKeyword VALUES(00000301, 'cheese');
INSERT INTO ItemKeyword VALUES(00000301, 'mushrrom');

INSERT INTO Item VALUES(00000015, 00000302, 'Ham omlette', null, 1, 14.80, 0, null, 0, 0, 0, 0.2, 'main');
INSERT INTO ItemReview VALUES(00000302, '', '', 0.2);
INSERT INTO ItemKeyword VALUES(00000302, 'ham');
INSERT INTO ItemKeyword VALUES(00000302, 'omlette');
INSERT INTO ItemKeyword VALUES(00000302, 'egg');
INSERT INTO ItemKeyword VALUES(00000302, 'cheese');
INSERT INTO ItemKeyword VALUES(00000302, 'bacon');

INSERT INTO Item VALUES(00000015, 00000303, 'Mushroom omlette', null, 1, 14.80, 0, null, 0, 0, 0, 1.6, 'main');
INSERT INTO ItemReview VALUES(00000303, '', '', 1.6);
INSERT INTO ItemKeyword VALUES(00000303, 'mushroom');
INSERT INTO ItemKeyword VALUES(00000303, 'omlette');
INSERT INTO ItemKeyword VALUES(00000303, 'egg');
INSERT INTO ItemKeyword VALUES(00000303, 'cheese');
INSERT INTO ItemKeyword VALUES(00000303, 'lettuce');

INSERT INTO Item VALUES(00000015, 00000304, 'Crab meat omlette', null, 1, 18.80, 0, null, 0, 0, 0, 1.9, 'main');
INSERT INTO ItemReview VALUES(00000304, '', '', 1.9);
INSERT INTO ItemKeyword VALUES(00000304, 'Crab');
INSERT INTO ItemKeyword VALUES(00000304, 'omlette');
INSERT INTO ItemKeyword VALUES(00000304, 'egg');
INSERT INTO ItemKeyword VALUES(00000304, 'cheese');
INSERT INTO ItemKeyword VALUES(00000304, 'milk');

INSERT INTO Item VALUES(00000015, 00000305, 'Chinease soft noodles', null, 1, 11.80, 0, null, 0, 0, 0, 2.2, 'main');
INSERT INTO ItemReview VALUES(00000305, '', '', 2.2);
INSERT INTO ItemKeyword VALUES(00000305, 'noodles');
INSERT INTO ItemKeyword VALUES(00000305, 'soft');
INSERT INTO ItemKeyword VALUES(00000305, 'healthy');
INSERT INTO ItemKeyword VALUES(00000305, 'bean');
INSERT INTO ItemKeyword VALUES(00000305, 'capsicum');

INSERT INTO Item VALUES(00000015, 00000306, 'Beef chow mein', null, 1, 14.80, 0, null, 0, 0, 0, 1.4, 'main');
INSERT INTO ItemReview VALUES(00000306, '', '', 1.4);
INSERT INTO ItemKeyword VALUES(00000306, 'beef');
INSERT INTO ItemKeyword VALUES(00000306, 'chow mein');
INSERT INTO ItemKeyword VALUES(00000306, 'ground');
INSERT INTO ItemKeyword VALUES(00000306, 'stir');
INSERT INTO ItemKeyword VALUES(00000306, 'fried');

INSERT INTO Item VALUES(00000015, 00000307, 'Singapore noodles', null, 1, 14.80, 0, null, 0, 0, 0, 0.8, 'main');
INSERT INTO ItemReview VALUES(00000307, '', '', 0.8);
INSERT INTO ItemKeyword VALUES(00000307, 'singapore');
INSERT INTO ItemKeyword VALUES(00000307, 'noodles');
INSERT INTO ItemKeyword VALUES(00000307, 'prawn');
INSERT INTO ItemKeyword VALUES(00000307, 'chilli');
INSERT INTO ItemKeyword VALUES(00000307, 'capsicum');

INSERT INTO Item VALUES(00000015, 00000308, 'Hokin chow mein', null, 1, 14.80, 0, null, 0, 0, 0, 2.4, 'main');
INSERT INTO ItemReview VALUES(00000308, '', '', 2.4);
INSERT INTO ItemKeyword VALUES(00000308, 'hokin');
INSERT INTO ItemKeyword VALUES(00000308, 'chow mein');
INSERT INTO ItemKeyword VALUES(00000308, 'chicken');
INSERT INTO ItemKeyword VALUES(00000308, 'bite');
INSERT INTO ItemKeyword VALUES(00000308, 'veg');

INSERT INTO Item VALUES(00000015, 00000309, 'King prawn noodles', null, 1, 20.80, 0, null, 0, 0, 0, 1.1, 'main');
INSERT INTO ItemReview VALUES(00000309, '', '', 1.1);
INSERT INTO ItemKeyword VALUES(00000309, 'prawn');
INSERT INTO ItemKeyword VALUES(00000309, 'king');
INSERT INTO ItemKeyword VALUES(00000309, 'noodles');
INSERT INTO ItemKeyword VALUES(00000309, 'broccoli');
INSERT INTO ItemKeyword VALUES(00000309, 'chilli');

INSERT INTO Item VALUES(00000015, 00000310, 'Crispy noodles', null, 1, 3.00, 0, null, 0, 1, 0, 2.4, 'entree');
INSERT INTO ItemReview VALUES(00000310, '', '', 2.4);
INSERT INTO ItemKeyword VALUES(00000310, 'crispy');
INSERT INTO ItemKeyword VALUES(00000310, 'noodles');
INSERT INTO ItemKeyword VALUES(00000310, 'rice');
INSERT INTO ItemKeyword VALUES(00000310, 'brown');
INSERT INTO ItemKeyword VALUES(00000310, 'chilli');

INSERT INTO Item VALUES(00000015, 00000311, 'Vegetable fried rice', null, 1, 8.80, 0, null, 0, 1, 0, 3.9, 'entree');
INSERT INTO ItemReview VALUES(00000311, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000311, 'veg');
INSERT INTO ItemKeyword VALUES(00000311, 'rice');
INSERT INTO ItemKeyword VALUES(00000311, 'fried');
INSERT INTO ItemKeyword VALUES(00000311, 'chilli');
INSERT INTO ItemKeyword VALUES(00000311, 'mild');

INSERT INTO Item VALUES(00000015, 00000312, 'Plain rice', null, 1, 5.80, 0, null, 1, 1, 1, 2.7, 'entree');
INSERT INTO ItemReview VALUES(00000312, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000312, 'plain');
INSERT INTO ItemKeyword VALUES(00000312, 'rice');
INSERT INTO ItemKeyword VALUES(00000312, 'starter');
INSERT INTO ItemKeyword VALUES(00000312, 'small');
INSERT INTO ItemKeyword VALUES(00000312, 'stick');

INSERT INTO Item VALUES(00000015, 00000313, 'Fried rice', null, 1, 8.80, 0, null, 1, 1, 1, 2.0, 'entree');
INSERT INTO ItemReview VALUES(00000313, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000313, 'fried');
INSERT INTO ItemKeyword VALUES(00000313, 'rice');
INSERT INTO ItemKeyword VALUES(00000313, 'small');
INSERT INTO ItemKeyword VALUES(00000313, 'share');
INSERT INTO ItemKeyword VALUES(00000313, 'starter');

INSERT INTO Item VALUES(00000015, 00000314, 'Chicken fried rice', null, 1, 9.80, 0, null, 0, 0, 0, 1.1, 'main');
INSERT INTO ItemReview VALUES(00000314, '', '', 1.1);
INSERT INTO ItemKeyword VALUES(00000314, 'chicken');
INSERT INTO ItemKeyword VALUES(00000314, 'fried');
INSERT INTO ItemKeyword VALUES(00000314, 'rice');
INSERT INTO ItemKeyword VALUES(00000314, 'bacon');
INSERT INTO ItemKeyword VALUES(00000314, 'egg');

INSERT INTO Item VALUES(00000015, 00000315, 'Seafood fried rice', null, 1, 16.80, 0, null, 0, 0, 0, 0.6, 'main');
INSERT INTO ItemReview VALUES(00000315, '', '', 0.6);
INSERT INTO ItemKeyword VALUES(00000315, 'seafood');
INSERT INTO ItemKeyword VALUES(00000315, 'fried');
INSERT INTO ItemKeyword VALUES(00000315, 'rice');
INSERT INTO ItemKeyword VALUES(00000315, 'prawn');
INSERT INTO ItemKeyword VALUES(00000315, 'tiger');

INSERT INTO Item VALUES(00000015, 00000316, 'Mixed vegetables', null, 1, 11.80, 0, null, 0, 0, 0, 0.2, 'main');
INSERT INTO ItemReview VALUES(00000316, '', '', 0.2);
INSERT INTO ItemKeyword VALUES(00000316, 'veg');
INSERT INTO ItemKeyword VALUES(00000316, 'healthy');
INSERT INTO ItemKeyword VALUES(00000316, 'corn');
INSERT INTO ItemKeyword VALUES(00000316, 'snow pea');
INSERT INTO ItemKeyword VALUES(00000316, 'carrot');

INSERT INTO Item VALUES(00000015, 00000317, 'Chinese vegetables', null, 1, 13.80, 0, null, 0, 0, 0, 0.6, 'main');
INSERT INTO ItemReview VALUES(00000317, '', '', 0.6);
INSERT INTO ItemKeyword VALUES(00000317, 'veg');
INSERT INTO ItemKeyword VALUES(00000317, 'healthy');
INSERT INTO ItemKeyword VALUES(00000317, 'corn');
INSERT INTO ItemKeyword VALUES(00000317, 'snow pea');
INSERT INTO ItemKeyword VALUES(00000317, 'carrot');

INSERT INTO Item VALUES(00000015, 00000318, 'Tofu with vegetables', null, 1, 14.80, 0, null, 0, 0, 0, 1.0, 'main');
INSERT INTO ItemReview VALUES(00000318, '', '', 1.0);
INSERT INTO ItemKeyword VALUES(00000318, 'tofu');
INSERT INTO ItemKeyword VALUES(00000318, 'veg');
INSERT INTO ItemKeyword VALUES(00000318, 'soy');
INSERT INTO ItemKeyword VALUES(00000318, 'chili');
INSERT INTO ItemKeyword VALUES(00000318, 'broccoli');

INSERT INTO Item VALUES(00000015, 00000319, 'Salt & pepper tofu', null, 1, 15.80, 0, null, 0, 0, 0, 0.6, 'main');
INSERT INTO ItemReview VALUES(00000319, '', '', 0.6);
INSERT INTO ItemKeyword VALUES(00000319, 'salt');
INSERT INTO ItemKeyword VALUES(00000319, 'pepper');
INSERT INTO ItemKeyword VALUES(00000319, 'tofu');
INSERT INTO ItemKeyword VALUES(00000319, 'soy');
INSERT INTO ItemKeyword VALUES(00000319, 'broccoli');



INSERT INTO Item VALUES(00000016, 00000320, 'Chicken roll', 'Crispy large spring roll stuffed with chicken and herbs.', 1, 7.00, 0, null, 0, 0, 0, 4.4, 'entree');
INSERT INTO ItemReview VALUES(00000320, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000320, 'roll');
INSERT INTO ItemKeyword VALUES(00000320, 'chicken');
INSERT INTO ItemKeyword VALUES(00000320, 'spring');
INSERT INTO ItemKeyword VALUES(00000320, 'herb');
INSERT INTO ItemKeyword VALUES(00000320, 'starter');

INSERT INTO Item VALUES(00000016, 00000321, 'Moglai parata', 'parata deep fried stuffed with egg, onion, coriander, fresh herbs & spices.', 1, 9.00, 0, null, 0, 0, 0, 2.7, 'entree');
INSERT INTO ItemReview VALUES(00000321, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000321, 'moglai');
INSERT INTO ItemKeyword VALUES(00000321, 'parata');
INSERT INTO ItemKeyword VALUES(00000321, 'egg');
INSERT INTO ItemKeyword VALUES(00000321, 'onion');
INSERT INTO ItemKeyword VALUES(00000321, 'onion');

INSERT INTO Item VALUES(00000016, 00000322, 'Halim', 'Lentil and meat soup, Mix lentil brewed in high flame and cooked with dived goat meat and chef special spice mix. Popular with naan bread.', 1, 15.00, 0, null, 0, 0, 0, 3.2, 'entree');
INSERT INTO ItemReview VALUES(00000322, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000322, 'lentil');
INSERT INTO ItemKeyword VALUES(00000322, 'meat');
INSERT INTO ItemKeyword VALUES(00000322, 'soup');
INSERT INTO ItemKeyword VALUES(00000322, 'brew');
INSERT INTO ItemKeyword VALUES(00000322, 'goat');

INSERT INTO Item VALUES(00000016, 00000323, 'Chotpoti', 'Popular traditional street food. Peas tamarind sauce, coriander, chilli, sliced, boiled egg and crispy broken shell soup.', 1, 11.00, 0, null, 0, 0, 0, 4.1, 'entree');
INSERT INTO ItemReview VALUES(00000323, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000323, 'street meat');
INSERT INTO ItemKeyword VALUES(00000323, 'soup');
INSERT INTO ItemKeyword VALUES(00000323, 'chilli');
INSERT INTO ItemKeyword VALUES(00000323, 'egg');
INSERT INTO ItemKeyword VALUES(00000323, 'shell');

INSERT INTO Item VALUES(00000016, 00000324, 'Tandoori chicken', 'Half chicken in four pieces served with salad.', 1, 12.00, 0, null, 0, 0, 0, 2.1, 'entree');
INSERT INTO ItemReview VALUES(00000324, '', '', 2.1);
INSERT INTO ItemKeyword VALUES(00000324, 'tandoori');
INSERT INTO ItemKeyword VALUES(00000324, 'chicken');
INSERT INTO ItemKeyword VALUES(00000324, 'salad');
INSERT INTO ItemKeyword VALUES(00000324, 'starter');
INSERT INTO ItemKeyword VALUES(00000324, 'share');

INSERT INTO Item VALUES(00000016, 00000325, 'Chicken vuna curry', 'traditional spicy curry cooked with fresh garlic, ginger, onion and spices. Curry comes with bones and meats.', 1, 19.00, 0, null, 0, 0, 0, 3.9, 'main');
INSERT INTO ItemReview VALUES(00000325, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000325, 'chicken');
INSERT INTO ItemKeyword VALUES(00000325, 'curry');
INSERT INTO ItemKeyword VALUES(00000325, 'garlic');
INSERT INTO ItemKeyword VALUES(00000325, 'ginger');
INSERT INTO ItemKeyword VALUES(00000325, 'spicy');

INSERT INTO Item VALUES(00000016, 00000326, 'Butter chicken', 'marinated diced boneless chicken roasted in tandoor oven and cooked with chef special creamy tomato sauce.', 1, 22.00, 0, null, 0, 0, 0, 4.1, 'main');
INSERT INTO ItemReview VALUES(00000326, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000326, 'butter');
INSERT INTO ItemKeyword VALUES(00000326, 'chicken');
INSERT INTO ItemKeyword VALUES(00000326, 'marinate');
INSERT INTO ItemKeyword VALUES(00000326, 'tomato sauce');
INSERT INTO ItemKeyword VALUES(00000326, 'tandoor');

INSERT INTO Item VALUES(00000016, 00000327, 'Chicken korma curry', 'creamy thick sweet chicken curry cooked with fresh garlic, ginger and onion. Very popular with polao rice or bread.', 1, 22.00, 0, null, 0, 0, 0, 3.5, 'main');
INSERT INTO ItemReview VALUES(00000327, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000327, 'chicken');
INSERT INTO ItemKeyword VALUES(00000327, 'korma');
INSERT INTO ItemKeyword VALUES(00000327, 'curry');
INSERT INTO ItemKeyword VALUES(00000327, 'rice');
INSERT INTO ItemKeyword VALUES(00000327, 'spicy');

INSERT INTO Item VALUES(00000016, 00000328, 'Vege daal', 'Fresh vegetables curry cooked with split peas, coriander and chef special five spices.', 1, 21.00, 0, null, 0, 1, 0, 5.0, 'main');
INSERT INTO ItemReview VALUES(00000328, '', '', 5.0);
INSERT INTO ItemKeyword VALUES(00000328, 'veg');
INSERT INTO ItemKeyword VALUES(00000328, 'daaal');
INSERT INTO ItemKeyword VALUES(00000328, 'curry');
INSERT INTO ItemKeyword VALUES(00000328, 'coriander');
INSERT INTO ItemKeyword VALUES(00000328, 'spicy');

INSERT INTO Item VALUES(00000016, 00000329, 'Chana daal', 'yellow split peas thick curry cooked with coriander and chef special spices. Popular with polao rice or naan bread.', 1, 21.00, 0, null, 0, 1, 0, 2.3, 'main');
INSERT INTO ItemReview VALUES(00000329, '', '', 2.3);
INSERT INTO ItemKeyword VALUES(00000329, 'chana');
INSERT INTO ItemKeyword VALUES(00000329, 'daal');
INSERT INTO ItemKeyword VALUES(00000329, 'pea');
INSERT INTO ItemKeyword VALUES(00000329, 'coriander');
INSERT INTO ItemKeyword VALUES(00000329, 'spicy');

INSERT INTO Item VALUES(00000016, 00000330, 'Prawn do piaza', 'Spicy prawn vuna curry, tiger prawns cooked in chef special do diaza sauce with fresh ciriander, shallot and green chilli.', 1, 23.00, 0, null, 0, 0, 0, 4.2, 'main');
INSERT INTO ItemReview VALUES(00000330, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000330, 'prawn');
INSERT INTO ItemKeyword VALUES(00000330, 'piaza');
INSERT INTO ItemKeyword VALUES(00000330, 'curry');
INSERT INTO ItemKeyword VALUES(00000330, 'tiger');
INSERT INTO ItemKeyword VALUES(00000330, 'spicy');

INSERT INTO Item VALUES(00000016, 00000331, 'Parata', 'Gourmet pan fried flour based traditional bread.', 1, 4.00, 0, null, 1, 1, 0, 2.0, 'entree');
INSERT INTO ItemReview VALUES(00000331, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000331, 'bread');
INSERT INTO ItemKeyword VALUES(00000331, 'gourmet');
INSERT INTO ItemKeyword VALUES(00000331, 'fried');
INSERT INTO ItemKeyword VALUES(00000331, 'starter');
INSERT INTO ItemKeyword VALUES(00000331, 'flour');

INSERT INTO Item VALUES(00000016, 00000332, 'Khichury rice', 'Vuna khichury rice. traditional spicy yellow rice cooked with mong lentil.', 1, 6.00, 0, null, 1, 1, 0, 3.8, 'entree');
INSERT INTO ItemReview VALUES(00000332, '', '', 3.8);
INSERT INTO ItemKeyword VALUES(00000332, 'khichury');
INSERT INTO ItemKeyword VALUES(00000332, 'rice');
INSERT INTO ItemKeyword VALUES(00000332, 'spicy');
INSERT INTO ItemKeyword VALUES(00000332, 'mong');
INSERT INTO ItemKeyword VALUES(00000332, 'lentil');

INSERT INTO Item VALUES(00000016, 00000333, 'Boiled rice', 'bashmoti rice.', 1, 3.00, 0, null, 1, 1, 1, 3.5, 'entree');
INSERT INTO ItemReview VALUES(00000333, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000333, 'rice');
INSERT INTO ItemKeyword VALUES(00000333, 'bashmoti');
INSERT INTO ItemKeyword VALUES(00000333, 'small');
INSERT INTO ItemKeyword VALUES(00000333, 'starter');
INSERT INTO ItemKeyword VALUES(00000333, 'healthy');

INSERT INTO Item VALUES(00000016, 00000334, 'Plain naan bread', null, 1, 4.00, 0, null, 1, 1, 0, 4.7, 'entree');
INSERT INTO ItemReview VALUES(00000334, '', '', 4.7);
INSERT INTO ItemKeyword VALUES(00000334, 'naan');
INSERT INTO ItemKeyword VALUES(00000334, 'bread');
INSERT INTO ItemKeyword VALUES(00000334, 'plain');
INSERT INTO ItemKeyword VALUES(00000334, 'starter');
INSERT INTO ItemKeyword VALUES(00000334, 'carb');

INSERT INTO Item VALUES(00000016, 00000335, 'Chom Chom', 'Traditional brown sweet dessert made with ricotta cheese.', 1, 4.00, 0, null, 0, 0, 0, 2.7, 'desert');
INSERT INTO ItemReview VALUES(00000335, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000335, 'chom');
INSERT INTO ItemKeyword VALUES(00000335, 'sweet');
INSERT INTO ItemKeyword VALUES(00000335, 'ricotta');
INSERT INTO ItemKeyword VALUES(00000335, 'cheese');
INSERT INTO ItemKeyword VALUES(00000335, 'brown');

INSERT INTO Item VALUES(00000016, 00000336, 'Kalo jam', 'Black jamun. traditional black sweet dessert. Rocotta cheese based sweet syrup dipped.', 1, 4.00, 0, null, 0, 0, 0, 2.4, 'desert');
INSERT INTO ItemReview VALUES(00000336, '', '', 2.4);
INSERT INTO ItemKeyword VALUES(00000336, 'Kalo jam');
INSERT INTO ItemKeyword VALUES(00000336, 'jamun');
INSERT INTO ItemKeyword VALUES(00000336, 'sweet');
INSERT INTO ItemKeyword VALUES(00000336, 'syrup');
INSERT INTO ItemKeyword VALUES(00000336, 'cheese');

INSERT INTO Item VALUES(00000016, 00000337, 'Chicken korma curry', 'Creamy thick sweet chicken curry cooked with fresh garlic, ginger and onion. Very popular with polao rice or bread. Zero chilli meat with bones.', 1, 22.00, 0, null, 0, 0, 0, 2.9, 'kids');
INSERT INTO ItemReview VALUES(00000337, '', '', 2.9);
INSERT INTO ItemKeyword VALUES(00000337, 'chicken');
INSERT INTO ItemKeyword VALUES(00000337, 'korma');
INSERT INTO ItemKeyword VALUES(00000337, 'curry');
INSERT INTO ItemKeyword VALUES(00000337, 'garlic');
INSERT INTO ItemKeyword VALUES(00000337, 'spicy');

INSERT INTO Item VALUES(00000016, 00000338, 'Chicken korma and boiled rice', 'Sweet korma curry with bones. Curry and rice served in separate box.', 1, 15.00, 0, null, 0, 0, 0, 4.3, 'kids');
INSERT INTO ItemReview VALUES(00000338, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000338, 'chicken');
INSERT INTO ItemKeyword VALUES(00000338, 'korma');
INSERT INTO ItemKeyword VALUES(00000338, 'rice');
INSERT INTO ItemKeyword VALUES(00000338, 'box');
INSERT INTO ItemKeyword VALUES(00000338, 'small');

INSERT INTO Item VALUES(00000016, 00000339, 'Butter chicken and boiled rice', 'Curry and rice served in seperate box.', 1, 12.00, 0, null, 0, 0, 0, 4.1, 'kids');
INSERT INTO ItemReview VALUES(00000339, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000339, 'chicken');
INSERT INTO ItemKeyword VALUES(00000339, 'rice');
INSERT INTO ItemKeyword VALUES(00000339, 'curry');
INSERT INTO ItemKeyword VALUES(00000339, 'small');
INSERT INTO ItemKeyword VALUES(00000339, 'spicy');



INSERT INTO Item VALUES(00000017, 00000340, 'Panipuri', 'Fried crisp puris filled with potato, peas, coriander, and tangy water.', 1, 12.00, 0, null, 0, 1, 0, 4.4, 'entree');
INSERT INTO ItemReview VALUES(00000340, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000340, 'crisp');
INSERT INTO ItemKeyword VALUES(00000340, 'potato');
INSERT INTO ItemKeyword VALUES(00000340, 'pea');
INSERT INTO ItemKeyword VALUES(00000340, 'tangy');
INSERT INTO ItemKeyword VALUES(00000340, 'starter');

INSERT INTO Item VALUES(00000017, 00000341, 'Chatpate', 'Puffed rice & wai wai noodle mixed with nepalese spices, coriander. Boiled potato, chickpeas, onion, green peas & special sauce.', 1, 10.00, 0, null, 0, 0, 0, 4.2, 'entree');
INSERT INTO ItemReview VALUES(00000341, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000341, 'puff');
INSERT INTO ItemKeyword VALUES(00000341, 'rice');
INSERT INTO ItemKeyword VALUES(00000341, 'wai');
INSERT INTO ItemKeyword VALUES(00000341, 'potato');
INSERT INTO ItemKeyword VALUES(00000341, 'boil');

INSERT INTO Item VALUES(00000017, 00000342, 'Bhatmas sandeko', 'Soaked soybeans deep fried & tossed with seasoning herbs.', 1, 12.00, 0, null, 1, 1, 0, 4.0, 'entree');
INSERT INTO ItemReview VALUES(00000342, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000342, 'bhatmas');
INSERT INTO ItemKeyword VALUES(00000342, 'sandeko');
INSERT INTO ItemKeyword VALUES(00000342, 'soy');
INSERT INTO ItemKeyword VALUES(00000342, 'bean');
INSERT INTO ItemKeyword VALUES(00000342, 'herb');

INSERT INTO Item VALUES(00000017, 00000343, 'Mixed achar', 'Fresh cucumber, carrot and green peas seasoned with spices and fresh herbs.', 1, 10.00, 0, null, 0, 1, 0, 3.7, 'entree');
INSERT INTO ItemReview VALUES(00000343, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000343, 'achar');
INSERT INTO ItemKeyword VALUES(00000343, 'cucumber');
INSERT INTO ItemKeyword VALUES(00000343, 'carrot');
INSERT INTO ItemKeyword VALUES(00000343, 'pea');
INSERT INTO ItemKeyword VALUES(00000343, 'herb');

INSERT INTO Item VALUES(00000017, 00000344, 'Veg samosa', 'Deep fried puffed curry stuffed with potato & peas.', 1, 10.00, 0, null, 0, 0, 0, 3.2, 'entree');
INSERT INTO ItemReview VALUES(00000344, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000344, 'veg');
INSERT INTO ItemKeyword VALUES(00000344, 'puff');
INSERT INTO ItemKeyword VALUES(00000344, 'curry');
INSERT INTO ItemKeyword VALUES(00000344, 'potato');
INSERT INTO ItemKeyword VALUES(00000344, 'peas');

INSERT INTO Item VALUES(00000017, 00000345, 'Goat bhutan', 'Pan fried goat innards served.', 1, 16.00, 0, null, 0, 0, 0, 4.8, 'entree');
INSERT INTO ItemReview VALUES(00000345, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000345, 'goat');
INSERT INTO ItemKeyword VALUES(00000345, 'innards');
INSERT INTO ItemKeyword VALUES(00000345, 'pan');
INSERT INTO ItemKeyword VALUES(00000345, 'fried');
INSERT INTO ItemKeyword VALUES(00000345, 'starter');

INSERT INTO Item VALUES(00000017, 00000346, 'Pakora', 'Cabbage, carrot, onion, spanish onion, coriander mixed with nepalese spices & deep fried served with tomato chutney.', 1, 12.00, 0, null, 0, 1, 0, 4.5, 'entree');
INSERT INTO ItemReview VALUES(00000346, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000346, 'cabbage');
INSERT INTO ItemKeyword VALUES(00000346, 'carrot');
INSERT INTO ItemKeyword VALUES(00000346, 'onion');
INSERT INTO ItemKeyword VALUES(00000346, 'coriander');
INSERT INTO ItemKeyword VALUES(00000346, 'chutney');

INSERT INTO Item VALUES(00000017, 00000347, 'Aaloo fry', 'Pan fried otato tempered with marinated with nepalese spices & fresh herbs.', 1, 12.00, 0, null, 0, 0, 0, 3.7, 'entree');
INSERT INTO ItemReview VALUES(00000347, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000347, 'aaloo');
INSERT INTO ItemKeyword VALUES(00000347, 'pan');
INSERT INTO ItemKeyword VALUES(00000347, 'fried');
INSERT INTO ItemKeyword VALUES(00000347, 'herbs');
INSERT INTO ItemKeyword VALUES(00000347, 'marinate');

INSERT INTO Item VALUES(00000017, 00000348, 'Chilli special', 'Capsicum, onion, tomato cooked with nepali spices.', 1, 15.00, 0, null, 0, 0, 0, 3.0, 'specials');
INSERT INTO ItemReview VALUES(00000348, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000348, 'chilli');
INSERT INTO ItemKeyword VALUES(00000348, 'onion');
INSERT INTO ItemKeyword VALUES(00000348, 'tomato');
INSERT INTO ItemKeyword VALUES(00000348, 'spices');
INSERT INTO ItemKeyword VALUES(00000348, 'capsicum');

INSERT INTO Item VALUES(00000017, 00000349, 'Chhoila special', 'Your choice of meat seasoned with freshly grounded spices and herbs.', 1, 20.00, 0, null, 0, 0, 0, 3.9, 'specials');
INSERT INTO ItemReview VALUES(00000349, '', '', 3.9);
INSERT INTO ItemKeyword VALUES(00000349, 'chhoila');
INSERT INTO ItemKeyword VALUES(00000349, 'meat');
INSERT INTO ItemKeyword VALUES(00000349, 'spices');
INSERT INTO ItemKeyword VALUES(00000349, 'herbs');
INSERT INTO ItemKeyword VALUES(00000349, 'chicken');

INSERT INTO Item VALUES(00000017, 00000350, 'Thakali thali set', 'Choice of curry with spanish, gundruk, daal mixed aachar, golveda ko aachar, papad salad served with ghee.', 1, 25.00, 0, null, 0, 0, 0, 4.0, 'main');
INSERT INTO ItemReview VALUES(00000350, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000350, 'curry');
INSERT INTO ItemKeyword VALUES(00000350, 'Thakali');
INSERT INTO ItemKeyword VALUES(00000350, 'thali');
INSERT INTO ItemKeyword VALUES(00000350, 'gundruk');
INSERT INTO ItemKeyword VALUES(00000350, 'daal');

INSERT INTO Item VALUES(00000017, 00000351, 'Khaja set', 'Chhoila of your choice served with fried beaten rice, mixed aachar, fried egg, green peas, bara, bhatmas & aalyu bodi tama & salad.', 1, 28.00, 0, null, 0, 0, 0, 3.5, 'main');
INSERT INTO ItemReview VALUES(00000351, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000351, 'khaja');
INSERT INTO ItemKeyword VALUES(00000351, 'aachar');
INSERT INTO ItemKeyword VALUES(00000351, 'egg');
INSERT INTO ItemKeyword VALUES(00000351, 'pea');
INSERT INTO ItemKeyword VALUES(00000351, 'bara');

INSERT INTO Item VALUES(00000017, 00000352, 'Thukpa', 'Boiled noodles soup with fresh vegetables and choice of meat.', 1, 16.00, 0, null, 0, 0, 0, 3.7, 'main');
INSERT INTO ItemReview VALUES(00000352, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000352, 'noodles');
INSERT INTO ItemKeyword VALUES(00000352, 'boil');
INSERT INTO ItemKeyword VALUES(00000352, 'soup');
INSERT INTO ItemKeyword VALUES(00000352, 'veg');
INSERT INTO ItemKeyword VALUES(00000352, 'meat');

INSERT INTO Item VALUES(00000017, 00000353, 'Fried rice', 'Boiled basmati rice with choice of meat, vegies and spices.', 1, 18.00, 0, null, 0, 0, 0, 3.0, 'main');
INSERT INTO ItemReview VALUES(00000353, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000353, 'fried');
INSERT INTO ItemKeyword VALUES(00000353, 'rice');
INSERT INTO ItemKeyword VALUES(00000353, 'meat');
INSERT INTO ItemKeyword VALUES(00000353, 'veg');
INSERT INTO ItemKeyword VALUES(00000353, 'spices');

INSERT INTO Item VALUES(00000017, 00000354, 'Curry special', 'Served with basmati rice or roti.', 1, 21.00, 0, null, 0, 0, 0, 3.7, 'main');
INSERT INTO ItemReview VALUES(00000354, '', '', 3.7);
INSERT INTO ItemKeyword VALUES(00000354, 'curry');
INSERT INTO ItemKeyword VALUES(00000354, 'basmati');
INSERT INTO ItemKeyword VALUES(00000354, 'roti');
INSERT INTO ItemKeyword VALUES(00000354, 'rice');
INSERT INTO ItemKeyword VALUES(00000354, 'spict');

INSERT INTO Item VALUES(00000017, 00000355, 'Chowmein', 'Nepalese style noodle fried with veggied & soy sauce.', 1, 15.00, 0, null, 0, 0, 0, 3.5, 'main');
INSERT INTO ItemReview VALUES(00000355, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000355, 'noodle');
INSERT INTO ItemKeyword VALUES(00000355, 'veg');
INSERT INTO ItemKeyword VALUES(00000355, 'soy');
INSERT INTO ItemKeyword VALUES(00000355, 'fried');
INSERT INTO ItemKeyword VALUES(00000355, 'sauce');

INSERT INTO Item VALUES(00000017, 00000356, 'Momo', 'Handmad nepalese dumplings served with home made chutney.', 1, 19.00, 0, null, 0, 0, 0, 3.8, 'main');
INSERT INTO ItemReview VALUES(00000356, '', '', 3.8);
INSERT INTO ItemKeyword VALUES(00000356, 'dunpling');
INSERT INTO ItemKeyword VALUES(00000356, 'chutney');
INSERT INTO ItemKeyword VALUES(00000356, 'chicken');
INSERT INTO ItemKeyword VALUES(00000356, 'beef');
INSERT INTO ItemKeyword VALUES(00000356, 'lamb');

INSERT INTO Item VALUES(00000017, 00000357, 'fresh salad', 'Cucumber, carrot, capsicum, red onion.', 1, 10.00, 0, null, 1, 1, 1, 4.5, 'main');
INSERT INTO ItemReview VALUES(00000357, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000357, 'salad');
INSERT INTO ItemKeyword VALUES(00000357, 'cucumber');
INSERT INTO ItemKeyword VALUES(00000357, 'healthy');
INSERT INTO ItemKeyword VALUES(00000357, 'carrot');
INSERT INTO ItemKeyword VALUES(00000357, 'capsicum');

INSERT INTO Item VALUES(00000017, 00000358, 'Chocolate momo with ice cream', null, 1, 15.00, 0, null, 0, 1, 0, 5.0, 'desert');
INSERT INTO ItemReview VALUES(00000358, '', '', 5.0);
INSERT INTO ItemKeyword VALUES(00000358, 'chocolate');
INSERT INTO ItemKeyword VALUES(00000358, 'sweet');
INSERT INTO ItemKeyword VALUES(00000358, 'ice cream');
INSERT INTO ItemKeyword VALUES(00000358, 'momo');
INSERT INTO ItemKeyword VALUES(00000358, 'yum');

INSERT INTO Item VALUES(00000017, 00000359, 'lalmon', 'gulab jamun', 1, 10.00, 0, null, 0, 0, 0, 3.0, 'desert');
INSERT INTO ItemReview VALUES(00000359, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000359, 'gulab');
INSERT INTO ItemKeyword VALUES(00000359, 'jamun');
INSERT INTO ItemKeyword VALUES(00000359, 'khoya');
INSERT INTO ItemKeyword VALUES(00000359, 'desert');
INSERT INTO ItemKeyword VALUES(00000359, 'wheat');



INSERT INTO Item VALUES(00000018, 00000360, 'Hand roll', null, 1, 4.00, 0, null, 0, 0, 0, 4.5, 'main');
INSERT INTO ItemReview VALUES(00000360, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000360, 'rice');
INSERT INTO ItemKeyword VALUES(00000360, 'sushi');
INSERT INTO ItemKeyword VALUES(00000360, 'cucumber');
INSERT INTO ItemKeyword VALUES(00000360, 'sea');
INSERT INTO ItemKeyword VALUES(00000360, 'weed');

INSERT INTO Item VALUES(00000018, 00000361, 'Chasu pork Ramen', 'Topped with chasu pork, bamboo, corn, egg, shallots.', 1, 20.80, 0, null, 0, 0, 0, 2.1, 'main');
INSERT INTO ItemReview VALUES(00000361, '', '', 2.1);
INSERT INTO ItemKeyword VALUES(00000361, 'ramen');
INSERT INTO ItemKeyword VALUES(00000361, 'pork');
INSERT INTO ItemKeyword VALUES(00000361, 'chasu');
INSERT INTO ItemKeyword VALUES(00000361, 'bamboo');
INSERT INTO ItemKeyword VALUES(00000361, 'corn');

INSERT INTO Item VALUES(00000018, 00000362, 'Wagyu Beef bento', null, 1, 25.00, 0, null, 0, 0, 0, 3.5, 'main');
INSERT INTO ItemReview VALUES(00000362, '', '', 3.5);
INSERT INTO ItemKeyword VALUES(00000362, 'wagyu');
INSERT INTO ItemKeyword VALUES(00000362, 'beef');
INSERT INTO ItemKeyword VALUES(00000362, 'bento');
INSERT INTO ItemKeyword VALUES(00000362, 'soft');
INSERT INTO ItemKeyword VALUES(00000362, 'veg');

INSERT INTO Item VALUES(00000018, 00000363, 'Takoyaki', '7 pieces deep fried balls of octopus.', 1, 11.80, 0, null, 0, 0, 0, 4.5, 'main');
INSERT INTO ItemReview VALUES(00000363, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000363, 'snack');
INSERT INTO ItemKeyword VALUES(00000363, 'deep');
INSERT INTO ItemKeyword VALUES(00000363, 'fried');
INSERT INTO ItemKeyword VALUES(00000363, 'seafood');
INSERT INTO ItemKeyword VALUES(00000363, 'octopus');

INSERT INTO Item VALUES(00000018, 00000364, 'Chicken katsu curry', 'Crispy crumbed chicken katsu with japanese curry and rice.', 1, 18.00, 0, null, 0, 0, 0, 3.2, 'main');
INSERT INTO ItemReview VALUES(00000364, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000364, 'chicken');
INSERT INTO ItemKeyword VALUES(00000364, 'curry');
INSERT INTO ItemKeyword VALUES(00000364, 'katsu');
INSERT INTO ItemKeyword VALUES(00000364, 'crumb');
INSERT INTO ItemKeyword VALUES(00000364, 'rice');

INSERT INTO Item VALUES(00000018, 00000365, 'Uramaki roll', null, 1, 14.00, 0, null, 0, 0, 0, 4.9, 'main');
INSERT INTO ItemReview VALUES(00000365, '', '', 4.9);
INSERT INTO ItemKeyword VALUES(00000365, 'sushi');
INSERT INTO ItemKeyword VALUES(00000365, 'Uramaki');
INSERT INTO ItemKeyword VALUES(00000365, 'salmon');
INSERT INTO ItemKeyword VALUES(00000365, 'cucumber');
INSERT INTO ItemKeyword VALUES(00000365, 'avocado');

INSERT INTO Item VALUES(00000018, 00000366, 'Rice paper roll', null, 1, 13.00, 0, null, 0, 0, 0, 3.6, 'main');
INSERT INTO ItemReview VALUES(00000366, '', '', 3.6);
INSERT INTO ItemKeyword VALUES(00000366, 'sushi');
INSERT INTO ItemKeyword VALUES(00000366, 'rice');
INSERT INTO ItemKeyword VALUES(00000366, 'paper');
INSERT INTO ItemKeyword VALUES(00000366, 'carrot');
INSERT INTO ItemKeyword VALUES(00000366, 'chicken');

INSERT INTO Item VALUES(00000018, 00000367, 'Salmon sashimi', '8 pieces sliced fresh salmon.', 1, 17.00, 0, null, 0, 0, 0, 5.0, 'main');
INSERT INTO ItemReview VALUES(00000367, '', '', 5.0);
INSERT INTO ItemKeyword VALUES(00000367, 'salmon');
INSERT INTO ItemKeyword VALUES(00000367, 'sashimi');
INSERT INTO ItemKeyword VALUES(00000367, 'slice');
INSERT INTO ItemKeyword VALUES(00000367, 'soy');
INSERT INTO ItemKeyword VALUES(00000367, 'lemon');

INSERT INTO Item VALUES(00000018, 00000368, 'Tuna sashimi', '8 pieces sliced fresh tuna.', 1, 17.00, 0, null, 0, 0, 0, 4.4, 'main');
INSERT INTO ItemReview VALUES(00000368, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000368, 'sashimi');
INSERT INTO ItemKeyword VALUES(00000368, 'tuna');
INSERT INTO ItemKeyword VALUES(00000368, 'soy');
INSERT INTO ItemKeyword VALUES(00000368, 'wasabi');
INSERT INTO ItemKeyword VALUES(00000368, 'lemon');

INSERT INTO Item VALUES(00000018, 00000369, 'Salmon aburi', '6 pieces grilled salmon nigiri.', 1, 15.00, 0, null, 0, 0, 0, 2.8, 'main');
INSERT INTO ItemReview VALUES(00000369, '', '', 2.8);
INSERT INTO ItemKeyword VALUES(00000369, 'salmon');
INSERT INTO ItemKeyword VALUES(00000369, 'aburi');
INSERT INTO ItemKeyword VALUES(00000369, 'nigiri');
INSERT INTO ItemKeyword VALUES(00000369, 'grilled');
INSERT INTO ItemKeyword VALUES(00000369, 'onion');

INSERT INTO Item VALUES(00000018, 00000370, 'Prawn Nigiri', '6 pieces prawn nigiri.', 1, 15.00, 0, null, 0, 0, 0, 3.2, 'main');
INSERT INTO ItemReview VALUES(00000370, '', '', 3.2);
INSERT INTO ItemKeyword VALUES(00000370, 'prawn');
INSERT INTO ItemKeyword VALUES(00000370, 'nigiri');
INSERT INTO ItemKeyword VALUES(00000370, 'sea');
INSERT INTO ItemKeyword VALUES(00000370, 'weed');
INSERT INTO ItemKeyword VALUES(00000370, 'lemon');

INSERT INTO Item VALUES(00000018, 00000371, 'Prawn fried rice', 'Fried rice with egg and prawn.', 1, 22.00, 0, null, 0, 0, 0, 4.0, 'main');
INSERT INTO ItemReview VALUES(00000371, '', '', 4.0);
INSERT INTO ItemKeyword VALUES(00000371, 'fried');
INSERT INTO ItemKeyword VALUES(00000371, 'rice');
INSERT INTO ItemKeyword VALUES(00000371, 'prawn');
INSERT INTO ItemKeyword VALUES(00000371, 'egg');
INSERT INTO ItemKeyword VALUES(00000371, 'bacon');

INSERT INTO Item VALUES(00000018, 00000372, 'Veggie tofu', 'Stir fried veggies and tofu with rice.', 1, 16.00, 0, null, 0, 1, 0, 4.8, 'main');
INSERT INTO ItemReview VALUES(00000372, '', '', 4.8);
INSERT INTO ItemKeyword VALUES(00000372, 'veg');
INSERT INTO ItemKeyword VALUES(00000372, 'tofu');
INSERT INTO ItemKeyword VALUES(00000372, 'rice');
INSERT INTO ItemKeyword VALUES(00000372, 'fried');
INSERT INTO ItemKeyword VALUES(00000372, 'stir');

INSERT INTO Item VALUES(00000018, 00000373, 'Agedashi tofu', 'Fried tofu with dashi sauce.', 1, 12.80, 0, null, 0, 0, 0, 4.1, 'main');
INSERT INTO ItemReview VALUES(00000373, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000373, 'agedashi');
INSERT INTO ItemKeyword VALUES(00000373, 'tofu');
INSERT INTO ItemKeyword VALUES(00000373, 'dashi');
INSERT INTO ItemKeyword VALUES(00000373, 'soy');
INSERT INTO ItemKeyword VALUES(00000373, 'crisp');

INSERT INTO Item VALUES(00000018, 00000374, 'Yakisoba prawn noodles', 'Yakisoba noodles with prawn and mixed vege.', 1, 22.80, 0, null, 0, 0, 0, 4.2, 'main');
INSERT INTO ItemReview VALUES(00000374, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000374, 'yakisoba');
INSERT INTO ItemKeyword VALUES(00000374, 'prawn');
INSERT INTO ItemKeyword VALUES(00000374, 'noodles');
INSERT INTO ItemKeyword VALUES(00000374, 'veg');
INSERT INTO ItemKeyword VALUES(00000374, 'fried');

INSERT INTO Item VALUES(00000018, 00000375, 'Beef yakisoba', 'Yakisoba noodles with wagyu beef and mixed veg.', 1, 24.80, 0, null, 0, 0, 0, 3.0, 'main');
INSERT INTO ItemReview VALUES(00000375, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000375, 'beef');
INSERT INTO ItemKeyword VALUES(00000375, 'yakisoba');
INSERT INTO ItemKeyword VALUES(00000375, 'noodles');
INSERT INTO ItemKeyword VALUES(00000375, 'wagyu');
INSERT INTO ItemKeyword VALUES(00000375, 'beef');

INSERT INTO Item VALUES(00000018, 00000376, 'Chicken katsu ramen', 'Topped with chicken katsu, bamboo, corn, egg, shallots.', 1, 18.80, 0, null, 0, 0, 0, 4.5, 'main');
INSERT INTO ItemReview VALUES(00000376, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000376, 'chicken');
INSERT INTO ItemKeyword VALUES(00000376, 'katsu');
INSERT INTO ItemKeyword VALUES(00000376, 'ramen');
INSERT INTO ItemKeyword VALUES(00000376, 'ba,mboo');
INSERT INTO ItemKeyword VALUES(00000376, 'corn');

INSERT INTO Item VALUES(00000018, 00000377, 'Wagyu beef ramen', 'Topped with teriyaki beef, bamboo, corn, egg, shallots.', 1, 22.80, 0, null, 0, 0, 0, 3.0, 'main');
INSERT INTO ItemReview VALUES(00000377, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000377, 'Wagyu');
INSERT INTO ItemKeyword VALUES(00000377, 'beef');
INSERT INTO ItemKeyword VALUES(00000377, 'ramen');
INSERT INTO ItemKeyword VALUES(00000377, 'teriyaki');
INSERT INTO ItemKeyword VALUES(00000377, 'egg');

INSERT INTO Item VALUES(00000018, 00000378, 'Soft shell crab', '5 pieces deep fried soft shell crab, avocado, cucumber, crunchy tempura, shallots and masago.', 1, 15.00, 0, null, 0, 0, 0, 4.9, 'main');
INSERT INTO ItemReview VALUES(00000378, '', '', 4.9);
INSERT INTO ItemKeyword VALUES(00000378, 'crab');
INSERT INTO ItemKeyword VALUES(00000378, 'soft');
INSERT INTO ItemKeyword VALUES(00000378, 'avocado');
INSERT INTO ItemKeyword VALUES(00000378, 'tempura');
INSERT INTO ItemKeyword VALUES(00000378, 'shallots');

INSERT INTO Item VALUES(00000018, 00000379, 'Salmon and Onion special', 'Grilled salmon, crab salad, avocado, cucumber, onion, shallots and masago.', 1, 17.80, 0, null, 0, 0, 0, 2.9, 'specials');
INSERT INTO ItemReview VALUES(00000379, '', '', 2.9);
INSERT INTO ItemKeyword VALUES(00000379, 'salmon');
INSERT INTO ItemKeyword VALUES(00000379, 'onion');
INSERT INTO ItemKeyword VALUES(00000379, 'crab');
INSERT INTO ItemKeyword VALUES(00000379, 'salad');
INSERT INTO ItemKeyword VALUES(00000379, 'masago');


INSERT INTO Item VALUES(00000019, 00000380, 'Doner kebab roll', null, 1, 13.00, 0, null, 0, 0, 0, 2.6, 'main');
INSERT INTO ItemReview VALUES(00000380, '', '', 2.6);
INSERT INTO ItemKeyword VALUES(00000380, 'doner');
INSERT INTO ItemKeyword VALUES(00000380, 'kebab');
INSERT INTO ItemKeyword VALUES(00000380, 'beef');
INSERT INTO ItemKeyword VALUES(00000380, 'lamb');
INSERT INTO ItemKeyword VALUES(00000380, 'salad');

INSERT INTO Item VALUES(00000019, 00000381, 'Chicken kebab roll', null, 1, 13.50, 0, null, 0, 0, 0, 2.7, 'main');
INSERT INTO ItemReview VALUES(00000381, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000381, 'chicken');
INSERT INTO ItemKeyword VALUES(00000381, 'kebab');
INSERT INTO ItemKeyword VALUES(00000381, 'salad');
INSERT INTO ItemKeyword VALUES(00000381, 'maninade');
INSERT INTO ItemKeyword VALUES(00000381, 'salad');

INSERT INTO Item VALUES(00000019, 00000382, 'Mixed kebab roll', null, 1, 13.50, 0, null, 0, 0, 0, 3.0, 'main');
INSERT INTO ItemReview VALUES(00000382, '', '', 3.0);
INSERT INTO ItemKeyword VALUES(00000382, 'kebab');
INSERT INTO ItemKeyword VALUES(00000382, 'beef');
INSERT INTO ItemKeyword VALUES(00000382, 'lamb');
INSERT INTO ItemKeyword VALUES(00000382, 'chicken');
INSERT INTO ItemKeyword VALUES(00000382, 'salad');

INSERT INTO Item VALUES(00000019, 00000383, 'Falefel roll', null, 1, 12.00, 0, null, 0, 0, 0, 4.6, 'main');
INSERT INTO ItemReview VALUES(00000383, '', '', 4.6);
INSERT INTO ItemKeyword VALUES(00000383, 'falefel');
INSERT INTO ItemKeyword VALUES(00000383, 'chick');
INSERT INTO ItemKeyword VALUES(00000383, 'peas');
INSERT INTO ItemKeyword VALUES(00000383, 'herb');
INSERT INTO ItemKeyword VALUES(00000383, 'spices');

INSERT INTO Item VALUES(00000019, 00000384, 'Salad roll', null, 1, 10.00, 0, null, 0, 0, 0, 4.4, 'main');
INSERT INTO ItemReview VALUES(00000384, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000384, 'salad');
INSERT INTO ItemKeyword VALUES(00000384, 'healthy');
INSERT INTO ItemKeyword VALUES(00000384, 'cabbage');
INSERT INTO ItemKeyword VALUES(00000384, 'tomato');
INSERT INTO ItemKeyword VALUES(00000384, 'lettuce');

INSERT INTO Item VALUES(00000019, 00000385, 'Hot chips', null, 1, 8.00, 0, null, 0, 1, 1, 4.5, 'entree');
INSERT INTO ItemReview VALUES(00000385, '', '', 4.5);
INSERT INTO ItemKeyword VALUES(00000385, 'chips');
INSERT INTO ItemKeyword VALUES(00000385, 'potato');
INSERT INTO ItemKeyword VALUES(00000385, 'share');
INSERT INTO ItemKeyword VALUES(00000385, 'small');
INSERT INTO ItemKeyword VALUES(00000385, 'sauce');

INSERT INTO Item VALUES(00000019, 00000386, 'Doner snack', null, 1, 20.50, 0, null, 0, 0, 0, 3.1, 'main');
INSERT INTO ItemReview VALUES(00000386, '', '', 3.1);
INSERT INTO ItemKeyword VALUES(00000386, 'snack');
INSERT INTO ItemKeyword VALUES(00000386, 'pack');
INSERT INTO ItemKeyword VALUES(00000386, 'doner');
INSERT INTO ItemKeyword VALUES(00000386, 'lamb');
INSERT INTO ItemKeyword VALUES(00000386, 'beef');

INSERT INTO Item VALUES(00000019, 00000387, 'Chicken snack', null, 1, 20.50, 0, null, 0, 0, 0, 2.4, 'main');
INSERT INTO ItemReview VALUES(00000387, '', '', 2.4);
INSERT INTO ItemKeyword VALUES(00000387, 'chicken');
INSERT INTO ItemKeyword VALUES(00000387, 'snack');
INSERT INTO ItemKeyword VALUES(00000387, 'pack');
INSERT INTO ItemKeyword VALUES(00000387, 'salad');
INSERT INTO ItemKeyword VALUES(00000387, 'marinade');

INSERT INTO Item VALUES(00000019, 00000388, 'Vegetarian pizza', 'Onion, capsicum, pineapple, mushroom, kalamata, olives, tomato & cheese.', 1, 24.00, 0, null, 0, 0, 0, 4.1, 'main');
INSERT INTO ItemReview VALUES(00000388, '', '', 4.1);
INSERT INTO ItemKeyword VALUES(00000388, 'pizza');
INSERT INTO ItemKeyword VALUES(00000388, 'veg');
INSERT INTO ItemKeyword VALUES(00000388, 'onion');
INSERT INTO ItemKeyword VALUES(00000388, 'pineapple');
INSERT INTO ItemKeyword VALUES(00000388, 'mushroom');

INSERT INTO Item VALUES(00000019, 00000389, 'Chicken pizza', 'Chicken, onion, capsicum, pineapple, mushroom, kalamata olives & cheese.', 1, 24.00, 0, null, 0, 0, 0, 2.7, 'main');
INSERT INTO ItemReview VALUES(00000389, '', '', 2.7);
INSERT INTO ItemKeyword VALUES(00000389, 'pizza');
INSERT INTO ItemKeyword VALUES(00000389, 'chicken');
INSERT INTO ItemKeyword VALUES(00000389, 'onion');
INSERT INTO ItemKeyword VALUES(00000389, 'olives');
INSERT INTO ItemKeyword VALUES(00000389, 'cheese');

INSERT INTO Item VALUES(00000019, 00000390, 'BBQ chicken pizza', 'BBQ base, chicken, onion, capsicum, mushroom, tomato & cheese.', 1, 24.00, 0, null, 0, 0, 0, 2.0, 'main');
INSERT INTO ItemReview VALUES(00000390, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000390, 'pizza');
INSERT INTO ItemKeyword VALUES(00000390, 'bbq');
INSERT INTO ItemKeyword VALUES(00000390, 'pizza');
INSERT INTO ItemKeyword VALUES(00000390, 'tomato');
INSERT INTO ItemKeyword VALUES(00000390, 'cheese');

INSERT INTO Item VALUES(00000019, 00000391, 'Doner pizza', 'Doner, onion, capsicum, pineapple, mushroom, kalamata olives & cheese', 1, 24.00, 0, null, 0, 0, 0, 2.9, 'main');
INSERT INTO ItemReview VALUES(00000391, '', '', 2.9);
INSERT INTO ItemKeyword VALUES(00000391, 'doner');
INSERT INTO ItemKeyword VALUES(00000391, 'lamb');
INSERT INTO ItemKeyword VALUES(00000391, 'beef');
INSERT INTO ItemKeyword VALUES(00000391, 'olives');
INSERT INTO ItemKeyword VALUES(00000391, 'capsicum');

INSERT INTO Item VALUES(00000019, 00000392, 'BBQ meat lovers', 'BBQ base, shredded beef, pepperoni, cabanossi & cheese.', 1, 24.00, 0, null, 0, 0, 0, 4.4, 'main');
INSERT INTO ItemReview VALUES(00000392, '', '', 4.4);
INSERT INTO ItemKeyword VALUES(00000392, 'pizza');
INSERT INTO ItemKeyword VALUES(00000392, 'meat lovers');
INSERT INTO ItemKeyword VALUES(00000392, 'cabanossi');
INSERT INTO ItemKeyword VALUES(00000392, 'bbq');
INSERT INTO ItemKeyword VALUES(00000392, 'beef');

INSERT INTO Item VALUES(00000019, 00000393, 'Beef burger', 'lettuce, tomato, onion, cheese & sauce.', 1, 13.00, 0, null, 0, 0, 0, 2.6, 'main');
INSERT INTO ItemReview VALUES(00000393, '', '', 2.6);
INSERT INTO ItemKeyword VALUES(00000393, 'burger');
INSERT INTO ItemKeyword VALUES(00000393, 'burger');
INSERT INTO ItemKeyword VALUES(00000393, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000393, 'tomato');
INSERT INTO ItemKeyword VALUES(00000393, 'cheese');

INSERT INTO Item VALUES(00000019, 00000394, 'Chicken burger', 'grilled chicken breast fillet, lettuce, cheese & mayo.', 1, 13.00, 0, null, 0, 0, 0, 3.4, 'main');
INSERT INTO ItemReview VALUES(00000394, '', '', 3.4);
INSERT INTO ItemKeyword VALUES(00000394, 'burger');
INSERT INTO ItemKeyword VALUES(00000394, 'chicken');
INSERT INTO ItemKeyword VALUES(00000394, 'grilled');
INSERT INTO ItemKeyword VALUES(00000394, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000394, 'mayo');

INSERT INTO Item VALUES(00000019, 00000395, 'Veggie burger', 'Lettuce & mayo.', 1, 10.00, 0, null, 0, 1, 0, 2.0, 'main');
INSERT INTO ItemReview VALUES(00000395, '', '', 2.0);
INSERT INTO ItemKeyword VALUES(00000395, 'burger');
INSERT INTO ItemKeyword VALUES(00000395, 'veg');
INSERT INTO ItemKeyword VALUES(00000395, 'lettuce');
INSERT INTO ItemKeyword VALUES(00000395, 'layo');
INSERT INTO ItemKeyword VALUES(00000395, 'bun');

INSERT INTO Item VALUES(00000019, 00000396, 'Fish & chips', 'Battered fish fillet served with side of chips.', 1, 13.00, 0, null, 0, 0, 0, 4.2, 'main');
INSERT INTO ItemReview VALUES(00000396, '', '', 4.2);
INSERT INTO ItemKeyword VALUES(00000396, 'fish');
INSERT INTO ItemKeyword VALUES(00000396, 'chips');
INSERT INTO ItemKeyword VALUES(00000396, 'battered');
INSERT INTO ItemKeyword VALUES(00000396, 'fillet');
INSERT INTO ItemKeyword VALUES(00000396, 'sauce');

INSERT INTO Item VALUES(00000019, 00000397, 'Soup', 'Lenai soup.', 1, 7.00, 0, null, 1, 1, 1, 2.8, 'entree');
INSERT INTO ItemReview VALUES(00000397, '', '', 2.8);
INSERT INTO ItemKeyword VALUES(00000397, 'soup');
INSERT INTO ItemKeyword VALUES(00000397, 'lenai');
INSERT INTO ItemKeyword VALUES(00000397, 'starter');
INSERT INTO ItemKeyword VALUES(00000397, 'lentis');
INSERT INTO ItemKeyword VALUES(00000397, 'garlic');

INSERT INTO Item VALUES(00000019, 00000398, 'Kids meal', '6 nuggets, chips & pop top drink.', 1, 12.00, 0, null, 0, 0, 0, 4.3, 'kids');
INSERT INTO ItemReview VALUES(00000398, '', '', 4.3);
INSERT INTO ItemKeyword VALUES(00000398, 'nugget');
INSERT INTO ItemKeyword VALUES(00000398, 'chips');
INSERT INTO ItemKeyword VALUES(00000398, 'small');
INSERT INTO ItemKeyword VALUES(00000398, 'children');
INSERT INTO ItemKeyword VALUES(00000398, 'deal');

ENABLE TRIGGER AVGratingI ON Item;
ENABLE TRIGGER AVGratingR ON Item;

INSERT INTO Item VALUES(00000019, 00000399, 'Chocolate baklava', null, 1, 19.00, 0, null, 0, 1, 0, 3.3, 'desert');
INSERT INTO ItemReview VALUES(00000399, '', '', 3.3);
INSERT INTO ItemKeyword VALUES(00000399, 'chocolate');
INSERT INTO ItemKeyword VALUES(00000399, 'baklava');
INSERT INTO ItemKeyword VALUES(00000399, 'sweet');
INSERT INTO ItemKeyword VALUES(00000399, 'butter');
INSERT INTO ItemKeyword VALUES(00000399, 'nuts');