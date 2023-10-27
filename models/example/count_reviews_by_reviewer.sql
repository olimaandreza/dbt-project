
{{
    config(materialized='table',
    schema='gold',
    alias='count_reviews_by_reviewer'
    )
}}

select reviewer_id, count(review_id) as count_reviews
from inside_airbnb_silver.public.review
group by reviewer_id

