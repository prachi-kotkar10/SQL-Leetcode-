# Write your MySQL query statement below

-- 1st step 00 just retrived the data and counted it 
-- select request_at as Day, 
-- round(Sum(if(Status != 'completed',0, 1))/ count(Status),2) As 'Cancellation Rate'
-- from Trips t
-- where request_at between '2013-10-01' AND '2013-10-03'
-- group by request_at

-- 2nd step - adding the banned condition 

select request_at as Day, 
round(Sum(if(Status != 'completed',1, 0))/ count(Status),2) As 'Cancellation Rate'
from Trips t
where request_at between '2013-10-01' AND '2013-10-03'
AND client_id NOT in (select users_id from Users where banned = 'Yes')
AND driver_id NOT in (select users_id from Users where banned = 'Yes')
group by request_at
