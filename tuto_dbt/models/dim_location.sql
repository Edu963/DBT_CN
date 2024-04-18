{{ config(materialized='table', schema = 'core') }}
with sq as (
	select
		stg_stateprovince.country_code,
		stg_stateprovince.name,
		stg_stateprovince.state_province,
	 
	 	stg_countryregion.country_code as country_code1,
	  	stg_countryregion.name1 as country
	 
	
	FROM {{ref("stg_countryregion" )}} 
	left join  {{ ref ('stg_stateprovince')}} on stg_countryregion.country_code = stg_stateprovince.country_code 
)
select 
	sq.country_code,
	sq.name as state,
	sq.state_province, 
	sq.country,
	stg_address.adress_id,
	stg_address.adress,
	stg_address.city,
	stg_address.state_province_id,
	stg_address.postal_code
	
FROM sq
left join  {{ ref ('stg_address')}} on stg_address.state_province_id = sq.state_province

