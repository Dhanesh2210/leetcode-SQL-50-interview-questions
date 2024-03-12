WITH cte AS (SELECT turn, person_name, weight,
        SUM(weight) OVER(ORDER BY turn ASC) AS r_sum
FROM Queue    
ORDER BY turn)
SELECT person_name
FROM Queue q
WHERE q.turn = (SELECT MAX(turn) 
                FROM cte 
                WHERE r_sum<=1000)
