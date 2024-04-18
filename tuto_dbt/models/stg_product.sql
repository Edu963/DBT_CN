{{ config(materialized='table') }}
{{ config(schema='staging') }}


SELECT productid as product_id,
       name,
       safetystocklevel as safety_stock_level,
       finishedgoodsflag as finished_goods_flag,
       class,
       makeflag as make_flag,
       productnumber as product_number,
       reorderpoint as re_order_point,
       modifieddate as modified_date,
       productmodelid as product_model_id,
       weightunitmeasurecode as weight_unit_measure_code,
       standardcost as standard_cost,
       productsubcategoryid as product_sub_category_id,
       listprice as list_price,
       daystomanufacture as days_to_manufacture,
       productline as product_line,
       color,
       sellstartdate::date as sell_start_date,
       weight,
       rowguid
FROM dwh_raw.product 
