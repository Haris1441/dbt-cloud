select
    customer_id,
    customer_name,
    email,
    created_at,
    updated_at,
    _loaded_at,
    _batch_id,
    _source_system
from {{ source('migration_raw', 'customers') }}