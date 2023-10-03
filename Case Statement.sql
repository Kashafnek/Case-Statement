USE exam;
CREATE TABLE marksheet (
    roll_no INT PRIMARY KEY,
    student_name VARCHAR(255),
    passing_year INT,
    examination VARCHAR(255),
    percentage DECIMAL(5, 2)
);

INSERT INTO marksheet (roll_no, student_name, passing_year, examination, percentage)
VALUES
    (1, 'Mohammed Ahmed', 2023, 'Final Exam', 85.50),
    (2, 'Fatima Ali', 2023, 'Final Exam', 72.30),
    (3, 'Aisha Khan', 2023, 'Final Exam', 65.80),
    (4, 'Omar Hassan', 2023, 'Final Exam', 58.20),
    (5, 'Zainab Mustafa', 2023, 'Final Exam', 90.00),
    (6, 'Habiba Ibrahim', 2023, 'Final Exam', 78.50),
    (7, 'Hassan Osman', 2023, 'Final Exam', 67.40),
    (8, 'Mariam Osama', 2023, 'Final Exam', 75.60),
    (9, 'Khadija Abdullah', 2023, 'Final Exam', 62.80),
    (10, 'Abdullah Hussain', 2023, 'Final Exam', 88.75);

    SELECT roll_no, student_name, passing_year, examination, percentage,
    CASE
        WHEN percentage >= 80 THEN 'A+'
        WHEN percentage BETWEEN 70 AND 79 THEN 'A'
        WHEN percentage BETWEEN 60 AND 69 THEN 'B'
        ELSE 'C' END AS Grade FROM marksheet;