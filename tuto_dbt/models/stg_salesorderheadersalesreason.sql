{{ config(materialized='table', schema = 'staging') }}

SELECT 
	s.salesorderid as order_id,
	s.salesreasonid as sales_reason

   
from dwh_raw.salesorderheadersalesreason s  