DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employees VALUES
(1, 'CEO', NULL),
(2, 'Manager A', 1),
(3, 'Manager B', 1),
(4, 'Employee A', 2),
(5, 'Employee B', 2);

WITH EmployeeHierarchy AS
(
    SELECT EmployeeID, EmployeeName, ManagerID, 1 AS LevelNo
    FROM Employees
    WHERE ManagerID IS NULL

    UNION ALL

    SELECT e.EmployeeID, e.EmployeeName, e.ManagerID, eh.LevelNo + 1
    FROM Employees e
    INNER JOIN EmployeeHierarchy eh
    ON e.ManagerID = eh.EmployeeID
)
SELECT *
FROM EmployeeHierarchy;
