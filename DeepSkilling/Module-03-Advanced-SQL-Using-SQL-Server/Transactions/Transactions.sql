DROP TABLE IF EXISTS BankAccounts;

CREATE TABLE BankAccounts
(
    AccountID INT PRIMARY KEY,
    AccountHolder VARCHAR(50),
    Balance DECIMAL(10,2)
);

INSERT INTO BankAccounts VALUES
(1, 'John', 10000),
(2, 'Jane', 5000);

BEGIN TRANSACTION;

UPDATE BankAccounts
SET Balance = Balance - 2000
WHERE AccountID = 1;

UPDATE BankAccounts
SET Balance = Balance + 2000
WHERE AccountID = 2;

COMMIT TRANSACTION;

SELECT *
FROM BankAccounts;
