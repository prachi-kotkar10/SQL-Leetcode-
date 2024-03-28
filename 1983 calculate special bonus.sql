# Write your MySQL query statement below

-- SELECT employee_id , salary as bonus FROM Employees
-- WHERE employee_id % 2 <> 0 -- Check if employee_id is odd
-- AND LEFT(name, 1) <> 'M'  -- Check if name doesn't start with 'M'

-- Union 

-- select employee_id , 0 as bonus 
-- from Employees
-- where  employee_id % 2 = 0 -- Check if employee_id is odd
-- or name like 'M%' 
-- order by employee_id; 


-- OR 

   select employee_id , 
   case when employee_id%2 <>0 and name not like 'M%' then salary 
   else 0
   end 
   as bonus
   from employees
   order by employee_id;


