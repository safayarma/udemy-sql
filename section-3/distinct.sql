#How many distinct renters per month

select
	left(r.rental_date, 7) as 'Month',
	
from
	rental r
where

group by
;