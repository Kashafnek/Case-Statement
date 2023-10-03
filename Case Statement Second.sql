USE exam;
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    SALARY DECIMAL(10, 2)
);
INSERT INTO Employees (ID, NAME, SALARY)
VALUES
    (1, 'Mohammed', 35000),
    (2, 'Fatima', 29000),
    (3, 'Ahmed', 18000),
    (4, 'Aisha', 22000),
    (5, 'Ali', 15000),
    (6, 'Khadija', 25000),
    (7, 'Habiba', 32000),
    (8, 'Zainab', 28000),
    (9, 'Omar', 14000),
    (10, 'Hafsa', 21000),
    (11, 'Hassan', 30000),
    (12, 'Osman', 26000),
    (13, 'Ibrahim', 27000),
    (14, 'Hiba', 19000),
    (15, 'Abdullah', 23000),
    (16, 'Mariam', 16000),
    (17, 'Haris', 31000),
    (18, 'Hamza', 24000),
    (19, 'Mustafa', 20000),
    (20, 'Amina', 33000);
    
    SELECT
    ID,
    NAME,
    SALARY,
    CASE
        WHEN SALARY >= 30000 THEN 'Best Employee'
        WHEN SALARY BETWEEN 20000 AND 29999 THEN 'Normal Employee'
        WHEN SALARY BETWEEN 15000 AND 19999 THEN 'Employee'
        ELSE 'Salary Not Confirmed'
    END AS STATUS
FROM
    Employees;
