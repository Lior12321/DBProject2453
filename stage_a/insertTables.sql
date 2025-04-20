-- Students
INSERT INTO Students (student_id, first_name, last_name, birth_date, mail_address) VALUES
(1, 'Lior', 'Masas', '1998-11-17', 'lior.m.masas@gmail.com'),
(2, 'John', 'Doe', '2000-05-23', 'john.doe@gmail.com'),
(3, 'Jane', 'Smith', '1999-08-30', 'jane.smith@gmail.com');

-- Courses
INSERT INTO Courses (course_id, course_name, credits) VALUES
(101, 'Math 101', 3),
(102, 'History 101', 4),
(103, 'Computer Science 101', 3);

-- Enrollments
INSERT INTO Enrollments (enrollment_id, enrollment_date, enrollment_price, student_id, course_id) VALUES
(1, '2023-09-01', 500, 1, 101),
(2, '2023-09-01', 450, 2, 102),
(3, '2023-09-01', 600, 3, 103);

-- Grades
INSERT INTO Grades (grade, grade_date, pass_fail, student_id, course_id) VALUES
(1, 101, 90, '2023-12-01', 'pass'),
(2, 102, 85, '2023-12-01', 'pass'),
(3, 103, 78, '2023-12-01', 'fail');

-- Departments
INSERT INTO Departments (department_id, department_name, head_professor_id, department_building) VALUES
(1, 'Computer Science', 101, 'Building A'),
(2, 'Mathematics', 102, 'Building B'),
(3, 'History', 103, 'Building C');

-- Professors
INSERT INTO Professors (professor_id, first_name, last_name, hireing_date, wage, mail_address, department_id) VALUES
(101, 'David', 'Johnson', '2015-08-15', 70000, 'david.johnson@university.com', 1),
(102, 'Emily', 'Williams', '2017-03-10', 75000, 'emily.williams@university.com', 2),
(103, 'Michael', 'Brown', '2018-06-25', 72000, 'michael.brown@university.com', 3);

-- Classrooms (class)
INSERT INTO Classrooms (class_id, class_name, class_building, course_id, professor_id) VALUES
(1, 'CS101 - Lecture', 'Room 101', 103, 101),
(2, 'Math101 - Lecture', 'Room 102', 102, 102),
(3, 'History101 - Lecture', 'Room 103', 101, 103);
