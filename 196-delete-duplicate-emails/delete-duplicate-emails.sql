DELETE P
FROM Person P
JOIN (
    SELECT
        id,
        ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) AS rn
    FROM Person
) T
ON P.id = T.id
WHERE T.rn > 1;