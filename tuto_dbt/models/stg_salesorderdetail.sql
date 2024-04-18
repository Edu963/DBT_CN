{{ config(materialized='table', schema = 'staging') }}
SELECT 
    s.salesorderid as order_id,
    s.orderqty as quantity,
    s.salesorderdetailid as order_id_detail,
    s.unitprice as unit_price, 
    s.specialofferid as special_offer,
    s.modifieddate as date,
    s.productid as prduct_id
    


FROM dwh_raw.salesorderdetail s 
