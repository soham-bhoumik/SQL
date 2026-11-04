/* Write your T-SQL query statement below */
SELECT 
EU.unique_id,
e.name
FROM Employees AS E
LEFT JOIN EmployeeUNI AS EU
ON E.id = EU.id