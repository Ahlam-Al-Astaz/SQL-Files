USE altamyozschool;
-- انشاء جدول للطلاب المتفوقين الذين معدلهم التراكمي اعلى من 90
CREATE TABLE IF NOT EXISTS top_students AS
SELECT * FROM students
WHERE gpa > 90;
-- انشاء جدول للطلاب غير المجتازين الذين معدلهم التراكمي اقل من 60
CREATE TABLE IF NOT EXISTS failing_students AS
SELECT * FROM students 
WHERE gpa < 60;
-- عرض اسماء الطلاب التي تبدا بحرف ال a
SELECT student_name
FROM students
WHERE student_name LIKE 'A%';
-- عرض اسماء الطلاب التي تحتوي اسماىْهم على اربع خانات 
SELECT student_name
FROM students
WHERE student_name LIKE '____';
-- تطبيق ال AGGREGATE FUNCTIONS (MIN, MAX, AVG) على المعدل التراكمي
SELECT
AVG(gpa) AS "Average GPA",
MAX(gpa) AS "Highest GPA",
MIN(gpa) AS "Lowest GPA"
FROM students;
-- حصر وعرض اسماء الطلاب المتفوقين في المستوى السادس بمعدل تراكمي 100
SELECT student_name
FROM students
WHERE academic_level = 6 AND gpa = 100;
-- عرض الطلاب الذين في المستوى الاول و اعمارهم بين 15 و 16 سنة
SELECT *FROM students
WHERE academic_level = 1 
AND (YEAR(CURDATE()) - YEAR(birth_date)) BETWEEN 15 AND 16;
-- عرض عدد الطلاب الموجودين بالمستوى 2
SELECT COUNT(*) AS "Number of Students in level 2"
FROM students
WHERE academic_level =2;
-- استعراض مسارات الطلاب في المدرسة بدون تكرار
SELECT DISTINCT track
FROM students;
-- عرض اسماء المواد بلاحرف الكبيرة (Uppewcase)
SELECT UPPER(course_name) AS "Material Name In Uppercase"
FROM courses;
-- عرض المتوسط الحسابي للمعدل و تقريبه لاقرب رقم صحيح اصغر (FLOOR)
SELECT FLOOR(AVG(gpa)) AS "Rounded Down Average GPA"
FROM students;
-- تبديل الاحرف في عامود الجنس (F -> FEMALE) و (M -> MALE) باستخدام الدوال النصية
SELECT 
id,
student_name,
REPLACE(REPLACE(gender, 'F', 'Female'), 'M', 'Male') AS gender
FROM students;
-- تحديث المعدل التراكمي للطلاب الذين معدلهم اقل من 60 وزيادته ب 5 دراجات
UPDATE students
SET gpa = gpa + 5
WHERE gpa < 60;
-- حفظ التغيرات نهاىْيا في قاعدة البيانات
COMMIT;