{{ config(materialized='view') }}

SELECT
    user_id,
    gender,
    age,
    occupation,
    city_category,
    stay_in_current_city_years,
    marital_status
FROM {{ ref('stg_walmart_raw') }}
GROUP BY 1, 2, 3, 4, 5, 6, 7
