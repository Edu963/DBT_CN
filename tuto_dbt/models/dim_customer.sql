{{ config(materialized='table', schema = 'core') }}

with sq as (
	select
	 stg_store.*,
	 stg_customer.*
	
	 from dwh_staging.stg_store 
	 left join dwh_staging.stg_customer  on dwh_staging.stg_customer.store_id  = dwh_staging.stg_store.business_id 
)
select 
	sq.*,
	stg_person.*
from sq
left join dwh_staging.stg_person on dwh_staging.stg_person.business_entity_id = sq.person_id
