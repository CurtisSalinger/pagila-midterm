/*
 * Write a SQL query SELECT query that:
 * computes the number of customers who live outside of the US.
 */

SELECT count(customer_id) FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city on address.city_id = city.city_id
WHERE country_id != 103;
