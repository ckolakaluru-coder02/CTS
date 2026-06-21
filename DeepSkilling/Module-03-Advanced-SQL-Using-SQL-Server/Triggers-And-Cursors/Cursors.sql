DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'John'),
(2, 'Jane'),
(3, 'David');

DECLARE @EmployeeName VARCHAR(50);

DECLARE EmployeeCursor CURSOR FOR
SELECT EmployeeName
FROM Employees;

OPEN EmployeeCursor;

FETCH NEXT FROM EmployeeCursor INTO @EmployeeName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT @EmployeeName;
    FETCH NEXT FROM EmployeeCursor INTO @EmployeeName;
END;

CLOSE EmployeeCursor;
DEALLOCATE EmployeeCursor;
