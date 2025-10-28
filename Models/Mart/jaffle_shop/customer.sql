
with customers as (
    select * from {{ ref('stg_customers') }}
),

orders as (
    select * from {{ ref('stg_orders') }}
),

employee as (
    select * from {{ ref('dbt_training.seeds') }}
)

customer_orders as (
    select
        customers.id,
        customers.name,
        count(orders.id) as number_of_orders
    from customers
    left join orders on customers.id = orders.customer
    group by customers.id, customers.name
)
