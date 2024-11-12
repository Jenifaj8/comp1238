-- Assignments for a Specific Course
SELECT title, due_date
FROM assignments
WHERE course_id LIKE 'COMP1234';

-- Earliest Assignment Due Date
SELECT min(due_date)
FROM assignments;

-- Latest Assignment Due Date
SELECT max(due_date)
FROM assignments;

-- Assignments Due on a Specific Date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';


-- All Assignments Due in October
SELECT title, due_date
FROM assignments
WHERE due_date like '2024-10%';

-- Most Recent Completed Assignment
SELECT max(due_date)
FROM assignments
WHERE status = 'Completed';

-- Optional Tasks
-- Count of "Not Started" Assignments
SELECT count(*) 
FROM assignments
WHERE status != 'Started';

-- Courses With Labs on Tuesday
SELECT course_id, course_name
FROM courses
WHERE lab_time LIKE 'Tue%';

-- Query String that Joins Two Tables
SELECT *
FROM assignments
JOIN courses ON assignments.course_id = courses.course_id
WHERE status != 'started';







