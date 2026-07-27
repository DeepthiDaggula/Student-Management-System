-- Display all Students
SELECT * FROM Students;

-- Display all Courses
SELECT * FROM Courses;

-- Display all Enrollments
SELECT * FROM Enrollments;

-- Female Students
SELECT * FROM Students
WHERE gender='Female';

-- Courses fee greater than 5000
SELECT * FROM Courses
WHERE fee>5000;

-- Students ordered by name
SELECT * FROM Students
ORDER BY first_name;

-- Count Students
SELECT COUNT(*) AS Total_Students
FROM Students;

-- Average Course Fee
SELECT AVG(fee) AS Average_Fee
FROM Courses;

-- Highest Course Fee
SELECT MAX(fee) AS Highest_Fee
FROM Courses;

-- Lowest Course Fee
SELECT MIN(fee) AS Lowest_Fee
FROM Courses;

-- Student Enrollment Details
SELECT
s.student_id,
s.first_name,
s.last_name,
c.course_name,
e.enrollment_date
FROM Students s
JOIN Enrollments e
ON s.student_id=e.student_id
JOIN Courses c
ON c.course_id=e.course_id;

-- Number of Students in Each Course
SELECT
c.course_name,
COUNT(e.student_id) AS Total_Students
FROM Courses c
LEFT JOIN Enrollments e
ON c.course_id=e.course_id
GROUP BY c.course_name;

-- Students enrolled after Jan 15
SELECT *
FROM Enrollments
WHERE enrollment_date > '2025-01-15';

-- Course fee between 4000 and 8000
SELECT *
FROM Courses
WHERE fee BETWEEN 4000 AND 8000;

-- Search course name containing 'Python'
SELECT *
FROM Courses
WHERE course_name LIKE '%Python%';
