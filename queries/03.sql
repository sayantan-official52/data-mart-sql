-- 3. How many total transactions were there for each year in the dataset?
select
calender_year, sum(transactions) as yearly_transactions
from data_mart.clean_weekly_sales
group by calender_year
order by calender_year
