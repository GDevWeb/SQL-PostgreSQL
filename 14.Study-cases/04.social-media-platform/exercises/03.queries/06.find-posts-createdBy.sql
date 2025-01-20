/* Queries */

-- Find posts created by a specific user.

SELECT 
p.post_id,
p.user_id,
p.content AS post,
u.username AS author
FROM posts AS p
INNER JOIN 
users AS u 
ON u.users_id = p.user_id
WHERE u.username = 'jdoe';