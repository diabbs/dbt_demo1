{{
    config(
        materialized='view',
        alias='jointure_tw_table'
    )
}}

select *
from {{ ref('bikeshare_stations') }} bikeshare_stations
inner join {{ ref( 'bikeshare_trips')}} bikeshare_trip
on bikeshare_stations.station_id = bikeshare_trip.start_station_id
where 1 = 1
