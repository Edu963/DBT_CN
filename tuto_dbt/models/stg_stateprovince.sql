{{ config(materialized='table', schema = 'staging') }}
SELECT 
	s.countryregioncode as Country_Code,
	s.name,
	s.stateprovincecode as state_province,
	s.rowguid
	

   
FROM dwh_raw.stateprovince s 