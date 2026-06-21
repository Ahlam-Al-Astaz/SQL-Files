USE altamyozschool;
-- ALTER TABLE teachers ADD COLUMN office_number INT DEFAULT 101;
-- ****************************************************************
CREATE TABLE IF NOT EXISTS teacher_student(
teacher_id INT,
student_id INT,
PRIMARY KEY (teacher_id, student_id),
FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON DELETE CASCADE,
FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);
-- ********************************************************************
CREATE TABLE IF NOT EXISTS course_teacher(
course_id INT,
teacher_id INT,
PRIMARY KEY (course_id, teacher_id),
FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON DELETE CASCADE
);
-- *********************************************************************
CREATE TABLE IF NOT EXISTS course_student(
course_id INT,
student_id INT,
PRIMARY KEY (course_id, student_id),
FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);
-- **********************************************************************
INSERT IGNORE INTO course_student (course_id, student_id) VALUES (1, 1), (2,  2), (3, 3);
INSERT IGNORE INTO course_teacher (course_id, teacher_id) VALUES (1, 1), (2, 2);
DROP PROCEDURE IF EXISTS student_info;
DELIMITER //
CREATE PROCEDURE student_info()
BEGIN
SELECT
s.student_name,
c.course_name
FROM students s
INNER JOIN course_student cs ON s.id = cs.student_id
INNER JOIN courses c ON cs.course_id = c.id;
END //
DELIMITER ;
INSERT IGNORE INTO course_student (course_id, student_id) VALUES (1, 1), (2, 2);
CALL student_info();
CREATE OR REPLACE VIEW teacher_info AS
SELECT
t.teacher_name,
t.office_number,
c.course_name
FROM teachers t
INNER JOIN course_teacher ct ON t.id = ct.teacher_id
INNER JOIN courses c ON ct.course_id = c.id;
-- ************************************************************************
SELECT * FROM teacher_info;
-- ************************************************************************
CREATE INDEX idx_student_name ON students (student_name);
SHOW INDEX FROM students;
SELECT id FROM students LIMIT 2;
SELECT id FROM courses LIMIT 2;