#EVERY CUSTOMER'S LAST RENTAL DATE
select
	concat(c.first_name, ' ', c.last_name) as 'Name',
	c.email as 'Email',
	max(r.rental_date) as 'Last Rental Date'
from
	customer c,
	rental r	
where
	r.customer_id = c.customer_id
group by
	c.customer_id
;

#REVENUE BY EACH MONTH
select
	left(p.payment_date, 7) as 'Month',
	sum(p.amount) as 'Monthly Revenue'
from
	payment p
group by
	1
;