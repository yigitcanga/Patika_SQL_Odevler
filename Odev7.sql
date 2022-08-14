-- 1
SELECT rating FROM film
GROUP BY rating;

-- 2
SELECT replacement_cost, COUNT(replacement_cost) FROM film
GROUP BY replacement_cost
HAVING COUNT(replacement_cost) > 50
ORDER BY replacement_cost;

-- 3
SELECT store_id, COUNT(store_id) FROM customer
GROUP BY store_id
ORDER BY store_id;

-- 4
SELECT country_id, COUNT(city) AS "city number" FROM city
GROUP BY country_id
ORDER BY COUNT(city) DESC
LIMIT 1;