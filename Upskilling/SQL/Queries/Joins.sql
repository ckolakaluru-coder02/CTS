CREATE TABLE Orders(
order_id INT,
customer_id INT,
amount INT
);

SELECT c.first_name,
       o.amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id=o.customer_id;

SELECT c.first_name,
       o.amount
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id=o.customer_id;