
(SELECT Distinct customer.customer_id as "ID" , (concat(customer.First_name , " ", customer.last_name)) as "Name",
 address.address , city.city , country.country, count(rental.rental_id) as "N°deAlquileres"
from customer 
join rental on Rental.customer_id = customer.customer_id
join address on customer.address_id =address.address_id
join city on address.city_id = city.city_id
join country on country.country_id = city.country_id

WHERE active = TRUE
group by ID
order by  N°deAlquileres desc
limit 10
);
satanas

(select distinct  customer.customer_id as "ID" ,(concat(customer.First_name , " ", customer.last_name)) as "Name" , count(payment.payment_id) as "N°deAlquileres" 
from customer 
join rental on Rental.customer_id = customer.customer_id
join address on customer.address_id =address.address_id
join city on address.city_id = city.city_id
join country on country.country_id = city.country_id
join payment on payment.customer_id = customer.customer_id and payment.rental_id =rental.rental_id
where active = 1
group by ID
order by N°deAlquileres desc
limit 10
);