-- ============================================================
-- QUERY 4: Students Enrolled in MULTIPLE Courses
--          Uses GROUP BY + HAVING
-- ============================================================
 
SELECT '========== QUERY 4: STUDENTS IN MULTIPLE COURSES ==========' AS info;
 
SELECT
    s.name                        AS student,
    COUNT(e.course_id)            AS total_courses,
    GROUP_CONCAT(c.name, ' | ')   AS courses_enrolled
FROM   enrollments e
JOIN   students s ON e.student_id = s.id
JOIN   courses  c ON e.course_id  = c.id
GROUP  BY e.student_id, s.name
HAVING COUNT(e.course_id) > 1
ORDER  BY total_courses DESC;