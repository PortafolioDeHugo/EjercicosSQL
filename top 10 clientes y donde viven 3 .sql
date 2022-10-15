(SELECT Distinct customer.customer_id as id , (concat(customer.First_name , " ", customer.last_name)) as "Name" ,
 address.address , city.city , country.country ,count(rental.rental_id) as 'catidad de peliculas alquiladas'
from customer 
join rental on Rental.customer_id = customer.customer_id 
join address on customer.address_id =address.address_id
join city on address.city_id = city.city_id
join country on country.country_id = city.country_id
join payment on payment.customer_id = customer.customer_id and payment.rental_id = rental.rental_id
WHERE active = TRUE
group by id
order by count(rental.rental_id) desc
limit 10

);