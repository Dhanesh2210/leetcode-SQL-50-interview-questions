/*Write a solution to find managers with at least five direct reports.

Return the result table in any order.

The result format is in the following example.

Sample Input: 
Employee table:
+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+
Asample Output: 
+------+
| name |
+------+
| John |
+------+*/

SELECT e1.name 
FROM Employee e1
JOIN (SELECT managerId, COUNT(*) AS cnt
      FROM Employee
      GROUP BY managerId
      HAVING cnt >= 5) AS e2
  ON e1.id = e2.managerId 
