CREATE TABLE Students(
id INT PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(100) NOT NULL,
birth_date DATE,
gender CHAR(1) CHECK (gender IN ('M','F')),
enrollmant_date DATE,
email VARCHAR(100),
academic_level INT CHECK (academic_level IN (1,2,3,4,5,6)),
track VARCHAR(20) CHECK (track IN ('Scientific', 'Humanities')),
gpa DECIMAL(5,2) CHECK (gpa BETWEEN 0 AND 100)
);
CREATE TABLE Teachers (
id INT PRIMARY KEY AUTO_INCREMENT,
teacher_name VARCHAR(100) NOT NULL,
birth_date DATE,
gender CHAR(1) CHECK (gender IN ('M', 'F')),
email VARCHAR(100)
);
CREATE TABLE Courses (
id INT PRIMARY KEY AUTO_INCREMENT,
book_number VARCHAR(50),
course_name VARCHAR(100) NOT NULL
);