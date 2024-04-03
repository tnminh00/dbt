SELECT *
FROM {{ ref('fct_reviews') }} AS r
JOIN {{ ref('dim_listings_cleansed') }} AS l ON l.listing_id = r.listing_id
WHERE r.review_date <= l.created_at
