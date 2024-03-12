SELECT class
FROM
    (SELECT class, COUNT(student) as cnt
    FROM Courses 
    GROUP BY class) a
WHERE cnt >= 5    
