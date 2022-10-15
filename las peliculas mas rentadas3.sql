select film.title AS Titulo, AVG(payment.amount), film.rental_rate , COUNT(payment.payment_id) ,
SUM(payment.amount)as "Recaudacion Total", AVG(payment.amount)/film.rental_rate "Sobre alquiler en dias"
from inventory
join rental on inventory.inventory_id = rental.inventory_id
join film on film.film_id =inventory.film_id
join payment on payment.rental_id = rental.rental_id 
group by film.title
order by SUM(payment.amount) desc
limit 10;
