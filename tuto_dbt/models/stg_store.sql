{{ config(materialized='table', schema = 'staging') }}

SELECT 
	s.businessentityid as business_id,
	s.storename as store_name,
	s.salespersonid as Account_Executive
	

   
FROM dwh_raw.store s