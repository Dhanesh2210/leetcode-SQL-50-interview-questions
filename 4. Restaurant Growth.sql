WITH cte AS ( select
   visited_on,
   sum(amount) as a
   from customer
   group by visited_on),
  
cte1 AS (SELECT visited_on,
        SUM(a) OVER(ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount
        FROM cte)
  
SELECT visited_on, 
       amount,
       ROUND(amount/7,2) AS average_amount 
FROM cte1
WHERE DATE_SUB(visited_on, INTERVAL 6 DAY) IN (SELECT DISTINCT visited_on FROM Customer)             
