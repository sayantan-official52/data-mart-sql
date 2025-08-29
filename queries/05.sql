-- 5. What is the total count of transactions for each platform?
select
platform, count(transactions) as transactions_count
from data_mart.clean_weekly_sales
group by platform
