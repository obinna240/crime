{{
      config(
        materialized = 'incremental',
        on_schema_change='fail'
        )
}}
with src_london_crime as(
    select * from {{ ref('src_london_crime') }}
)
select * from src_london_crime

{% if is_incremental() %}
  where entry_date  > (select max(entry_date) from {{ this }})
{% endif %}
