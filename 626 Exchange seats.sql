with cte as 
( SELECT 
        id, 
        student,
        LEAD(id) OVER (ORDER BY id) AS next,
        LAG(id) OVER (ORDER BY id) AS prev
    FROM 
        seat )

 select 
 case 
 when ((id % 2 = 1)AND next is not null ) then next 
 when (id %2 =0) then prev
 else id 
 end as id, student
 from cte 
 order by id
