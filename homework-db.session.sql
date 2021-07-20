-- Question 1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY actor;
-- Answer 1. There are two actors with the last name "Wahlberg".





-- Question 2. How many payments were made between $3.99 and $5.99?
SELECT *
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer 2. There are 5607 payments made between $3.99 and $5.99.





-- Question 3. What film does the store have the most of? (search in inventory)
SELECT film_id, MAX(inventory_id)
FROM inventory
GROUP BY film_id
ORDER BY film_id DESC limit 1;
-- Answer 3. There are 4,581 film_id 1000 in inventory.





-- Question 4. How many customers have the last name ‘William’?
SELECT *
FROM actor
WHERE last_name = 'William';
-- Answer 4. There's zero last names of William.





-- Question 5. What store employee (get the id) sold the most rentals?
SELECT COUNT(rental_id), staff_id
FROM rental
GROUP BY staff_id;
-- Answer 5. Staff 1 sold the most rentals: 8084 





-- Question 6. How many different district names are there?
SELECT COUNT(district)
FROM address;
-- Answer 6. There are 603 different district names.





-- Question 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(*), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(*) DESC limit 1;
-- Answer 7. film_id 508 has 15 actors.





-- Question 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name
FROM customer
WHERE last_name LIKE '%es'
GROUP BY last_name;
-- Answer 8. There are 21 last names ending in 'es'.





-- Question 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount), amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250
ORDER BY amount;
-- Answer 9. Three payment amounts had a number of rentals above 250 for customer_id 380 to 430.





-- Question 10. Within the film table, how many rating categories are there? And what rating has the most
movies total?
SELECT COUNT(rating), rating
FROM film
GROUP BY rating
-- Answer 10. There are five rating categories with PG-13 containing the most movies.