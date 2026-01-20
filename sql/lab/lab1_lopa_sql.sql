create database StudentManagementSystem;
use StudentManagementSystem;

create table Student(
StudentID int primary key,
FirstName varchar(20),
LastName varchar(20),
DateOfBirth date,
Gender enum("male","female","other"),
Email varchar(50),
Phone varchar(20)
);
create table Course(
CourseID int primary key,
CourseTitle varchar(50),
Credits int
);
create table Instructor(
InstructorID int primary key,
FirstName varchar(20),
LastName varchar(20),
Email varchar(50)
);

create table Enrollment (
EnrollmentID int PRIMARY KEY,
EnrollmentDate DATE ,
StudentID INT ,
CourseID INT ,
InstructorID INT ,
foreign key (StudentID) references Student(StudentID),
foreign key (CourseID) references Course(CourseID),
foreign key (InstructorID) references Instructor(InstructorID)

);
CREATE TABLE Score (
    ScoreID INT AUTO_INCREMENT PRIMARY KEY,
    CourseID INT NOT NULL,
    StudentID INT NOT NULL,
    DateOfExam DATE NOT NULL,
    CreditObtained INT NOT NULL,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
CREATE TABLE Feedback (
    FeedbackID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    Date DATE NOT NULL,
    InstructorName VARCHAR(100) NOT NULL,
    Feedback TEXT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

