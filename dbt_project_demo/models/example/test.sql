{{ config(materialized='table') }}

with source_data as (

SELECT * FROM `bigquery-public-data.america_health_rankings.ahr` LIMIT 1000

)

select *
from source_data
