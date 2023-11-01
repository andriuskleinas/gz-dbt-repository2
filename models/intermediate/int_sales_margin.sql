SELECT
    (sales.quantity * CAST(product.purchase_price AS FLOAT64)) AS purchase_cost,
    ROUND(sales.revenue - (sales.quantity * CAST(product.purchase_price AS FLOAT64)),2) AS margin
FROM {{ ref('stg_raw__sales') }} AS sales
LEFT JOIN {{ ref('stg_raw__product') }} AS product
    ON sales.products_id = product.products_id