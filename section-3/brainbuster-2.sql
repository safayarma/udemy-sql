select count(title), rating
from film
group by rating
;

select count(title), rating, rental_rate
from film
group by rating, rental_rate
;