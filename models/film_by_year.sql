with film as (

select * from {{ ref('film') }}

)

select release_year, count(*)
from film
group by 1
