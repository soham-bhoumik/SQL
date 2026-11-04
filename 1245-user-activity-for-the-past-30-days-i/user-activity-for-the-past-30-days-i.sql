/* Write your T-SQL query statement below */
SELECT 
day,
COUNT(user_id) AS active_users
FROM(SELECT 
activity_date as day,
user_id
--count(session_id) AS active_users
FROM Activity 
WHERE DATEDIFF(day,activity_date,'2019-07-27') BETWEEN 0 AND 29
GROUP BY user_id,activity_date)T
GROUP BY day
