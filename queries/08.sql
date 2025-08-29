-- 8. Which age_band and demographic values contribute the most to Retail sales?
select 
age_band, demographic, sum(sales) as retail_sales
from data_mart.clean_weekly_sales
where platform = "Retail"
group by age_band, demographic
order by retail_sales desc
limit 1
