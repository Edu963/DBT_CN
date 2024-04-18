{{ config(materialized='table', schema = 'core') }}

with sq as (
	select
	 stg_store.*,
	 stg_customer.*
	
	 from {{ ref ('stg_customer')}}
	 left join {{ ref ('stg_store')}}  on stg_customer.store_id  = stg_store.business_id 
)
select 
	sq.*,
	stg_person.*
from sq
left join {{ ref ('stg_person')}}stg_person on stg_person.business_entity_id = sq.person_id
