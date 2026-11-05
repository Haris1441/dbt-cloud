select
    customer_id,
    customer_name,
    email,
    created_at,
    updated_at,
    contact,
    addresses,
    _loaded_at,
    _batch_id,
    _source_system
from {{ source('migration_raw', 'customers_nested') }}