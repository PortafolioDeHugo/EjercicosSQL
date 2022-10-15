select film.title , payment.amount, film.rental_rate
from inventory
join rental on inventory.inventory_id = rental.inventory_id
join film on film.film_id =inventory.film_id
join payment on payment.rental_id = rental.rental_id
where (Rental_rate*amount="59.8301");