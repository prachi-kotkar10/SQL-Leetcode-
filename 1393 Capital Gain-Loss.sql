# Write your MySQL query statement below

# step 1 - to separate buy and sell operation 

-- select stock_name, if(operation = 'Buy', price , 0) as Buy , 
-- if(operation ='Sell', price, 0) as Sell
-- from Stocks

#step 2 - calculate the sum 

-- select stock_name, sum(if(operation = 'Buy', price , 0)) as buy_total , 
-- sum(if(operation ='Sell', price, 0)) as sell_total
-- from Stocks
-- group by stock_name

# step 3 - final ans
select stock_name, sum(if(operation ='Sell', price, 0)) - sum(if(operation = 'Buy', price , 0)) as capital_gain_loss
from Stocks
group by stock_name