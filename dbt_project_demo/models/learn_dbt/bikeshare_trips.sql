{{ config(materialized='table') }}

with source_data as (

SELECT * FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` LIMIT 1000

)

select *
from source_data