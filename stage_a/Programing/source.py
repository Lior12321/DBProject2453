# Description: This script generates CSV files for each table in the database.
import csv
import random
from faker import Faker

fake = Faker()

# create a CSV file for students table
def generate_students(filename, num_rows=400):
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["student_id", "first_name", "last_name", "birth_date", "mail_address"])
        for i in range(1, num_rows + 1):
            writer.writerow([i, fake.first_name(), fake.last_name(), fake.date_of_birth(minimum_age=18, maximum_age=30), fake.email()])

# create a CSV file for courses table
def generate_courses(filename, num_rows=100):
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["course_id", "course_name", "credits"])
        for i in range(1, num_rows + 1):
            writer.writerow([i, fake.sentence(nb_words=3).replace('.', ''), random.randint(1, 5)])

# create a CSV file for enrollments table
def generate_enrollments(filename, num_rows=400):
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["enrollment_id", "enrollment_date", "enrollment_price", "student_id", "course_id"])
        for i in range(1, num_rows + 1):
            writer.writerow([i, fake.date_this_decade(), random.randint(500, 5000), random.randint(1, 400), random.randint(1, 407)])

# create a CSV file for grades table
def generate_grades(filename, num_rows=400):
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["student_id", "course_id", "grade", "grade_date", "pass/fail"])
        for i in range(1, num_rows + 1):
            grade = random.randint(50, 100)
            writer.writerow([random.randint(1, 400), random.randint(1, 400), grade, fake.date_this_decade(), "pass" if grade >= 60 else "fail"])

# create a CSV file for professors table
def generate_professors(filename, num_rows=50):
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["professor_id", "first_name", "last_name", "hireing_date", "wage", "mail_address", "department_id"])
        for i in range(1, num_rows + 1):
            writer.writerow([i, fake.first_name(), fake.last_name(), fake.date_this_century(), random.randint(5000, 20000), fake.email(), random.randint(1, 10)])

# create a CSV file for departments table
def generate_departments(filename, num_rows=10):
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["department_id", "department_name", "head_professor_id", "department_building"])
        for i in range(1, num_rows + 1):
            writer.writerow([i, fake.company(), random.randint(1, 50), fake.street_name()])

# create a CSV file for classes table
def generate_classes(filename, num_rows=400):
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["class_id", "class_name", "class_building", "course_id", "professor_id"])
        for i in range(1, num_rows + 1):
            writer.writerow([i, fake.word(), fake.street_name(), random.randint(1, 100), random.randint(1, 50)])

# create a CSV file for each table
generate_students("students.csv")
generate_courses("courses.csv")
generate_enrollments("enrollments.csv")
generate_grades("grades.csv")
generate_professors("professors.csv")
generate_departments("departments.csv")
generate_classes("classes.csv")

print("All CSV files have been generated successfully!")
