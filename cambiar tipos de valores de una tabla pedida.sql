select 
customer.customer_id as id,
customer.email,
count(payment.amount) as payments_count,
sum(payment.amount) as total_amount
from customer
join payment on payment.customer_id=customer.customer_id
group by customer.customer_id 
order by  count(payment.amount) desc
;


(SELECT Distinct customer.customer_id as id 
 ,count(rental.rental_id) as 'catidad de peliculas alquiladas'
from customer 
join rental on Rental.customer_id = customer.customer_id 
join payment on payment.customer_id = customer.customer_id and payment.rental_id = rental.rental_id

group by id
order by count(rental.rental_id) desc
limit 10

);
;

select customer.customer_id as id,
customer.email,
count(payment.amount) as payments_count,
sum(payment.amount) as total_amount 
from customer
join payment on payment.customer_id=customer.customer_id
group by customer.customer_id 
order by total_amount desc
limit 10;


select customer.customer_id ,
customer.email,
count(payment.amount) as payments_count,
sum(cast(payment.amount as float)) as total_amount 
from customer
join payment on payment.customer_id=customer.customer_id
group by customer.customer_id 
order by total_amount desc
limit 10;



SELECT
  c.customer_id,
  c.email,
  COUNT(p.customer_id)::INT AS payments_count,
  SUM(p.amount)::FLOAT AS total_amount

