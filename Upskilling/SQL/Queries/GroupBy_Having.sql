SELECT country,
COUNT(*) AS total_customers
FROM Customers
GROUP BY country;

SELECT country,
AVG(age) AS average_age
FROM Customers
GROUP BY country;

SELECT country,
COUNT(*)
FROM Customers
GROUP BY country
HAVING COUNT(*) > 1;