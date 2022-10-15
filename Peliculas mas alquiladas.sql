select film.title AS Titulo, film.rental_rate ,
COUNT(payment.payment_id) as "Cantidad de veces alquilada",
 AVG(payment.amount)/film.rental_rate "Sobre alquiler en dias"
from inventory
join rental on inventory.inventory_id = rental.inventory_id
join film on film.film_id =inventory.film_id
join payment on payment.rental_id = rental.rental_id 
group by film.title
order by COUNT(payment.payment_id) desc
limit 10 ;
Peliculas mas alquiladas

Enviar mensaje a @bannedinlegacy
