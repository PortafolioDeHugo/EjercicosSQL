select film.title as "Titulo de pelicula", category.name 
from film as f
join film_category on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
