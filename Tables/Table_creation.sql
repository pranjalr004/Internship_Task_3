CREATE TABLE students (
    id      INTEGER PRIMARY KEY,
    name    VARCHAR(20),
    age     INTEGER,
    city    TEXT
);

CREATE TABLE courses (
    id          INT PRIMARY KEY,
    name        VARCHAR(100),
    instructor TEXT,
    credits     INT
);

CREATE TABLE enrollments (
    id INT PRIMARY KEY,
    student_id  INT,
    course_id   INT,
    grade       INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- Insert students
-- Active: 1775625578002@@127.0.0.2@3306@studentmanagement
-- Courses Table
INSERT INTO courses VALUES (1, 'Mathematics',       'Prof. Kumar',   4);
INSERT INTO courses VALUES (2, 'Data Structures',   'Prof. Sharma',  3);
INSERT INTO courses VALUES (3, 'Database Systems',  'Prof. Mehta',   3);
INSERT INTO courses VALUES (4, 'Machine Learning',  'Prof. Verma',   4);

SELECT * FROM courses;
-- Enrollment Table
INSERT INTO enrollments VALUES (1,  1, 1, 85);
INSERT INTO enrollments VALUES (2,  1, 2, 78);
INSERT INTO enrollments VALUES (3,  2, 1, 92);
INSERT INTO enrollments VALUES (4,  2, 3, 35);   -- FAIL
INSERT INTO enrollments VALUES (5,  3, 1, 67);
INSERT INTO enrollments VALUES (6,  3, 2, 90);
INSERT INTO enrollments VALUES (7,  4, 1, 55);
INSERT INTO enrollments VALUES (8,  4, 3, 72);
INSERT INTO enrollments VALUES (9,  1, 3, 88);   -- Aarav in DB Systems
INSERT INTO enrollments VALUES (10, 2, 4, 95);   -- Priya in ML
INSERT INTO enrollments VALUES (11, 5, 2, 45);
INSERT INTO enrollments VALUES (12, 5, 3, 38);   -- FAIL
INSERT INTO enrollments VALUES (13, 6, 1, 73);
INSERT INTO enrollments VALUES (14, 6, 4, 60);
INSERT INTO enrollments VALUES (15, 7, 2, 28);   -- FAIL
INSERT INTO enrollments VALUES (16, 7, 3, 50);
INSERT INTO enrollments VALUES (17, 8, 1, 91);
INSERT INTO enrollments VALUES (18, 8, 4, 82);
INSERT INTO enrollments VALUES (19, 3, 3, 77);   -- Rohan in DB Systems
INSERT INTO enrollments VALUES (20, 4, 4, 48);

SELECT * FROM enrollments;

INSERT INTO students VALUES (1, 'Aarav Sharma',   20, 'Jaipur');
INSERT INTO students VALUES (2, 'Priya Mehta',    21, 'Delhi');
INSERT INTO students VALUES (3, 'Rohan Verma',    22, 'Mumbai');
INSERT INTO students VALUES (4, 'Sneha Patel',    20, 'Ahmedabad');
INSERT INTO students VALUES (5, 'Karan Singh',    23, 'Jaipur');
INSERT INTO students VALUES (6, 'Divya Joshi',    21, 'Pune');
INSERT INTO students VALUES (7, 'Amit Yadav',     22, 'Lucknow');
INSERT INTO students VALUES (8, 'Neha Gupta',     20, 'Delhi');

SELECT * FROM students;

SELECT e.id, s.name AS student, c.name AS course, e.grade
FROM   enrollments e
JOIN   students s ON e.student_id = s.id
JOIN   courses  c ON e.course_id  = c.id
ORDER  BY c.name, e.grade DESC;