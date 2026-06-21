DROP TABLE IF EXISTS ProductSales;

CREATE TABLE ProductSales
(
    Region VARCHAR(50),
    Laptop DECIMAL(10,2),
    Mobile DECIMAL(10,2)
);

INSERT INTO ProductSales VALUES
('East', 50000, 30000),
('West', 45000, 25000);

SELECT Region, Product, Amount
FROM ProductSales
UNPIVOT
(
    Amount FOR Product IN (Laptop, Mobile)
) AS UnpivotTable;
