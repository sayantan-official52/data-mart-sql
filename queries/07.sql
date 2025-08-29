-- 7. What is the percentage of sales by demographic for each year in the dataset?
select
demographic, calender_year,
round(sum(sales) * 100.0/sum(sum(sales)) over (partition by calender_year),2) as percent_sales
from data_mart.clean_weekly_sales
group by demographic, calender_year
order by calender_year, demographic
