DROP TABLE IF EXISTS TargetProducts;
DROP TABLE IF EXISTS SourceProducts;

CREATE TABLE TargetProducts
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE SourceProducts
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO TargetProducts VALUES
(1, 'Laptop', 70000),
(2, 'Mobile', 50000);

INSERT INTO SourceProducts VALUES
(1, 'Laptop', 75000),
(3, 'Tablet', 30000);

MERGE TargetProducts AS target
USING SourceProducts AS source
ON target.ProductID = source.ProductID
WHEN MATCHED THEN
    UPDATE SET target.Price = source.Price
WHEN NOT MATCHED THEN
    INSERT (ProductID, ProductName, Price)
    VALUES (source.ProductID, source.ProductName, source.Price);

SELECT *
FROM TargetProducts;
