-- 6. What is the percentage of sales for Retail vs Shopify for each month?
select
platform, calender_year, month_number, monthname(week_date) as month_name, 
round(sum(sales) * 100.0/sum(sum(sales)) over (partition by calender_year, month_number),2) as percent_sales
from data_mart.clean_weekly_sales
group by platform, calender_year, month_number, month_name
order by calender_year, month_number, platform
