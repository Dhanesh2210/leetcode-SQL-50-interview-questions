/*
Write a solution to find all dates' Id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.
The result format is in the following example.

Sample Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Sample Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+*/


SELECT w1.id
FROM Weather w1,
Weather w2
WHERE DATEDIFF(w1.recordDate,w2.recordDate) = 1 
      AND w1.temperature > w2.temperature 

