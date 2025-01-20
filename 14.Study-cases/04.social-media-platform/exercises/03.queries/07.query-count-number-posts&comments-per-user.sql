/* Queries */

-- Count the number of posts, likes, and comments per user.

SELECT  
u.username,
COUNT(p.post_id) AS number_of_posts,
COUNT(l.like_id) AS number_of_like,
COUNT(c.comment_id) AS number_comments
FROM users AS u 
LEFT JOIN 
posts AS p 
on p.user_id = u.users_id
LEFT JOIN
likes AS l 
on l.post_id = p.post_id
LEFT JOIN 
comments as c 
on c.comment_id = p.post_id
GROUP BY 
u.username;