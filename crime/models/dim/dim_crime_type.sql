with distinct_rows as 
    (SELECT distinct major_crime_category as cat
  FROM {{ ref('src_london_crime') }} order by cat desc)
,
numbered as (select cat, row_number() over (order by cat) as id from distinct_rows)
select * from numbered