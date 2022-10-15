SELECT customer.First_name , customer.last_name , address.address , city.city , country.country
from customer 
join rental on Rental.customer_id = customer.customer_id
join address on customer.address_id =address.address_id
join city on address.city_id = city.city_id
join country on country.country_id = city.country_id
