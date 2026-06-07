

SELECT first_name
FROM actor;

SELECT first_name
FROM actor
LIMIT 5;

SELECT first_name, last_name FROM customer;

select last_update FROM inventory;


-- select last_update FROM inventory

select DISTINCT(last_update) FROM inventory;

select * from film;


select DISTINCT(release_year) from film;

select DISTINCT(rental_rate) from film;

select * from film;

select DISTINCT(rating) from film;

select * from payment;

select count(amount) from payment;

select count(DISTINCT(amount)) from payment;

select * from customer;

select * from customer
where first_name = 'Jared';

select * from film
where rental_rate > 4 AND replacement_cost >= 19.99 
AND rating = 'R';

select COUNT(*) from film
where rental_rate > 4 AND replacement_cost >= 19.99 
AND rating = 'R';

select title from film
where rental_rate > 4 AND replacement_cost >= 19.99 
AND rating = 'R';

SELECT COUNT(*)
FROM film
WHERE rating = 'R' OR rating = 'PG-13';

SELECT title
FROM film
WHERE rating != 'R';

select * from customer;

select email from customer
where first_name = 'Nancy' AND last_name = 'Thomas';

select * from film;

SELECT description FROM film
where title = 'Outlaw Hanky';

select * from address;

select phone from address
where address = '259 Ipoh Drive';

select * from customer
ORDER BY first_name;

select * from customer
ORDER BY first_name DESC;


select store_id, first_name, last_name 
from customer
ORDER BY store_id;

select store_id, first_name, last_name 
from customer
ORDER BY store_id DESC, first_name ASC;

select first_name, last_name 
from customer
ORDER BY store_id DESC, first_name ASC;

SELECT * FROM payment
order by payment_date DESC
LIMIT 5;

SELECT * FROM payment
WHERE amount != 0
order by payment_date DESC
LIMIT 5;

SELECT * FROM payment;

SELECT customer_id FROM payment
order by payment_date ASC
limit 10;

SELECT * FROM film;

SELECT title, length FROM film
ORDER BY length ASC
limit 5;


SELECT count(title) FROM film
where length <= 50;

select * from payment
limit 2;

select COUNT(*) from payment
WHERE amount BETWEEN 8 AND 9;


select DISTINCT(amount) from payment
ORDER BY amount;

select * from payment
where amount IN (4.99, 7.99);

select * from payment
where amount NOT IN (4.99, 7.99);

select * from customer
where first_name  IN ('John', 'Jake', 'Julie');

select * from customer
where first_name NOT IN ('John', 'Jake', 'Julie');

select * from customer
where first_name LIKE 'J%';

select * from customer
where first_name LIKE 'j%' AND last_name LIKE '%n';

select * from customer
where first_name ILIKE 'j%' AND last_name LIKE '%n';

select * from customer
where first_name LIKE '%er%';


select * from customer
where first_name LIKE '%her%';

select * from customer
where first_name LIKE '_her%';

select * from customer
where first_name NOT LIKE '_her%';





