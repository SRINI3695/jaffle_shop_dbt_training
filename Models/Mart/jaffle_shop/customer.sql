
Select *
from {{ ref('stg_customers') }}


Select *
from {{ ref('stg_orders') }}


Select * 
from dbt_training.jaffle_shop.customers
WHERE NAME LIKE ('Srini%')