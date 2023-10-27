{{
    config(materialized='table',
    schema='gold',
    alias='avg_reviews_by_host'
    )
}}

select host_id,
 avg(review_scores_rating) as review_scores_rating,
 avg(review_scores_accuracy) as review_scores_accuracy,
 avg(review_scores_cleanliness) as review_scores_cleanliness,
 avg(review_scores_checkin) as review_scores_checkin,
 avg(review_scores_communication) as review_scores_communication,
 avg(review_scores_location) as review_scores_location,
 avg(review_scores_value) as review_scores_value

from inside_airbnb_silver.public.listing
group by host_id

