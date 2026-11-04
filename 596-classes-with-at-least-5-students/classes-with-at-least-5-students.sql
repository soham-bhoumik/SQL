/* Write your T-SQL query statement below */
SELECT 
Stu.class
FROM(SELECT 
class,
count(*) as nstudent
FROM COURSES
GROUP BY class) AS Stu
WHERE Stu.nstudent >= 5