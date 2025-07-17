{{ config(materialized='view') }}

SELECT
    user_id,
    product_id,
    gender,
    age,
    occupation,
    city_category,
    stay_in_current_city_years,
    marital_status,
    product_category,
    purchase
FROM {{ source('public', 'walmart_raw') }}


