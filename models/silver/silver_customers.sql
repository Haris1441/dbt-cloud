select
    customer_id,
    trim(customer_name) as customer_name,

    lower(trim(contact.email)) as email,
    trim(contact.phone.country_code) as phone_country_code,
    trim(contact.phone.number) as phone_number,

    created_at,
    updated_at,

    _loaded_at,
    _batch_id,
    _source_system

from {{ ref('bronze_customers_nested') }}