CREATE TABLE students (
    id      INTEGER PRIMARY KEY,
    name    TEXT    NOT NULL,
    age     INTEGER,
    city    TEXT
);

CREATE TABLE courses (
    id          INTEGER PRIMARY KEY,
    name        TEXT    NOT NULL,
    instructor  TEXT,
    credits     INTEGER
);

CREATE TABLE enrollments (
    id          INTEGER PRIMARY KEY,
    student_id  INTEGER REFERENCES students(id),
    course_id   INTEGER REFERENCES courses(id),
    grade       INTEGER   -- marks out of 100
);

-- Insert students
INSERT INTO students VALUES (1, 'Aarav Sharma',   20, 'Jaipur');
INSERT INTO students VALUES (2, 'Priya Mehta',    21, 'Delhi');
INSERT INTO students VALUES (3, 'Rohan Verma',    22, 'Mumbai');
INSERT INTO students VALUES (4, 'Sneha Patel',    20, 'Ahmedabad');
INSERT INTO students VALUES (5, 'Karan Singh',    23, 'Jaipur');
INSERT INTO students VALUES (6, 'Divya Joshi',    21, 'Pune');
INSERT INTO students VALUES (7, 'Amit Yadav',     22, 'Lucknow');
INSERT INTO students VALUES (8, 'Neha Gupta',     20, 'Delhi');


-- Insert courses
INSERT INTO courses VALUES (1, 'Mathematics',       'Prof. Kumar',   4);
INSERT INTO courses VALUES (2, 'Data Structures',   'Prof. Sharma',  3);
INSERT INTO courses VALUES (3, 'Database Systems',  'Prof. Mehta',   3);
INSERT INTO courses VALUES (4, 'Machine Learning',  'Prof. Verma',   4);

-- Insert enrollments (student_id, course_id, grade)
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
INSERT INTO enrollments VALUES (20, 4, 4, 48);   -- Sneha in ML