-- Query string that joins two tables
SELECT *
FROM assignments
JOIN courses ON assignments.course_id = courses.course_id
WHERE status != 'started';