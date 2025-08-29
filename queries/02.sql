-- 2. What range of week numbers are missing from the dataset?
select distinct week_number
from data_mart.clean_weekly_sales
order by week_number
