# Write your MySQL query statement below

-- breaking the query nd dry run in detail

-- select s.employee_id, s.salary, e.employee_id, e.name
-- from Employees e
-- left join Salaries s
-- ON e.employee_id = s.employee_id
-- where s.salary is null;

-- select s.employee_id, s.salary, e.employee_id, e.name
-- from Salaries s
-- left join Employees e
-- ON e.employee_id = s.employee_id;

-- actual answer below 


-- select s.employee_id
-- from Salaries s
-- left join Employees e
-- ON e.employee_id = s.employee_id
-- where e.name is null

-- Union

-- select e.employee_id
-- from Employees e
-- left join Salaries s
-- ON e.employee_id = s.employee_id
-- where s.salary is null;


-- OR another approach 

-- first part of below query gives id which are not present in salary 

SELECT employee_id from Employees e WHERE employee_id not in (Select employee_id from Salaries)
UNION 
SELECT employee_id from Salaries s WHERE employee_id not in (Select employee_id from Employees)
ORDER BY employee_id;