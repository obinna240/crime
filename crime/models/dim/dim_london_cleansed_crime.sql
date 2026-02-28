with src_london_crime as (
    select * from {{ ref('src_london_crime') }}
)
select 
    lsoa_code,
    borough,
    major_crime_category,
    minor_crime_category,
    value as total_offences,
    year,
    month,
    format_date('%B', date(YEAR, month, 1)) as string_month
from 
    src_london_crime


    

