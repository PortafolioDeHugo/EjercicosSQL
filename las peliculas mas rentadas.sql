select film.title , rental.rental_id , customer.First_name, customer.last_name
from inventory
join rental on inventory.inventory_id = rental.inventory_id
join film on film.film_id =inventory.film_id
join customer on rental.customer_id =customer.customer_id 
where (Rental_rate="4.99") ;