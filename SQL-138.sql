ALTER TABLE students 
ADD COLUMN Department_ID INT;
ALTER TABLE students
ADD CONSTRAINT fk_students_departments
foreign key (Department_ID) references Departments (Department_ID)