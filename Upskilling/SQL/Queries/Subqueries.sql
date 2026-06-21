SELECT *
FROM Customers
WHERE age >
(
SELECT AVG(age)
FROM Customers
);

SELECT *
FROM Customers
WHERE age=
(
SELECT MAX(age)
FROM Customers
);

SELECT first_name,
last_name
FROM Customers
WHERE customer_id IN
(
SELECT customer_id
FROM Orders
);