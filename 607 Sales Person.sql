# Write your MySQL query statement below

# approach 1 - using not in 

-- SELECT name FROM SalesPerson 
-- WHERE sales_id not in
-- (select sales_id FROM Orders
-- where com_id=(select com_id from Company where name ='RED'));


# appraoch 2 

-- select s.name from SalesPerson s
--  where s.name not in

-- (select s.name from SalesPerson s 
-- left join Orders o ON s.sales_id = o.sales_id
-- left join Company c ON o.com_id = c.com_id
-- where c.name = 'RED' )

#approach 3

SELECT s.name FROM SalesPerson s 
WHERE s.sales_id NOT IN (
		SELECT o.sales_id FROM Orders o
         LEFT JOIN Company c 
		  ON c.com_id=o.com_id 
		WHERE c.name="RED"
	);

