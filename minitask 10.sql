SELECT rental.rental_id,
	   rental.rental_date,
	   rental.return_date,
	   film.title as film_title,
	   customer.first_name as customer_name
FROM rental
LEFT JOIN film on film.film_id = rental.rental_id
LEFT JOIN customer on film.film_id = customer.customer_id

