{{ config(materialized='table') }}
{{ config(schema='staging') }}


SELECT businessentityid as business_entity_id,
       firstname as first_name, 
       middlename as middle_name, 
       lastname as last_name,
       persontype as person_type,
       modifieddate as modified_date,
       emailpromotion as email_promotion,
       rowguid
FROM dwh_raw.person 
