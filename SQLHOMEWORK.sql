USE sakila;

SELECT * FROM actor;

SELECT first_name, last_name 
FROM actor;

SELECT CONCAT(first_name,'_', last_name) AS Actor_Name
FROM actor;

SELECT first_name, last_name FROM actor 
WHERE last_name LIKE '%GEN%';

SELECT last_name,first_name FROM actor 
WHERE last_name LIKE '%LI%';

SELECT country_id, country FROM country
WHERE country IN(Afghanistan, Bangladesh, China);

ALTER Table actor ADD description BLOB;

SELECT * FROM actor;

ALTER TABLE actor
DROP COLUMN description;

SELECT * FROM actor;

UPDATE actor set first_name='HARPO' WHERE last_name= 'WILLIAMS';

UPDATE actor set first_name='GROUCHO' WHERE last_name= 'WILLIAMS';

SELECT * FROM address;

SELECT * FROM staff;

SELECT staff.address_id, staff.first_name, staff.last_name, address.address
FROM staff
JOIN address ON staff.address_id=address.address_id;

SELECT * FROM payment;

SELECT COUNT(actor_id) AS actor_id
FROM film_actor
JOIN film ON film_actor.film_id=film.film_id;

SELECT * FROM film;

SELECT COUNT(title) FROM film WHERE title= 'Hunchback Impossible';

SELECT * FROM payment;

SELECT * FROM customer;

SELECT customer.first_name, customer.last_name, payment.amount
FROM customer
JOIN payment ON customer.customer_id=payment.customer_id;













 

