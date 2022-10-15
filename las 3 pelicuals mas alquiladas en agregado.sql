select (SUM(payment.amount)*1.20) as "con un 20% mas",
 SUM(payment.amount)as "Recaudacion Total",
 COUNT(payment.payment_id) as "Cantidad de veces alquilada" 
from inventory
join rental on inventory.inventory_id = rental.inventory_id
join payment on payment.rental_id = rental.rental_id 
order by COUNT(payment.payment_id) desc
limit 3 ;


(select film.title AS Titulo, film.rental_rate ,COUNT(payment.payment_id) as cant_alq,
 SUM(payment.amount) AS Reca_total, SUM(payment.amount)*1.2 as Reca_mas_20 
from inventory
join rental on inventory.inventory_id = rental.inventory_id
join film on film.film_id =inventory.film_id
join payment on payment.rental_id = rental.rental_id 
group by film.title
order by COUNT(payment.payment_id) desc
limit 3)