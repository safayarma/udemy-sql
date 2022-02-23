#Number of distinct renters per month
SELECT
	left(r.rental_date, 7) as "Month", count(r.rental_id) as "Total Rentals", 
	count(distinct r.customer_id) as "Unique Renters", count(r.rental_id)/
	count(distinct r.customer_id) as "Avg Num Rentals Per Renter"
FROM
	rental r
GROUP BY
	1
;