SELECT courses.title AS course_title
FROM courses
INNER JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(enrollments.student_id) > (
    SELECT CAST(COUNT(*) AS FLOAT) / COUNT(DISTINCT course_id)
    FROM enrollments
)
ORDER BY course_title ASC;