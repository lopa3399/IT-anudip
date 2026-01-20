-- task 1
-- Task: Retrieve all students and display in ascending order by last name
SELECT *
FROM Student
ORDER BY LastName ASC;
-- Task: Count the number of students based on their gender
SELECT Gender, COUNT(*) AS NumberOfStudents
FROM Student
GROUP BY Gender;
