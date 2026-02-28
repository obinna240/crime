with london_crime AS (
    select * from compute-1-367804.crime.london_crime
)
select 
    lsoa_code,
    borough,
    major_category as major_crime_category,
    minor_category as minor_crime_category,
    value,
    year,
    month
from 
    london_crime