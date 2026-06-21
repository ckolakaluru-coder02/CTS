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

SELECT *
FROM
(
    SELECT Region, Product, Amount
    FROM Sales
) AS SourceTable
PIVOT
(
    SUM(Amount)
    FOR Product IN ([Laptop], [Mobile])
) AS PivotTable;
