# How many times has each movie been rented out?

select 
  f.title,
  count(r.rental_id)
from 
  film f,
  inventory i,
  rental r
where
  f.film_id = i.film_id
  and
  i.inventory_id = r.inventory_id
group by
  f.title
;