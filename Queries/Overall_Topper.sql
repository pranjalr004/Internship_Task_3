-- ============================================================
-- QUERY 3: Overall Topper Across ALL Courses
--          (student with the highest average grade)
-- ============================================================
 
SELECT '========== QUERY 3: OVERALL TOPPER (BY AVG GRADE) ==========' AS info;
 
SELECT
    s.name                    AS student,
    COUNT(e.id)               AS courses_taken,
    ROUND(AVG(e.grade), 2)    AS average_grade,
    MAX(e.grade)              AS highest_single_grade
FROM   enrollments e
JOIN   students s ON e.student_id = s.id
GROUP  BY s.id, s.name
ORDER  BY average_grade DESC
LIMIT  1;