select actor.first_name, actor.last_name, film.title
from film_actor
join actor on film_actor.actor_id = actor.actor_id
join film on film.film_id = film_actor.film_id
;