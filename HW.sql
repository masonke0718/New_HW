--List all customers who live in Texas (use JOINs)

SELECT customer.customer_id,first_name,last_name,district
From customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';

--Get all payments Greater Than $6.99 with the Customer's Full Name
SELECT customer.customer_id,first_name,last_name,amount
From customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;

--Show all customers names who have made payments Greater Than $175 (use subqueries)
SELECT customer_id,first_name,last_name
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
);

--List all customers that live in Nepal (use the city table)
SELECT customer.first_name,customer.last_name,country
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id = city.city_id
INNER JOIN country
ON city.country_id = country.country_ID
WHERE country = 'Nepal'


--Which staff memeber had the most transactions?
Select staff.staff_id,staff.first_name,staff.last_name,COUNT(payment_id)
FROM staff
GROUP BY staff.staff.id
INNER JOIN payment
ON staff.staff_id = payment.staff_id;


--How many movies of each rating are there?


--Show all customer who have made a single payment above $6.99 (Use subqueries)


--How many free rentals did our store give away?