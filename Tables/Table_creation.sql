CREATE TABLE students (
    id INT PRIMARY KEY,
    Name VARCHAR(20),
    Gender VARCHAR(10),
    Age INT,
    Grade VARCHAR(5),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

CREATE TABLE courses (
    id          INT PRIMARY KEY,
    name        VARCHAR(100)
);

CREATE TABLE enrollments (
    student_id  INT,
    course_id   INT,
    grade       INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- Insert students
-- Active: 1775625578002@@127.0.0.2@3306@studentmanagement
-- Courses Table
INSERT INTO courses VALUES
(101,'Mathematics'),
(102,'Science'),
(103,'English');

SELECT * FROM courses;
-- Enrollment Table
INSERT INTO enrollments VALUES
(1,101,85),(1,102,88),(1,103,82),
(2,101,75),(2,102,70),(2,103,78),
(3,101,90),(3,102,92),(3,103,89),
(4,101,88),(4,102,85),(4,103,91),
(5,101,72),(5,102,74),(5,103,70),
(6,101,35),(6,102,60),(6,103,38),
(7,101,91),(7,102,89),(7,103,93),
(8,101,78),(8,102,76),(8,103,80),
(9,101,87),(9,102,90),(9,103,86),
(10,101,30),(10,102,65),(10,103,35);

SELECT * FROM enrollments;

INSERT INTO students VALUES
(1,'Pranjal','Male',20,'A',85,88,82),
(2,'Aryan','Male',21,'B',75,70,78),
(3,'Kunal','Male',20,'A',90,92,89),
(4,'Anjali','Female',19,'A',88,85,91),
(5,'Sneha','Female',22,'B',72,74,70),
(6,'Rahul','Male',21,'C',65,60,68),
(7,'Pooja','Female',20,'A',91,89,93),
(8,'Vikas','Male',23,'B',78,76,80),
(9,'Neha','Female',19,'A',87,90,86),
(10,'Amit','Male',22,'C',60,65,62);

SELECT * FROM students;