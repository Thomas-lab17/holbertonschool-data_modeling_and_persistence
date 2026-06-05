SELECT courses.title, COUNT(registrations.student_id) AS registrations_count
FROM courses
LEFT JOIN registrations ON courses.id = registrations.course_id
GROUP BY courses.id, courses.title
ORDER BY registrations_count DESC, courses.title ASC;