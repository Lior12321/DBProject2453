CREATE TABLE Students
(
  student_id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  birth_date DATE NOT NULL,
  mail_address VARCHAR(50) NOT NULL,
  PRIMARY KEY (student_id),
  UNIQUE (mail_address)
);

CREATE TABLE Courses
(
  course_id INT NOT NULL,
  course_name VARCHAR(50) NOT NULL,
  credits INT NOT NULL,
  PRIMARY KEY (course_id),
  UNIQUE (course_name)
);

CREATE TABLE Enrollments
(
  enrollment_id INT NOT NULL,
  enrollment_date DATE NOT NULL,
  enrollment_price INT NOT NULL,
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  PRIMARY KEY (enrollment_id),
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Grades
(
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  grade INT NOT NULL,
  grade_date DATE NOT NULL,
  pass_fail VARCHAR(4) NOT NULL,
  PRIMARY KEY (student_id, course_id),
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Departments
(
  department_id INT NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  head_professor_id INT,
  department_building VARCHAR(50) NOT NULL,
  PRIMARY KEY (department_id)
);

CREATE TABLE Professors
(
  professor_id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  hireing_date DATE NOT NULL,
  wage INT NOT NULL,
  mail_address VARCHAR(50) NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (professor_id),
  FOREIGN KEY (department_id) REFERENCES Departments(department_id),
  UNIQUE (mail_address)
);

CREATE TABLE Classrooms
(
  class_id INT NOT NULL,
  class_name VARCHAR(50) NOT NULL,
  class_building VARCHAR(50) NOT NULL,
  course_id INT NOT NULL,
  professor_id INT NOT NULL,
  PRIMARY KEY (class_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id),
  FOREIGN KEY (professor_id) REFERENCES Professors(professor_id)
);