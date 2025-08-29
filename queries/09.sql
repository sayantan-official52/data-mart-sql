-- 9. Can we use the avg_transaction column to find the average transaction size for each year for Retail vs Shopify? If not - how would you calculate it instead?
select 
platform, calender_year, sum(sales), sum(transactions),
round(sum(sales) * 1.0/sum(transactions),2) as avg_tran_size
from data_mart.clean_weekly_sales
group by platform, calender_year
order by calender_year, platform
