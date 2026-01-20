INSERT INTO Student 
(StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone)
VALUES
(101, 'John', 'Doe', '2001-05-12', 'Male', 'john.doe@email.com', '9000000001'),
(102, 'Jane', 'Smith', '2002-08-20', 'Female', 'jane.smith@email.com', '9000000002'),
(103, 'Alex', 'Brown', '2000-11-15', 'Other', 'alex.brown@email.com', '9000000003'),
(104, 'Emily', 'Davis', '2001-02-25', 'Female', 'emily.davis@email.com', '9000000004'),
(105, 'Michael', 'Wilson', '1999-09-10', 'Male', 'michael.w@email.com', '9000000005');

SELECT * FROM Student;

INSERT INTO Course (CourseID, CourseTitle, Credits)
VALUES
(201, 'Database Systems', 4),
(202, 'Operating Systems', 3),
(203, 'Computer Networks', 3),
(204, 'Software Engineering', 4),
(205, 'Artificial Intelligence', 5);
SELECT * FROM Course;

INSERT INTO Instructor (InstructorID, FirstName, LastName, Email)
VALUES
(301, 'Allen', 'Smith', 'allen.smith@email.com'),
(302, 'Baker', 'Johnson', 'baker.johnson@email.com'),
(303, 'Clark', 'Williams', 'clark.williams@email.com'),
(304, 'Evans', 'Davis', 'evans.davis@email.com'),
(305, 'Scott', 'Miller', 'scott.miller@email.com');
SELECT * FROM Instructor;
INSERT INTO Enrollment (EnrollmentID, EnrollmentDate, StudentID, CourseID, InstructorID)
VALUES
(401, '2024-01-10', 101, 201, 301),
(402, '2024-01-11', 102, 202, 302),
(403, '2024-01-12', 103, 203, 303),
(404, '2024-01-13', 104, 204, 304),
(405, '2024-01-14', 105, 205, 305);
SELECT * FROM Enrollment;


INSERT INTO Score (ScoreID, CourseID, StudentID, DateOfExam, CreditObtained)
VALUES
(501, 201, 101, '2024-04-01', 4),
(502, 202, 102, '2024-04-02', 3),
(503, 203, 103, '2024-04-03', 3),
(504, 204, 104, '2024-04-04', 4),
(505, 205, 105, '2024-04-05', 5);

SELECT * FROM Score;

INSERT INTO Feedback (FeedbackID, StudentID, Date, InstructorName, Feedback)
VALUES
(601, 101, '2024-04-10', 'Allen Smith', 'Excellent teaching and guidance.'),
(602, 102, '2024-04-11', 'Baker Johnson', 'Very helpful and patient.'),
(603, 103, '2024-04-12', 'Clark Williams', 'Clear explanations, well-structured.'),
(604, 104, '2024-04-13', 'Evans Davis', 'Interactive sessions, engaging lectures.'),
(605, 105, '2024-04-14', 'Scott Miller', 'Well organized and easy to understand.');
SELECT * FROM Feedback;



