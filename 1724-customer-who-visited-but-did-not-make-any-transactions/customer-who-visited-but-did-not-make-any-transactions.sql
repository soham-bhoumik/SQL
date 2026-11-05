/* Write your T-SQL query statement below */
SELECT 
customer_id,
COUNT(*) AS count_no_trans
FROM (
    SELECT 
    v.visit_id,
    v.customer_id,
    t.amount
    FROM Visits AS v
    LEFT JOIN Transactions AS t
    ON v.visit_id = t.visit_id
    WHERE amount IS NULL
) a
GROUP BY customer_id