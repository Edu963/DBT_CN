{{ config(materialized='table', schema = 'staging') }}

SELECT 
	s.salesorderid as order_id,
	s.shipmethodid as ship_method,
	s.taxamt as tax_amount,
	s.status,
	s.onlineorderflag as online_order,
	s.orderdate as order_date,
	s.subtotal,
	s.freight, 
	s.duedate as due_date,
	s.totaldue as total_due,
	s.customerid as customer_id,
	s.salespersonid as Account_Executive,
	s.rowguid
   
from dwh_raw.salesorderheader s 