{{
    config(
        materialized='incremental',
        unique_key='ID',
        incremental_strategy='merge'
    )
}}

select * from {{ source('raw', 'CUSTOMERS') }}


/*
{{
    config(
        materialized='incremental',
        unique_key='ID',
        incremental_strategy='merge'
    )
}}

select * from {{ source('raw', 'CUSTOMERS') }}

{% if is_incremental() %}
  where updated_at > (select max(loaded_at) from {{ this }})
{% endif %}
*/
