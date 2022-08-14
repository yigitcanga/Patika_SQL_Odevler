-- 1
SELECT COUNT(*) FROM film
WHERE length > 
(
    SELECT AVG(length) FROM film
)

-- 2
SELECT COUNT(*) FROM film
WHERE rental_rate = 
(
    SELECT MAX(rental_rate) FROM film
)

-- 3
SELECT title FROM film
WHERE rental_rate = 
(
    SELECT MIN(rental_rate) FROM film
)
AND replacement_cost =
(
    SELECT MIN(replacement_cost) FROM film
)

-- 4
SELECT customer.first_name, customer.last_name, payment.customer_id, COUNT (*) 
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY customer.first_name, customer.last_name, payment.customer_id
ORDER BY COUNT(*) DESC