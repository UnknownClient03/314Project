USE RESTURANTS;

SELECT name, price FROM Item WHERE EXISTS(SELECT ResturantID FROM ResturantKeyword WHERE ResturantKeyword.ResturantID = Item.ResturantID AND kWord in ('chicken', 'pub')) OR
								   EXISTS(SELECT itemID FROM ItemKeyword WHERE ID = itemID AND kWord in ('chicken', 'pub'));


SELECT COUNT(items.ID) as precedence, name, price FROM (SELECT ID, name, price FROM Item WHERE EXISTS(SELECT ResturantID FROM ResturantKeyword WHERE ResturantKeyword.ResturantID = Item.ResturantID AND kWord in ('chicken', 'pub'))
													    UNION ALL
													    SELECT ID, name, price FROM Item WHERE EXISTS(SELECT itemID FROM ItemKeyword WHERE ID = itemID AND kWord in ('chicken', 'pub'))) AS Items GROUP BY Items.ID, name, price ORDER BY precedence DESC;


SELECT  FROM ResturantAccountDetails 