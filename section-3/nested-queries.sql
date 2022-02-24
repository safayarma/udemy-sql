#Rentals per customer
SELECT
	rpc.num_rentals,
	count(distinct rpc.customer_id) as num_customers,
	sum(p.amount) as total_rev
FROM
	(
		SELECT
			r.customer_id, count(distinct r.rental_id) as num_rentals
		FROM
			rental r
		GROUP BY 1
	) as rpc,
	payment p
WHERE 
	rpc.customer_id = p.customer_id
	AND 
	rpc.num_rentals > 20
GROUP BY
	1;	