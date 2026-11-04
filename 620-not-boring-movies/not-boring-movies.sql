/* Write your T-SQL query statement below */
SELECT * 
FROM Cinema as c
WHERE id%2 <> 0 AND c.description <> 'boring'
ORDER BY c.rating DESC