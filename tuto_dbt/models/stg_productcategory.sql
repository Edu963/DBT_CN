{{ config(materialized='table') }}
{{ config(schema='staging') }}


SELECT productcategoryid as product_category_id, 

       name

FROM dwh_raw.productcategory 
