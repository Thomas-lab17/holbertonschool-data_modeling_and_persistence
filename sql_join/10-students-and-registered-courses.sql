SELECT students.name, courses.title
FROM students
INNER JOIN registrations ON students.id = registrations.student_id
INNER JOIN courses ON registrations.course_id = courses.id
ORDER BY students.name ASC, courses.title ASC;