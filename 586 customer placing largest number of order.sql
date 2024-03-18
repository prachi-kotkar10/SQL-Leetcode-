# Write your MySQL query statement below
-- very lengthy method 
-- with main_table as 
-- ( select *, count(customer_number) as customer_count 
-- from Orders
-- group by customer_number )

-- select customer_number from main_table
-- where customer_count = (SELECT MAX(customer_count) FROM main_table);


SELECT customer_number FROM Orders
GROUP BY customer_number
ORDER BY COUNT(customer_number)
DESC LIMIT 1;

