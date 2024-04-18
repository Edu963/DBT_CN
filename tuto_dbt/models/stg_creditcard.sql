{{ config(materialized='table') }}
{{ config(schema='staging') }}


SELECT creditcardid as credit_card_id, 
       cardtype as card_type, 
       expyear as exp_year,
       modifieddate::date as modified_date,
       expmonth as exp_month,
       cardnumber as card_number
FROM dwh_raw.creditcard 
