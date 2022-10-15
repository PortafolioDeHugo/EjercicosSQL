select film.title , payment.amount, film.rental_rate , payment.payment_id ,
SUM(payment.amount)as "Recaudacion Total"
from inventory
join rental on inventory.inventory_id = rental.inventory_id
join film on film.film_id =inventory.film_id
join payment on payment.rental_id = rental.rental_id 
group by film.title
order by SUM(payment.amount) desc
limit 10 ;