/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch other movies with the same actors.
 *
 * Write a SQL query SELECT query that:
 * Lists the title of all movies where at least 2 actors were also in 'AMERICAN CIRCUS'.
 * (You may choose to either include or exclude the movie 'AMERICAN CIRCUS' in the results.)
 */

-- film_id of 'AMERICAN CIRCUS' = 21

SELECT DISTINCT(film.title) FROM film
JOIN film_actor a ON film.film_id = a.film_id
JOIN film_actor b ON a.film_id = b.film_id
WHERE
a.actor_id IN (SELECT actor_id from film_actor WHERE film_id = 21) 
AND b.actor_id IN (SELECT actor_id FROM film_actor WHERE film_id = 21)
AND a.actor_id != b.actor_id;
