/* Queries */
-- Get the top 5 most-liked posts.
SELECT
p.post_id,
p.content,
COUNT(l.like_id) as total_likes
FROM likes as l
INNER JOIN 
posts AS p ON p.post_id = l.post_id
GROUP BY
p.post_id,
p.content
ORDER BY total_likes DESC LIMIT 5;

