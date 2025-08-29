-- 1. What day of the week is used for each week_date value?
select 
week_date,
dayname(week_date) as day_of_the_week
from data_mart.clean_weekly_sales
group by week_date, day_of_the_week
order by week_date
