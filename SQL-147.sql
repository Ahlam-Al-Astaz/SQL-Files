USE altamyozschool;
CREATE VIEW passed_students
AS
SELECT student_name, track, gpa
FROM top_students; 