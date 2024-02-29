# Write your MySQL query statement below

with cte as (
    select num,
    lead(num,1) over() as num1,
    lead(num,2) over() num2
    from logs

)
select distinct num as ConsecutiveNums from cte where (num=num1) and (num=num2)

-- Approach 2 without windows Function 

-- SELECT distinct 
--     i1.num as ConsecutiveNums 
-- FROM 
--     logs i1,
--     logs i2,
--     logs i3
-- WHERE 
--     i1.id=i2.id+1 AND 
--     i2.id=i3.id+1 AND 
--     i1.num=i2.num AND 
--     i2.num=i3.num