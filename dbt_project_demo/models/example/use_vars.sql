{{
    config(
        materialized='table',
        alias='use_variable'
    )
}}

select *
from {{ ref('bikeshare_stations') }} bikeshare_stations
where 1 = 1