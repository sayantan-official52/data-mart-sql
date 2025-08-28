create table data_mart.clean_weekly_sales as 
select
str_to_date(week_date, '%d/%m/%y') as week_date,
ceil(day(str_to_date(week_date, '%d/%m/%y'))/7) as week_number,
month(str_to_date(week_date, '%d/%m/%y')) as month_number,
year(str_to_date(week_date, '%d/%m/%y')) as calender_year,
region,
platform,
coalesce(nullif(segment, 'null'), 'unknown') AS segment,
case 
when segment like '%1' then 'Young Adults'
when segment like '%2' then 'Middle Aged'
when segment like '%3' or segment like '%4' then 'Retirees'
else 'unknown'
end as age_band,
case 
when segment like 'C%' then 'Couples'
when segment like 'F%' then 'Families'
else 'unknown'
end as demographic,
customer_type,
transactions,
sales,
round((sales/transactions),2) as avg_transaction
from data_mart.weekly_sales
