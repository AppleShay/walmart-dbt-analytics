{{ config(materialized='view') }}

SELECT
    user_id,
    product_id,
    purchase,
    product_category
FROM {{ ref('stg_walmart_raw') }}
