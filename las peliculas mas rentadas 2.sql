SELECT count(rental_rate) 
FROM sakila.film
where rental_rate="4.99"
union 
select film_id 
from sakila.film 
where rental_rate="4.99" ;