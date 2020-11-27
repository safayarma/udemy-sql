#COUNT and GROUP BY
select count(title)
from film
where rental_rate = .99
;

select title, rental_rate
from film
group by rental_rate
;

select count(title), rental_rate
from film
group by rental_rate
;

#alternate
select count(title), rental_rate
from film
group by 2
;