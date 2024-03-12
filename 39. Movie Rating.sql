(SELECT name AS results        
FROM Users u
INNER JOIN MovieRating r
    USING(user_id)
GROUP BY user_id
ORDER BY COUNT(user_id) DESC, name
LIMIT 1)
UNION ALL
(SELECT title AS results         
FROM Movies
INNER JOIN MovieRating
    USING(movie_id)
WHERE MONTH(created_at) = 02 AND YEAR(created_at) = 2020    
GROUP BY movie_id    
ORDER BY AVG(rating) DESC, title       
LIMIT 1)  
