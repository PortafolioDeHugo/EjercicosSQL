(SELECT Distinct customer.customer_id , (concat(customer.First_name , " ", customer.last_name)) as "Name" ,
 address.address , city.city , country.country,(sum(payment.amount)) as "consumo" ,count(rental.rental_id) as 'catidad de peliculas alquiladas'
from customer 
join rental on Rental.customer_id = customer.customer_id
join address on customer.address_id =address.address_id
join city on address.city_id = city.city_id
join country on country.country_id = city.country_id
join payment on payment.customer_id = customer.customer_id and payment.rental_id = rental.rental_id
WHERE active = TRUE
group by Name 
order by consumo desc
limit 10
);


