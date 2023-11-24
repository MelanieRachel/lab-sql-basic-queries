
-- ## Challenge
-- Use the sakila database to do the following tasks:

-- 1. Show all tables. V
SELECT * FROM sakila.city;
USE sakila;
SHOW TABLES;

-- 2. Retrieve all the data from the tables `actor`, `film` and `customer`. V
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3. Retrieve the following columns from their respective tables: V
-- - 3.1 Titles of all films from the film table
SELECT * FROM sakila.film;
SELECT title FROM sakila.film;

-- - 3.2. List of languages used in films, with the column aliased as language from the language table V
SELECT * FROM sakila.language;
SELECT language_id,name FROM sakila.language;
SELECT name FROM language;
SELECT name AS language FROM sakila.language

-- - 3.3 List of first names of all employees from the staff table V
SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT * FROM sakila.film;
SELECT film_id,release_year FROM sakila.film;
SELECT distinct film_id,release_year FROM sakila.film;
SELECT distinct release_year FROM film;
SELECT COUNT(distinct release_year) FROM film;

-- 5. Counting records for database insights:
	-- - 5.1 Determine the number of stores that the company has.V
    SELECT * FROM sakila.store;
    SELECT store_id FROM store;
    SELECT COUNT(store_id) FROM store;
  
	-- - 5.2 Determine the number of employees that the company has.V
    SELECT * FROM sakila.staff;
    SELECT staff_id FROM staff;
    SELECT distinct staff_id FROM staff;
    SELECT COUNT(staff_id) FROM staff;
    
	-- - 5.3 Determine how many films are available for rent and how many have been rented.-V
    SELECT * FROM sakila.rental;
    SELECT distinct inventory_id, rental_date, return_date FROM rental;
	SELECT count(*) FROM rental; V
    SELECT distinct inventory_id FROM rental;
    SELECT distinct rental_date FROM rental;
    SELECT distinct return_date FROM rental;
    SELECT COUNT(inventory_id) FROM rental;
    SELECT COUNT(rental_date) FROM rental;
    SELECT COUNT(return_date) FROM rental;
    
    SELECT COUNT(*) FROM rental;
    SELECT COUNT(*) FROM film;

	-- - 5.4 Determine the number of distinct last names of the actors in the database. V
	SELECT * FROM sakila.actor;
    SELECT COUNT(DISTINCT last_name) FROM actor; 
    
-- 6. Retrieve the 10 longest films. V
SELECT * FROM sakila.film;
SELECT film_id,length FROM film;
SELECT DISTINCT film_id,length FROM film;
SELECT COUNT(DISTINCT film_id,length) FROM film;
SELECT COUNT(DISTINCT length) FROM film;
SELECT MAX(length) FROM film;

SELECT * FROM film
ORDER BY length DESC;

SELECT DISTINCT film_id,length FROM film
ORDER BY length DESC
LIMIT 10;

SELECT DISTINCT title,length FROM film
ORDER BY length DESC
LIMIT 10;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.  Use filtering techniques in order to:
	-- - 7.1 Retrieve all actors with the first name "SCARLETT". -V
    SELECT * FROM sakila.actor;
    SELECT * FROM actor
    WHERE first_name = 'Scarlett';
    
	-- - 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. -V
	SELECT * FROM sakila.film;
    SELECT *
    FROM film
    WHERE title LIKE '%ARMAGEDDON%';
    
		-- - *Hint: use `LIKE` operator. [More information here.](https://www.w3schools.com/sql/sql_like.asp)*
	-- - 7.3 Determine the number of films that include Behind the Scenes content -V
    SELECT * FROM sakila.film;
    SELECT COUNT(special_features) AS 'Behind_the_Scenes_content'
    FROM film
    WHERE special_features LIKE '%Behind the Scenes%';
