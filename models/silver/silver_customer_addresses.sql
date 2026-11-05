select
    c.customer_id,
    address_index,

    lower(trim(a.address_type)) as address_type,
    trim(a.city) as city,
    upper(trim(a.state_code)) as state_code,
    trim(a.postal_code) as postal_code,

    c._loaded_at,
    c._batch_id,
    c._source_system

from {{ ref('bronze_customers_nested') }} as c

cross join unnest(c.addresses) as a
    with offset as address_index