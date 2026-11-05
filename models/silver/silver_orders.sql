select
    order_id,
    customer_id,

    order_timestamp,
    date(order_timestamp, 'UTC') as order_date,

    lower(trim(status)) as status,
    cast(amount as numeric) as amount,

    updated_at,

    _loaded_at,
    _batch_id,
    _source_system

from {{ ref('bronze_orders') }}