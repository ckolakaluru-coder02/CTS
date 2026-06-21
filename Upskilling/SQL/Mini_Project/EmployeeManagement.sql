CREATE TABLE Employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
department VARCHAR(30),
salary INT
);

INSERT INTO Employees
VALUES
(101,'Pramod','IT',60000),
(102,'Rahul','HR',45000),
(103,'Anil','IT',70000);

SELECT * FROM Employees;

SELECT *
FROM Employees
WHERE salary > 50000;

UPDATE Employees
SET salary=65000
WHERE emp_id=101;

DELETE FROM Employees
WHERE emp_id=102;

SELECT department,
AVG(salary)
FROM Employees
GROUP BY department;