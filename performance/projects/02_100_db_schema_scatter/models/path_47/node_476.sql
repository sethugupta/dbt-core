
    {{
    config(
        enabled=True,
        database=('bigdb3' if target.type in ('snowflake', 'bigquery') else target.get('database')),
        schema='bigschema0',
        materialized='table'
    )
    }}
    
    select 1 as fun, 'blue' as hue, true as is_cool, '2022-01-01' as date_day
    
union all
select * from {{ ref('node_0') }}
union all
select * from {{ ref('node_3') }}
union all
select * from {{ ref('node_18') }}
union all
select * from {{ ref('node_34') }}
union all
select * from {{ ref('node_162') }}
union all
select * from {{ ref('node_185') }}