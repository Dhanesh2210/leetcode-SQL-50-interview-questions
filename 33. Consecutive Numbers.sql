SELECT DISTINCT num AS ConsecutiveNums 
FROM
(SELECT num,
    LEAD(num,1) OVER() AS a,
    LEAD(num,2) OVER() AS b
FROM logs) tab
WHERE num=a AND a=b
