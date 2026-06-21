DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales
(
    Region VARCHAR(50),
    Product VARCHAR(50),
    Amount DECIMAL(10,2)
);

INSERT INTO Sales VALUES
('East', 'Laptop', 50000),
('East', 'Mobile', 30000),
('West', 'Laptop', 45000),
('West', 'Mobile', 25000);

SELECT Region, Product, SUM(Amount) AS TotalAmount
FROM Sales
GROUP BY GROUPING SETS
(
    (Region, Product),
    (Region),
    (Product),
    ()
);

SELECT Region, Product, SUM(Amount) AS TotalAmount
FROM Sales
GROUP BY ROLLUP(Region, Product);

SELECT Region, Product, SUM(Amount) AS TotalAmount
FROM Sales
GROUP BY CUBE(Region, Product);
