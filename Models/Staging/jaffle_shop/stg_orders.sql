select
    id,
    customer,
    ordered_at,
    subtotal,
    tax_paid,
    order_total
from dbt_training.jaffle_shop.orders
