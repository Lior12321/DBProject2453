
# 🎓 University Database Management System – DBProject2453

## 📘 Overview

This project simulates a university database system. It contains key entities such as **students, professors, departments, courses, grades, enrollments, and classrooms**, and defines logical relationships among them using SQL.
The goal is to build a well-structured, normalized relational database and demonstrate meaningful queries and operations on it.

## 🎯 Objectives

- Design a normalized relational database.
- Create and manage tables with correct relationships using primary and foreign keys.
- Execute complex SQL queries to retrieve and manipulate data.
- Ensure data integrity and prevent anomalies.
- Practice ERD modeling and real-world academic data management.

## 📂 Project Structure

```
DBProject2453/ 
├── README.md 				# Project overview and instructions 	
├── Project_Report.pdf 		# Full documentation 
└── stage_a/ 
	├── createTables.sql 	# Table creation statements 
	├── insertTables.sql 	# Data insertion scripts 
	├── dropTables.sql 		# Clean-up script 
	├── selectAll.sql 		# Example SELECT queries 
	├── DataImportFiles/ 
	│ 	└── my_student.csv 	# Mock data files 
	├── mockarooFiles/ 
	│ 	├── students.csv 
	│ 	└── students_mockaroo.png 
	├── Programming/ 
	│ 	├── source.py 		# Python scripts 
	│ 	├── classrooms.csv 
	│ 	├── courses.csv 
	│ 	├── departments.csv 
	│ 	├── enrollments.csv 
	│ 	├── grades.csv 
	│ 	└── professors.csv 
	├── DSD.png 			# Data structure diagram 
	├── ERD.png 			# Entity-Relationship Diagram 
	└── backup 20-04.tar 	# Backup file
```

## 🧱 Technologies Used

- PostgreSQL
- SQL (DDL, DML)
- Python *(optional - if applicable)*
- CSV data (via Mockaroo)
- Diagram tools like ERD+ (for ERD & DSD creation)

## 🛠 How to Run

1. **Create tables:**
	Creates all necessary tables for the database schema.
	File: stage_a/createTables.sql

	Description:
	Defines the structure of the database by creating tables such as students, professors, courses, departments, enrollments, grades, and classrooms.
	Includes primary keys, foreign keys, and other constraints to ensure data integrity
	
	Run:
   ```sql
   \i createTables.sql
   ```

2. **Insert data:**
	Populates the tables with initial mock data.
	File: stage_a/insertTables.sql
	
	Description:
	Inserts sample data into all the tables, using a combination of manually created data (my_student.csv)
	and auto-generated data from Mockaroo (students.csv), as well as additional CSV files
	
	Run:	
   ```sql
   \i insertTables.sql
   ```

3. **Run queries:**
	Executes example queries on the populated database.
	File: stage_a/selectAll.sql
	
	Description:
	Contains SELECT statements to retrieve and verify the data inserted into the database. Useful for validation and demonstration of the database structure.

	Run:
   ```sql
   \i selectAll.sql
   ```

4. **Run Python scripts (Optional):**
	Automates some interactions with the database.
	File: stage_a/Programming/source.py

	Description:
	A Python script that connects to the PostgreSQL database and performs queries, inserts, or updates programmatically.
	(Requires psycopg2 or similar library installed.)

	Run:
   ```bash
   python Programming/source.py
   ```

## 📊 Project Highlights

- Clear ERD model using separate tables for complex many-to-many relationships (Enrollments, Grades).
- Proper use of foreign keys and constraints to ensure referential integrity.
- `UNIQUE` constraints for email fields to avoid duplication.
- Support for future scalability (e.g., attendance tracking, repeated course attempts, notifications).
- Clean separation of academic entities and infrastructure (e.g., courses vs. classrooms).


## 📁 Additional Files Description

**📑 CSV Files (Mock Data)**
Located under stage_a/DataImportFiles/ and stage_a/Programming/.

- my_student.csv (DataImportFiles/)
	Contains a small manually created dataset of students for initial inserts.
	
- students.csv (mockarooFiles/)
	Large dataset generated using Mockaroo for simulating real-world student data.
	
- classrooms.csv, courses.csv, departments.csv, enrollments.csv, grades.csv, professors.csv (Programming/)
	Additional datasets used for inserting realistic records into the relevant tables.

**🖼️ Diagrams**

Located under stage_a/.

- DSD.png
	Data Structure Diagram (DSD) that visually explains how data is organized within the database.
	
- ERD.png
	Entity-Relationship Diagram (ERD) showing the logical relationships between tables (entities).

**🗄️ Backup File**
- backup 20-04.tar (stage_a/)
	A full backup of the database created using PostgreSQL's backup tools.
	Can be used to restore the database to the current state if needed.



## 📄 Project Report

For a full explanation of the schema design, entity relationships, design choices, and usage examples, see the attached [Project_Report.pdf](./Project_Report.pdf).

---

*Created by Lior Masas, Yinon Solomon and Eliyahu Kopansky as part of an academic database project.*
