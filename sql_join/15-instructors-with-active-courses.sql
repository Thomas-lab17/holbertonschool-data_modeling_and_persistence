SELECT DISTINCT instructors.name
FROM instructors
INNER JOIN courses ON instructors.id = courses.instructor_id
INNER JOIN registrations ON courses.id = registrations.course_id
ORDER BY instructors.name ASC;