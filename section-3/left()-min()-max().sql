#left(), MIN(), MAX()
LEFT()
MIN()
MAX()

#How many rentals we had per month
SELECT
	left(r.rental_date, 7) as "Rental Date", count(r.rental_id) as "Number of Rentals"
FROM
	rental r
GROUP BY
	1
ORDER BY
	2 desc
;

#First and last rental dates of each movie
SELECT
	f.title as "Film Title", MIN(r.rental_date) as "First Rental Date", MAX(r.rental_date) as "Last Rental Date"
FROM
	film f, inventory i, rental r
WHERE
	f.film_id = i.film_id
	AND
	i.inventory_id = r.inventory_id
GROUP BY
	f.film_id
;