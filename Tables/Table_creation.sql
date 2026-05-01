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