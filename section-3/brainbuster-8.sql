#How much revenue store 1 made over PG-13 and R movies

SELECT
	i.store_id as "Store", f.rating as "Film Rating", SUM(p.amount) as "Revenue"
FROM
	rental r, payment p, inventory i, film f
WHERE
	r.rental_id = p.rental_id
	AND
	r.inventory_id = i.inventory_id
	AND
	i.film_id = f.film_id
	AND
	i.store_id = 1
	AND
	f.rating in("PG-13", "R")
GROUP BY
	1, 2
ORDER BY 
	3 desc
;