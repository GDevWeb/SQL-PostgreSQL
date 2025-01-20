/* Queries */
-- List all users who follow a specific user.
SELECT 
u.users_id AS followed_user_id,
u.username AS followed_username,
f.follower_user_id,
uf.username AS follower_username
FROM 
followers as f
INNER JOIN
users as u ON u.users_id = f.user_id
INNER JOIN
users AS uf on uf.users_id = f.follower_user_id
WHERE
u.users_id = 2;