
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
└── stage_a/
    ├── createTables.sql          # Table creation statements
    ├── insertTables.sql          # Data insertion scripts
    ├── dropTables.sql            # Clean-up script
    ├── selectAll.sql             # Example SELECT queries
    ├── DataImportFiles/
    │   └── my_student.csv        # Mock data files
    ├── mockarooFiles/
    │   ├── students.csv
	│	└── students_mockaroo.png
    ├── Programming/
    │   ├── source.py             # Python scripts (if applicable)
	│	├── classrooms.csv
	│	├── courses.csv
	│	├── departments.csv
	│	├── enrollments.csv
	│	├── grades.csv
	│	└── professors.csv
    ├── DSD.png                   # Data structure diagram
    ├── ERD.png                   # Entity-Relationship Diagram
	├── backup 20-04.tar
    └── Project_Report.pdf        # Full documentation
```

## 🧱 Technologies Used

- PostgreSQL
- SQL (DDL, DML)
- Python *(optional - if applicable)*
- CSV data (via Mockaroo)
- Diagram tools like ERD+ (for ERD & DSD creation)

## 🛠 How to Run

1. **Create tables:**
   ```sql
   \i createTables.sql
   ```

2. **Insert data:**
   ```sql
   \i insertTables.sql
   ```

3. **Run queries:**
   ```sql
   \i selectAll.sql
   ```

4. *(Optional)* Run Python scripts for automated interaction with the database:
   ```bash
   python Programming/source.py
   ```

## 📊 Project Highlights

- Clear ERD model using separate tables for complex many-to-many relationships (Enrollments, Grades).
- Proper use of foreign keys and constraints to ensure referential integrity.
- `UNIQUE` constraints for email fields to avoid duplication.
- Support for future scalability (e.g., attendance tracking, repeated course attempts, notifications).
- Clean separation of academic entities and infrastructure (e.g., courses vs. classrooms).

## 📄 Project Report

For a full explanation of the schema design, entity relationships, design choices, and usage examples, see the attached [Project_Report.pdf](./Project_Report.pdf).

---

*Created by Lior Masas as part of an academic database project.*
