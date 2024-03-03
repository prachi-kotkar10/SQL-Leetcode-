# Write your MySQL query statement below
-- 3 approaches 

-- 1. without sub query and join  submitted correctely 

-- select s.product_id, p.product_name from Product p
-- join Sales s on p.product_id = s.product_id
-- group by product_id
-- having max(s.sale_date) <= '2019-03-31' and min(s.sale_date) >= '2019-01-01'

 -- 2 with sub query and no join -- submitted correctely 

SELECT p.product_id, p.product_name
FROM Product p
WHERE p.product_id IN (
    SELECT s.product_id FROM Sales s GROUP BY s.product_id
    HAVING MAX(s.sale_date) <= '2019-03-31' AND MIN(s.sale_date) >= '2019-01-01');



-- 3 subquery and join -- submitted correctly 

-- WITH new_tbl AS

-- (SELECT a.product_id AS pid,a.product_name AS pname, b.sale_date AS sd
-- FROM Product AS a
-- INNER JOIN Sales AS b
-- ON a.product_id = b.product_id)

-- SELECT pid AS product_id,pname AS product_name
-- FROM new_tbl
-- WHERE pid NOT IN 
-- /* sub query to identify all the product id that were sold apart from requested dates.*/
-- (
-- SELECT pid FROM new_tbl 
-- WHERE sd NOT BETWEEN '2019-01-01' AND '2019-03-31'
-- )

-- /* use group by to obtain unique values */
-- GROUP BY pid