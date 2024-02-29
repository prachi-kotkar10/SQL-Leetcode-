# Write your MySQL query statement below

-- select department,employee,salary from (select d.name as department,e.name as employee,e.salary as salary ,dense_rank() over(partition by departmentid order by salary desc) rank from employee e left join department d on e.departmentid=d.id) where rank<=3;


SELECT d.Name AS Department,e.Name AS Employee,Salary
FROM Employee e 
LEFT JOIN Department d
ON e.DepartmentId = d.Id
WHERE
(SELECT COUNT(DISTINCT Salary) FROM Employee t1
WHERE t1.DepartmentId = d.Id AND t1.Salary >= e.Salary) <= 3
AND d.Name IS NOT NULL;



-- Write your MySQL query statement below
-- SELECT Department, Employee, Salary
-- FROM (
--     SELECT 
--         d.name AS Department,
--         e.name AS Employee,
--         e.salary AS Salary,
--         DENSE_RANK() OVER (PARTITION BY d.name ORDER BY Salary DESC) AS rnk
--     FROM Employee e
--     JOIN Department d
--     ON e.departmentId = d.id
-- ) AS rnk_tbl
-- WHERE rnk <= 3;