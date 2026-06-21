DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees VALUES
(1, 'John', 'Smith', 'IT', 6000),
(2, 'Jane', 'Wilson', 'HR', 5500),
(3, 'David', 'Miller', 'IT', 7200);

CREATE OR ALTER VIEW vw_ITEmployees
AS
SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
WHERE Department = 'IT';
GO

SELECT *
FROM vw_ITEmployees;
