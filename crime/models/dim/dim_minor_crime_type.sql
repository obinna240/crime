with distinct_minor_rows as 
    (SELECT distinct minor_crime_category as cat
  FROM {{ ref('src_london_crime') }} order by cat desc)
,
numbered_minor as (select cat, row_number() over (order by cat) as id from distinct_minor_rows)
select * from numbered_minor

    