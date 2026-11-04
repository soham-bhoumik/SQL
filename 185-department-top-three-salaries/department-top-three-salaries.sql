/* Write your T-SQL query statement below */
SELECT 
Department,
A.name as Employee,
salary as Salary
FROM (SELECT *,
DENSE_RANK() OVER(PARTITION BY Department ORDER BY salary DESC) as Rank
From    (SELECT 
    e.id,
    e.name,
    e.salary,
    d.name as Department
    FROM Employee AS e
    LEFT JOIN Department as d
    ON e.departmentId = d.id) t)A
WHERE Rank <=3