#revenue per video title
# revenue = price * number of rentals

select 
  f.title as "Film Title",
  count(r.rental_id) "Number of Rentals",
  f.rental_rate "Rental Rate",
  count(r.rental_id) * f.rental_rate as Revenue
from 
  film f,
  inventory i,
  rental r
where
  f.film_id = i.film_id
  and
  i.inventory_id = r.inventory_id
group by
  1
order by
  4 desc
;

sum()

#what customer has paid us the most money
select
  p.customer_id, sum(p.amount)
from
  payment p
group by
  1
order by
  2 desc
;