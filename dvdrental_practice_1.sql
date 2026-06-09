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




