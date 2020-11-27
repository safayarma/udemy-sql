#Normal Question Answer
select count(title), rating
from film
group by rating
;

#Advanced Question Answer
select count(title), rating, rental_rate
from film
group by rating, rental_rate
;