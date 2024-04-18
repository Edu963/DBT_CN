{{ config(materialized='table') }}
{{ config(schema='staging') }}


SELECT date_day::date, 
       day_of_week, 
       day_of_week_name, 
       day_of_month,
       day_of_year
FROM dwh_raw.date 
