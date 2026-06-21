DROP TABLE IF EXISTS Products;

CREATE TABLE Products
(
    ProductID INT,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 75000),
(2, 'Mobile', 'Electronics', 60000),
(3, 'Tablet', 'Electronics', 60000),
(4, 'Sofa', 'Furniture', 50000),
(5, 'Chair', 'Furniture', 15000);

SELECT
    ProductName,
    Category,
    Price,
    ROW_NUMBER() OVER(PARTITION BY Category ORDER BY Price DESC) AS RowNumber,
    RANK() OVER(PARTITION BY Category ORDER BY Price DESC) AS RankValue,
    DENSE_RANK() OVER(PARTITION BY Category ORDER BY Price DESC) AS DenseRankValue
FROM Products;
