{{ config(materialized='table', schema = 'staging') }}

SELECT 
	s.salesreasonid as sales_reason,
	s.name,
	s.reasontype
	

   
from dwh_raw.salesreason s