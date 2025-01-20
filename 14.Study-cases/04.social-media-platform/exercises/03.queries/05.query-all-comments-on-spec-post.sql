-- /* Queries */

SELECT
    u.username AS commenter_name,
    c.content AS comment_content,
    c.created_at
FROM 
    comments AS c
INNER JOIN 
    users AS u ON c.user_id = u.users_id
WHERE 
    c.post_id = 18
ORDER BY 
    c.created_at ASC;
