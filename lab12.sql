-- Concatenate Course Name and Semester
SELECT concat('course_name', '-', 'semester');

-- Result
"course_name-semester"

  
-- Find Courses with Labs on Fridays
SELECT course_id, course_name, lab_time
FROM courses 
WHERE lab_time LIKE 'FRI%';

-- Result
"COMP1234"	"Introduction To Web Development"	"Fri 11"
"COMP1168"	"Database Management"	"Fri 10"
"GSSC1027"	"Personal Finance"	"Fri 09"
"COMP2136"	"Software Quality Assurance"	"Fri 12"
"COMP2154"	"System Development Project"	"Fri 14"
"COMP3095"	"Web Application Development Using Java"	"Fri 13"
"COMP3078"	"Capstone Project II"	"Fri 15"

  
-- Upcoming Assignments
SELECT course_id, title, status
FROM assignments
WHERE status != 'Completed'
and due_date >'2024-11-19';

-- Result
"COMP1168"	"Database Design Project"	"Not Started"
"COMP1168"	"SQL Optimization Assignment"	"In Progress"
"COMP1202"	"Inheritance and Polymorphism Task"	"Not Started"
"COMP1235"	"Backend API Development"	"In Progress"
"COMP3044"	"Linux Command Line Basics"	"Not Started"
"GSSC1027"	"Budget Planning Assignment"	"In Progress"
"GSSC1027"	"Investment Strategies Essay"	"Not Started"
"MATH1172"	"Complex Numbers Quiz"	"In Progress"

-- Count Assignments by status
SELECT SUBSTRING(course_id, status) AS prefix, 
count(*)
FROM assignments
GROUP BY prefix;

-- Result
"COMM2000"	"2"
"COMP1151"	"2"
"COMP1168"	"2"
"COMP1202"	"2"
"COMP1234"	"2"
"COMP1235"	"2"
"COMP1236"	"2"
"COMP1238"	"6"
"COMP3044"	"2"
"GSSC1027"	"2"
"MATH1162"	"2"
"MATH1172"	"2"


-- Longest course name
SELECT course_name, length(course_name) AS name_length
FROM courses
ORDER BY length(course_name) DESC limit 1; 

-- Result
"Introduction To Full-Stack Development"	"38"





