/* Queries */

-- Retrieve all posts with their author and creation time.

SELECT
u.userName, 
p.content,
p.crated_at
FROM 
posts AS p
INNER JOIN
users AS u ON u.users_id = p.user_id
ORDER BY created_at DESC;