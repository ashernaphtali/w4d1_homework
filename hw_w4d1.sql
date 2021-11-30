--1. How many actors are there with the last name ‘Wahlberg’?

SELECT count(last_name)
FROM actor
WHERE last_name = 'Wahlberg';


-- 2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

-- 3. What film does the store have the most of? (search in inventory)

SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY count desc;

-- 4. How many customers have the last name ‘William’?

SELECT count(last_name) 
FROM customer
WHERE last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, SUM(amount)
FROM payment
GROUP BY staff_id 
ORDER BY sum(amount) DESC;


-- 6. How many different district names are there?

SELECT count(DISTINCT district)
FROM address


-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT max(actor_id) as yahoo
FROM film_actor
GROUP BY film_id
ORDER BY yahoo desc;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

SELECT COUNT(rental_id), amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(rental_id) > 250;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT DISTINCT rating, count(title)
FROM film
GROUP BY rating;

