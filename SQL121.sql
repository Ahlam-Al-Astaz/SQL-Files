USE company;
CREATE TABLE Manager AS
SELECT * FROM Employee WHERE Employee_salary >=6000;