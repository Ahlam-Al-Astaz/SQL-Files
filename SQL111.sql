USE company;
SET SQL_SAFE_UPDATES = 0;
UPDATE Employee
SET Employee_bonus = 2000
WHERE id = 3;
SELECT * FROM Employee;  