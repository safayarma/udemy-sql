# Join lecture temporary tables

#Create temporary table activeUsers
SELECT
	c.*, -- returns all columns in customer table
	a.phone
FROM
	customer c
		JOIN address a ON c.address_id = a.address_id
WHERE
	c.active = 1
GROUP BY
	1
;


/*
At least 30 rentals

customer_id, number of rentals, and last rental date

just using rental
*/
CREATE TEMPORARY TABLE rewardUser
SELECT
	r.customer_id as "Customer ID",
	count(r.rental_id) as "Number of Rentals",
	MAX(rental_date) as "Last Rental Date"
FROM
	rental r
GROUP BY
	1
HAVING
	count(r.rental_id) >= 30
;