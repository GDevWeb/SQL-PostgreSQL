/* Queries */

--Find the total number of comments per post.
SELECT
p.post_id,
p.content,
COUNT(comment_id) as total_comment
FROM 
posts as p
LEFT JOIN comments c ON p.post_id = c.post_id
GROUP BY
p.post_id, 
p.content
ORDER BY
total_comment DESC;