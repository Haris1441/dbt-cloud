select
    order_id,
    customer_id,
    order_timestamp,
    status,
    amount,
    updated_at,
    _loaded_at,
    _batch_id,
    _source_system
from {{ source('migration_raw', 'orders') }}