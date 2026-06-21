SELECT * FROM Customers;

SELECT first_name,last_name
FROM Customers;

SELECT *
FROM Customers
WHERE age > 20;

SELECT *
FROM Customers
WHERE country='India';

SELECT *
FROM Customers
ORDER BY age DESC;

SELECT DISTINCT country
FROM Customers;

SELECT *
FROM Customers
LIMIT 5;