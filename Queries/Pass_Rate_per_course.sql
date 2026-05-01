-- ============================================================
-- QUERY 2: Pass Rate Per Course  (grade >= 40 is a PASS)
-- ============================================================
 
SELECT '========== QUERY 2: PASS RATE PER COURSE ==========' AS info;
 
SELECT
    c.name                                                           AS course,
    COUNT(*)                                                         AS total_students,
    SUM(CASE WHEN e.grade >= 40 THEN 1 ELSE 0 END)                  AS passed,
    SUM(CASE WHEN e.grade <  40 THEN 1 ELSE 0 END)                  AS failed,
    ROUND(
        SUM(CASE WHEN e.grade >= 40 THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100, 2
    )                                                                AS pass_rate_pct
FROM   enrollments e
JOIN   courses c ON e.course_id = c.id
GROUP  BY c.id, c.name
ORDER  BY pass_rate_pct DESC;