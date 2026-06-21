DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales
(
    SaleID INT,
    Region VARCHAR(50),
    Product VARCHAR(50),
    Amount DECIMAL(10,2)
);

INSERT INTO Sales VALUES
(1, 'East', 'Laptop', 50000),
(2, 'East', 'Mobile', 30000),
(3, 'West', 'Laptop', 45000),
(4, 'West', 'Mobile', 25000),
(5, 'South', 'Tablet', 20000);

SELECT
    SaleID,
    Region,
    Product,
    Amount,
    SUM(Amount) OVER() AS TotalSales,
    SUM(Amount) OVER(PARTITION BY Region) AS RegionWiseSales
FROM Sales;
