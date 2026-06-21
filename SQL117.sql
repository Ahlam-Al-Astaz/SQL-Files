USE altamyozschool;
SELECT * FROM Courses;
SELECT * FROM Teachers;
SELECT * FROM Students;
SELECT * FROM Students
ORDER BY student_name ASC;
SELECT student_name AS Player_Name, track, gpa
FROM Students;
UPDATE Students
SET email = 'cr7.official@realmdrid.com'
WHERE id = 1;
UPDATE Teachers  
SET email = 'captain.battat@palestine.ps'
WHERE id = 2;
SELECT id, student_name AS Player_name, email, track, gpa
FROM Students
ORDER BY student_name ASC;   