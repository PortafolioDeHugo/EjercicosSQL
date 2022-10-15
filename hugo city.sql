SELECT city.city ,country.country_id , country.country
From country	
join city on city.country_id = country.country_id

