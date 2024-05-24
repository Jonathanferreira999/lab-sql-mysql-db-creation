# Display all available tables in the Sakila database.
SHOW TABLES
# Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
#Retrieve the following columns from their respective tables:
# 1. Titles of all films from the film table
SELECT title FROM film;
# 2. List of languages used in films, with the column aliased as language from the language table
SELECT name as language FROM language;
# 3. List of first names of all employees from the staff table
SELECT first_name from staff;
# Retrieve unique release years
SELECT DISTINCT release_year from film;
# Counting records for database insights:
# 1. Determine the number of stores that the company has.
SELECT COUNT(store_id) from store;
# 2. Determine the number of employees that the company has.
SELECT COUNT(staff_id) from staff;
# 3. Determine how many films are available for rent and how many have been rented.
SELECT COUNT(rental_id) from rental;
SELECT COUNT(rental_date) from rental;
# 4. Determine the number of distinct last names of the actors in the database.
SELECT COUNT(last_name) from actor;
# Retrieve the 10 longest films.
SELECT title FROM film ORDER BY LENGTH(title) DESC LIMIT 10;
# Use filtering techniques in order to retrieve all actors with the first name "SCARLETT"
SELECT * FROM actor WHERE first_name = 'SCARLETT';
#BONUS 1: Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minute
SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length >= 100;
#BONUS 2: Determine the number of films that include Behind the Scenes content
SELECT * FROM film WHERE special_features IS NOT NULL;