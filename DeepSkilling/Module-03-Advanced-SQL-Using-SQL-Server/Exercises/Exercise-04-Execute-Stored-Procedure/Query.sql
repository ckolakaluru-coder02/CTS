EXEC sp_InsertEmployee
    'Pramod',
    'Munaganuri',
    3,
    6500,
    '2026-06-18';

EXEC sp_InsertEmployee
    'Rahul',
    'Kumar',
    3,
    7000,
    '2026-06-19';

EXEC sp_InsertEmployee
    'Sneha',
    'Reddy',
    2,
    6000,
    '2026-06-20';

SELECT *
FROM Employees;
