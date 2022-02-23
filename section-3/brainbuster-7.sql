#Number of distinct films per month
SELECT
	left(r.rental_date, 7) as "Month", count(r.rental_id) as "Total Rentals",
	count(distinct i.film_id) as "Unique Films Rented", count(r.rental_id)/
	count(distinct i.film_id) as "Rentals Per Film"
FROM
	rental r, inventory i
WHERE
	r.inventory_id = i.inventory_id
GROUP BY
	1
;