select * FROM film;

select MIN(replacement_cost) FROM film;

select MAX(replacement_cost) FROM film;

select MAX(replacement_cost),MIN(replacement_cost) 
FROM film;

select COUNT(film_id) FROM film;

select round(AVG(replacement_cost), 3) from film;

select round(AVG(replacement_cost)) from film;

select sum(replacement_cost) FROM film;

SELECT * FROM payment
limit 3;

SELECT customer_id, avg(amount) FROM payment
GROUP BY customer_id
ORDER BY customer_id;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount);

-- total of payment based on each customer
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-- number of transactions for each customer
SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;


SELECT * FROM payment
limit 3;

SELECT customer_id, staff_id, sum(amount) 
FROM payment
GROUP BY staff_id, customer_id;

SELECT customer_id, staff_id, sum(amount) 
FROM payment
GROUP BY staff_id, customer_id
order BY customer_id;

SELECT customer_id, staff_id, sum(amount) 
FROM payment
GROUP BY staff_id, customer_id;

SELECT staff_id, customer_id, sum(amount) FROM payment
GROUP BY staff_id, customer_id;

SELECT staff_id, customer_id, sum(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY staff_id, customer_id;

SELECT staff_id, customer_id, sum(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id;

SELECT staff_id, customer_id, sum(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY SUM(amount);

SELECT * FROM payment
limit 5;

SELECT DATE(payment_date) FROM payment;

SELECT DATE(payment_date) FROM payment
GROUP BY DATE(payment_date);

SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY sum(amount) DESC;

SELECT staff_id, COUNT(amount) FROM payment
group by staff_id;

SELECT * from film;

select rating, AVG(replacement_cost) from film
group by rating;


SELECT customer_id, sum(amount) FROM payment
GROUP BY customer_id
order by sum(amount) DESC
LIMIT 5;

SELECT * from payment;

SELECT customer_id, sum(amount) FROM payment
GROUP BY customer_id;

SELECT customer_id, sum(amount) FROM payment
WHERE customer_id NOT IN (184, 87, 77.80)
GROUP BY customer_id;

SELECT customer_id, sum(amount) FROM payment
GROUP BY customer_id
HAVING sum(amount) > 140;

select * from customer;

select store_id, COUNT(*) from customer
GROUP BY store_id
HAVING COUNT(*) > 300;


select store_id, COUNT(customer_id) from customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;


SELECT customer_id, COUNT(amount) from payment
group by customer_id
HAVING COUNT(amount) >= 40;

SELECT customer_id, staff_id, sum(amount) from payment
WHERE staff_id = 2
group by customer_id, staff_id
HAVING sum(amount) >= 100;


SELECT customer_id, sum(amount) from payment
WHERE staff_id = 2
group by customer_id
HAVING sum(amount) >= 110;

SELECT COUNT(*) FROM film
WHERE title LIKE 'J%';

SELECT customer_id  FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;

-- JOIN
-- AS alias

SELECT customer_id FROM payment;

SELECT amount AS rental_price FROM payment;

SELECT SUM(amount) AS net_revenue FROM payment;

SELECT count(amount) FROM payment;

SELECT count(amount) AS num_transactions FROM payment;

SELECT customer_id, sum(amount) 
FROM payment
GROUP BY customer_id;

SELECT customer_id, sum(amount) AS total_spent
FROM payment
GROUP BY customer_id;

SELECT customer_id, sum(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING sum(amount) > 100;

SELECT customer_id, amount AS new_name
FROM payment
where amount > 5;

select * FROM payment;

select * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;


select payment_id FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

select payment_id, payment.customer_id, first_name FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT * FROM customer;

select COUNT(*)
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

-- FULL OUTER JOIN

select * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;

-- FULL OUTER JOIN with where 

select * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS NULL OR 
payment.payment_id IS NULL;

select COUNT(DISTINCT(customer_id)) from payment;

select COUNT(DISTINCT(customer_id)) from customer;

SELECT * FROM film;

SELECT * FROM inventory;

SELECT film.film_id, title, inventory_id FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id;

SELECT film.film_id, title, inventory_id, store_id FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id;
 
SELECT film.film_id, title, inventory_id, store_id FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;


SELECT film.film_id, title, inventory_id, store_id FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;

SELECT * from address;

SELECT * FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

SELECT district, email FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
where district = 'California';


select * from actor
inner JOIN film_actor
ON actor.actor_id = film_actor.actor_id;


select title, first_name, last_name from actor
inner JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id;


SHOW ALL

show TIMEZONE;

SELECT NOW();


SELECT TIMEOFDAY();

SELECT CURRENT_TIME;


SELECT CURRENT_DATE;

SELECT EXTRACT(YEAR FROM payment_date) 
FROM payment;

SELECT EXTRACT(YEAR FROM payment_date) AS year
FROM payment;

SELECT EXTRACT(month FROM payment_date) AS pay_month
FROM payment;

SELECT EXTRACT(quarter FROM payment_date) AS QUARTER
FROM payment;


SELECT AGE(payment_date)
FROM payment;


SELECT TO_CHAR(CURRENT_DATE, 'DD-MM-YYYY');

SELECT TO_CHAR(NOW(), 'Month DD, YYYY');

SELECT TO_CHAR(NOW(), 'HH24:MI:SS');

SELECT TO_CHAR(payment_date, 'MONTH-YYYY')
FROM payment;

SELECT TO_CHAR(payment_date, 'month-YY')
FROM payment;

SELECT TO_CHAR(payment_date, 'MONTH-YY')
FROM payment;


SELECT TO_CHAR(payment_date, 'MONTH   YYYY')
FROM payment;

SELECT TO_CHAR(payment_date, 'Mon/DD/YYYY')
FROM payment;



SELECT TO_CHAR(payment_date, 'MM/DD/YYYY')
FROM payment;

SELECT TO_CHAR(payment_date, 'MM-DD-YYYY')
FROM payment;


SELECT TO_CHAR(payment_date, 'DD-MM-YYYY')
FROM payment;


