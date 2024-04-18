{{ config(materialized='table') }}
{{ config(schema='staging') }}


SELECT countryregioncode as country_code, 
        modifieddate::date as modified_date,
        name AS name1
FROM dwh_raw.countryregion