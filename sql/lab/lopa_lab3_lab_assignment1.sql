SET SQL_SAFE_UPDATES = 0;
-- task 1
update Student
SET Email = 'jane_Smith@example.com'
where FirstName="Jane" AND LastName="Smith";

update Instructor
set email='rogerwhite@example.com'
where FirstName="Roger" and LastName="White";
-- task 2
-- to delete the student where lastname smith its not possible to delete it in one query as student id is foreign ke in many tables
-- so first we hv to delete it from the other table
-- 1. Delete related records from Score
DELETE FROM Score
WHERE StudentID IN (SELECT StudentID FROM Student WHERE LastName = 'Smith');

-- 2. Delete related records from Feedback
DELETE FROM Feedback
WHERE StudentID IN (SELECT StudentID FROM Student WHERE LastName = 'Smith');

-- 3. Delete related records from Enrollment
DELETE FROM Enrollment
WHERE StudentID IN (SELECT StudentID FROM Student WHERE LastName = 'Smith');

-- 4. Now delete the student(s)
DELETE FROM Student
WHERE LastName = 'Smith';
-- task 3
select * from Student where FirstName like "j%";