{{ config(materialized='table', schema='staging') }}



SELECT addressid as address_id, 
        addressline1 as address, 
        city, 
        stateprovinceid::text as state_province_id,
        postalcode::text as postal_code,
        modifieddate::date as modified_date,
        rowguid
FROM dwh_raw.address
