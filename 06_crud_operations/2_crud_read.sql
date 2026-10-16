-- View all students
SELECT * FROM students;

-- View honors students (GPA >= 3.5)
SELECT first_name, last_name, major, gpa
FROM students
WHERE gpa >= 3.50;

EXIT
