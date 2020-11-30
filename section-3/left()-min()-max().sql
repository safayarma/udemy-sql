#left(), min(), max()
left()
min()
max()

#How many rentals we had each month
select
	left(r.rental_date, 7),
	count(r.rental_id)
from
	rental r
group by
	1
order by
	2 desc
;

#First and last rental dates of each movie
select
	f.title as 'Film Title',
	max(r.rental_date) as 'Last Rental Date',
	min(r.rental_date) as 'First Rental Date'
from
	rental r,
	inventory i
where
	r.inventory_id = i.inventory_id
	and
	i.film_id = f.film_id
group by
	f.film_id
;