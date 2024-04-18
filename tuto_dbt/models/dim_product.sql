{{ config(materialized='table', schema = 'core') }}
with sq as (
    select
     stg_productsubcategory.sub,
     stg_productsubcategory.product,
     stg_productsubcategory.type,
     stg_productcategory.product_category_id,
     stg_productcategory.name
     from {{ ref ('stg_productsubcategory')}}
     left join {{ ref ('stg_productcategory')}}  on stg_productcategory.product_category_id  = stg_productsubcategory.product
)
select
    sq.sub,
    sq.product,
    sq.type,
    sq.product_category_id,
    sq.name as nam,
    stg_product.product_id,
    stg_product.name,
    stg_product.safety_stock_level,
    stg_product.finished_goods_flag,
    stg_product.class,
    stg_product.make_flag,
    stg_product.product_number,
    stg_product.re_order_point,
    stg_product.modified_date,
    stg_product.product_model_id,
    stg_product.weight_unit_measure_code,
    stg_product.standard_cost,
    stg_product.product_sub_category_id,
    stg_product.list_price,
    stg_product.days_to_manufacture,
    stg_product.product_line,
    stg_product.color,
    stg_product.sell_start_date,
    stg_product.weight
from sq
left join {{ ref ('stg_product')}} on stg_product.product_sub_category_id = sq.sub
