{{ config(materialized='view') }}

SELECT
    product_id,
    product_category
FROM {{ ref('stg_walmart_raw') }}
GROUP BY 1, 2
