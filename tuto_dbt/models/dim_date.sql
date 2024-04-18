{{ config(materialized='table', schema = 'core') }}


SELECT date_day::date, 
    day_of_week, 
    day_of_week_name, 
    day_of_month,
    day_of_year
FROM {{ref("stg_date" )}} 
