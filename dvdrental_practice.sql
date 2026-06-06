

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