{{ config(materialized='table') }}
select 
    ID,
    NAME,
    CITY,
    MOBILE_NO,
    AMOUNT
from {{ source('raw', 'CUSTOMERS') }}