{{ config(materialized='table', schema = 'staging') }}
SELECT 
    p.productsubcategoryid as sub,
    p.productcategoryid as product,
    p.name as type

   
FROM dwh_raw.productsubcategory p 