SELECT courses.title, instructors.name
FROM courses
INNER JOIN instructors ON courses.instructor_id = instructors.id
ORDER BY courses.title ASC;