{{ config(materialized='table', schema = 'staging') }}
SELECT 
	s.countryregioncode as Country_Code,
	s.name,
	s.stateprovincecode as state_province
	

   
FROM dwh_raw.stateprovince s 