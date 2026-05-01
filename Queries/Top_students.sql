SELECT
    c.name                AS course,
    s.name                AS top_student,
    MAX(e.grade)          AS top_grade
FROM   enrollments e
JOIN   students s ON e.student_id = s.id
JOIN   courses  c ON e.course_id  = c.id
GROUP  BY c.id, c.name,s.name
ORDER  BY c.name;