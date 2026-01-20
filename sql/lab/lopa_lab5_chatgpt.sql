CREATE DATABASE StudentManagementSystem;
USE StudentManagementSystem;
CREATE TABLE Student (StudentID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), DateOfBirth DATE, Gender VARCHAR(10), Email VARCHAR(100), Phone VARCHAR(15));
Select * from Student;
INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES (1, 'Rahul', 'Sharma', '2002-05-14', 'Male', 'rahul.sharma@gmail.com', '9876543210');
INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES (2, 'Sima', 'varma', '2002-05-10', 'Female', 'sima.varma@gmail.com', '9876543213');
INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES (3, 'Gita', 'Bakshi', '2002-08-10', 'Female', 'b.gitu@gmail.com', '8776543213');
INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES (4, 'Sumit', 'Shastri', '2002-07-10', 'Mmale', 'ss@gmail.com', '8976543213');
INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES (5, 'jane', 'Smith', '2002-06-1', 'male', 'janesmith@gmail.com', '8976743213');

CREATE TABLE Course (CourseID INT PRIMARY KEY, CourseTitle VARCHAR(100),Credits INT);
INSERT INTO Course (CourseID, CourseTitle, Credits) VALUES (101, 'Database Management System', 4);
INSERT INTO Course (CourseID, CourseTitle, Credits) VALUES (103, 'Digital Marketing', 6);
INSERT INTO Course (CourseID, CourseTitle, Credits) VALUES (104, 'Programing Language', 7);
select * from Course;
CREATE TABLE Instructor (InstructorID INT PRIMARY KEY, FirstName VARCHAR(50),LastName VARCHAR(50), Email VARCHAR(100));
select*from Instructor;
INSERT INTO Instructor (InstructorID, FirstName, LastName, Email) VALUES (1, 'Pratap', 'Reddy', 'reddypratapma@gmail.com');
INSERT INTO Instructor (InstructorID, FirstName, LastName, Email) VALUES (2, 'Anita', 'Sharma', 'anita.sharma@gmail.com');
INSERT INTO Instructor (InstructorID, FirstName, LastName, Email) VALUES (3, 'Roger', 'White', 'whiteroger@gmail.com');
Create TABLE Enrollment (EnrollmentID INT PRIMARY KEY,EnrollmentDate DATE,StudentID INT,CourseID INT,InstructorID INT,FOREIGN KEY (StudentID) REFERENCES Student(StudentID),FOREIGN KEY (CourseID) REFERENCES Course(CourseID),FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID));
select * from Enrollment;
CREATE TABLE Score (ScoreID INT PRIMARY KEY, CourseID INT, StudentID INT, DateOfExam DATE, CreditObtained INT, FOREIGN KEY (CourseID) REFERENCES Course(CourseID),FOREIGN KEY (StudentID) REFERENCES Student(StudentID));
CREATE TABLE Feedback (FeedbackID INT PRIMARY KEY,StudentID INT,Date DATE,InstructorName VARCHAR(100),Feedback TEXT,FOREIGN KEY (StudentID) REFERENCES Student(StudentID));
UPDATE Student SET email = 'jane_Smith@example.com' WHERE FirstName = 'Jane' AND LastName = 'Smith';
UPDATE Instructor SET Email = 'rogerwhite@example.com'WHERE FirstName = 'Roger' AND LastName = 'White';
set SQL_SAFE_UPDATES=0;
DELETE FROM Student WHERE LastName = 'Smith';
SELECT *
FROM Student
ORDER BY LastName ASC;
SELECT Gender, COUNT(*) AS TotalStudents
FROM Student
GROUP BY Gender;
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200),
    author_id INT
);
select*from books;
INSERT INTO books
(book_id, title, author_id)
VALUES
(1, 'Database Systems', 101),
(2, 'Advanced SQL', 101),
(3, 'Operating Systems', 102),
(4, 'Computer Networks', 102),
(5, 'Data Structures', 103),
(6, 'Algorithms', 103),
(7, 'Software Engineering', 101);
SELECT author_id, COUNT(*) AS total_books
FROM books
GROUP BY author_id
ORDER BY author_id;
