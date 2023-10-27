
{{
    config(materialized='table',
    schema='gold',
    alias='avg_price_by_listing'
    )
}}

select listing_id, avg(price_float) as avg_price
from inside_airbnb_silver.public.listing
group by listing_id

