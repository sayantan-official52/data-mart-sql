-- 4. What is the total sales for each region for each month?
select 
region, monthname(week_date) as month_name, month_number, sum(sales) as monthly_sales
from data_mart.clean_weekly_sales
group by region, month_name, month_number
order by month_number
