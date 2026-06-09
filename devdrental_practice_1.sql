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