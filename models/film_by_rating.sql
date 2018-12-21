{{
config(materialized='table')
}}

with film as (

select * from {{ ref('film') }}

)

select rating, count(*)
from film
group by 1
