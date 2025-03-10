use walmart_db; 
select * from walmart limit 3;
select payment_method,
count(*) 
from walmart 
group by payment_method ;

select count(distinct branch) from walmart;

select * from walmart limit 5;

## Business Problems ##
#Q1:-
#Find different payment methods and number of transactions, number of qty sold 

select payment_method,count(*) as  no_of_payments,sum(quantity) as no_of_quantity_sold 
from walmart 
group by payment_method;


#Q2:-
# Identify the highest-rated category in each branch,displaying the branch,category ,avg rating 

select * 
from 
(
select branch,category,avg(rating) as avg_rating,
RANK() over(partition by branch order by avg(rating) desc) as Rank_column
from walmart
group by 1,2 
) AS ranked_data
where Rank_column = 1;


#Q3:- 
#Identify the busiest day for each branch based on the number of transactions 

SELECT date, STR_TO_DATE(date, '%d/%m/%y') AS formatted_date
FROM walmart;

select * from
(
select 
branch,
DAYNAME(STR_TO_DATE(date, '%d/%m/%y')) AS day_name,
count(*) as no_transactions,
RANK() OVER (Partition by branch order by count(*) desc ) as rank_column
from walmart
group by 1,2
) as ranked_data
where rank_column = 1;


#QQ4:-
#Calculate the total quantity of items sold per payment method. List payment_method and total_quantity.

select 
payment_method,
-- count(*) as no_payments,
sum(quantity) as no_qty_sold
from walmart  
group by payment_method;

# Q5:- 
# Determine the average,minimum and maximum rating of category for each city.
# List the city,average_rating,min_rating and max_rating.

select 
city,
category,
min(rating) as min_rating,
max(rating) as max_rating,
avg(rating) as avg_rating
from walmart
group by 1,2; 


#Q6:- 
# Calculate the total profit for each category by considering total_profit as 
# (unit price * quantity * profit_margin) .List category and total_profit ,ordered from highest to lowest profit.

select 
category,
sum(total) as total_revenue,
sum(total * profit_margin) as profit
from walmart 
group by 1 ;

#Q7:- 
#Determine the most common payment method for each branch. Display Branch and the prefered_payment_method 
with cte as (
select branch,payment_method,count(*) as total_trans,
Rank() over(Partition by branch order by count(*) desc) as rank_column
from walmart 
group by 1,2
)
select * from cte where rank_column = 1;

#Q8:-
# Categorize sales into 3 groups morning,afternoon,evening
# Find out which of the shift and number of invoices 


SELECT 
branch,
       CASE 
           WHEN EXTRACT(HOUR FROM time) < 12 THEN "MORNING"
           WHEN EXTRACT(HOUR FROM time) BETWEEN 12 AND 17 THEN "AFTERNOON"
           ELSE "EVENING"
       END AS day_time,
       count(*)
FROM walmart
group by 1,2
order by 1,3 desc;


#Q9:- 
# Identify 5 Branch with highest decrease ratio in 
# revenue compare to last year(current year 2023 and last year 2022) 

-- revenue_decrease_ratio
-- rdr = last_rev - curr_rev/last_rev*100

select *,Year(STR_TO_DATE(date, '%d/%m/%y')) AS formatted_date
from walmart;

-- 2022 sales for each Branch
with revenue_2022 as
(
select 
branch,
sum(total) as revenue 
from walmart 
where Year(STR_TO_DATE(date, '%d/%m/%y')) = 2022
group by 1 
),
revenue_2023 as
(
select 
branch,
sum(total) as revenue 
from walmart 
where Year(STR_TO_DATE(date, '%d/%m/%y')) = 2023
group by 1 
)
select ls.branch,ls.revenue as last_year_revenue,
cs.revenue as cr_year_revenue,
Round((CAST(ls.revenue AS DECIMAL) - CAST(cs.revenue AS DECIMAL)) / CAST(ls.revenue AS DECIMAL) * 100,2) as rev_dec_ratio
 from revenue_2022 as ls
 join 
   revenue_2023 as cs 
   on ls.branch = cs.branch
where ls.revenue > cs.revenue 
order by 4 desc
limit 5

