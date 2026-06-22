# MySQL Workbench Labs & Hands-on Exercises

A structured repository containing practical SQL scripts, lab exercises, and relational database designs implemented using MySQL Workbench during the SQL 101, 102, and 103 courses.

## 📚 Overview
This repository showcases the foundational and practical database skills I acquired. It includes core scripts for creating relational schemas, applying structural constraints, manipulating data, and querying databases.

## 🔍 Key Database Concepts Applied

### 1. Database Schema Design & DDL
* **Table Creation:** Structuring relational tables with proper data types (e.g., `Students`, `Teachers`, `Courses`, and `Employee` tables as seen in `ALTamyozSchool` and `company` schemas).
* **Data Integrity & Constraints:** Implementing strict database rules to ensure data validity:
  * `PRIMARY KEY` & `AUTO_INCREMENT` for unique record identification.
  * `CHECK` constraints for validating specific data ranges (e.g., `gpa BETWEEN 0 AND 100`, `academic_level IN (1,2,3,4,5,6)`, and gender validation).
  * `NOT NULL` and `UNIQUE` properties for critical columns.

### 2. Data Manipulation Language (DML)
* **Bulk Data Insertion:** Writing optimized `INSERT INTO` statements to populate multiple rows simultaneously for lookup tables (courses, teachers, and student profiles).

### 3. Database Administration & Management
* Executing schema management commands safely using conditional structures like `CREATE DATABASE IF NOT EXISTS`.
* Organizing tables into dedicated, isolated schemas (`twitter_db`, `altamyozschool`, `company`).

## 🛠️ Environment & Tools
* **RDBMS:** MySQL Server
* **Database Administration Tool:** MySQL Workbench
*
