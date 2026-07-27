-- Students
INSERT INTO Students(first_name,last_name,gender,dob,email,phone)
VALUES
('Rahul','Sharma','Male','2002-05-12','rahul@gmail.com','9876543210'),
('Sneha','Reddy','Female','2003-08-20','sneha@gmail.com','9876543211'),
('Amit','Kumar','Male','2002-11-10','amit@gmail.com','9876543212'),
('Priya','Singh','Female','2003-03-15','priya@gmail.com','9876543213'),
('Arjun','Patel','Male','2001-12-18','arjun@gmail.com','9876543214');

-- Courses
INSERT INTO Courses(course_name,duration,fee)
VALUES
('Python','3 Months',5000),
('Java','4 Months',7000),
('MySQL','2 Months',4000),
('Web Development','5 Months',8000),
('Data Science','6 Months',12000);

-- Enrollments
INSERT INTO Enrollments(student_id,course_id,enrollment_date)
VALUES
(1,1,'2025-01-10'),
(2,3,'2025-01-15'),
(3,2,'2025-01-18'),
(4,5,'2025-01-20'),
(5,4,'2025-01-22');
