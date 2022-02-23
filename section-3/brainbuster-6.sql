#Every customers last rental date
SELECT
	concat(c.first_name, " ", c.last_name) as "Name", c.email as "Email", MAX(r.rental_date) as "Last Rental Date"
FROM
	customer c, rental r
WHERE
	c.customer_id = r.customer_id
GROUP BY
	c.customer_id
ORDER BY
	3
;

#Revenue by each month
SELECT
	left(p.payment_date, 7) as "Date", SUM(p.amount) as "Revenue"
FROM
	payment p
GROUP BY
	1
;