/*
 * Write a SQL query SELECT query that:
 * computes the country with the most customers in it. 
 */

SELECT country.country, COUNT(customer_id) FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city on address.city_id = city.city_id
JOIN country on city.country_id = country.country_id
GROUP BY country.country ORDER BY COUNT(customer_id) DESC LIMIT 1;
