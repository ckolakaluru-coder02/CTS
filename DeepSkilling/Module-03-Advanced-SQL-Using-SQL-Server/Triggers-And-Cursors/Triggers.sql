DROP TABLE IF EXISTS EmployeeAudit;
DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Salary DECIMAL(10,2)
);

CREATE TABLE EmployeeAudit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    Message VARCHAR(100),
    AuditDate DATETIME
);
GO

CREATE OR ALTER TRIGGER trg_AfterEmployeeInsert
ON Employees
AFTER INSERT
AS
BEGIN
    INSERT INTO EmployeeAudit(Message, AuditDate)
    SELECT 'New employee inserted: ' + EmployeeName, GETDATE()
    FROM inserted;
END;
GO

INSERT INTO Employees VALUES
(1, 'John', 6000);

SELECT *
FROM EmployeeAudit;
