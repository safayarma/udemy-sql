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