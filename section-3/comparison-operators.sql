#Comparison operators (>, =)

=
>
<
>=
<=
<> - "Not Equal to"
!= - "Not Equal to"


#Users who have rented at least 3 times

SELECT
	r.customer_id as "Customer", count(r.rental_id) as "Number of Rentals"
FROM
	rental r
GROUP BY
	1
HAVING
	count(r.rental_id) >= 3
;


#How many rentals between June 8th and July 19th, 2005
SELECT
	count(rental_id)
FROM
	rental r
WHERE
	r.rental_date between "2005-06-08" and "2005-07-19"
;