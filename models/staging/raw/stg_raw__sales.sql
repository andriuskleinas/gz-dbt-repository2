with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id,
        revenue,
        quantity

    from source

)

SELECT
date_date,
orders_id,
pdt_id AS products_id,
revenue,
quantity
FROM `red-delight-402204.gz_raw_data.raw_gz_sales`
