CREATE TABLE IF NOT EXISTS Likes(
  like_id SERIAL PRIMARY KEY,
  post_id INT NOT NULL, -- users_id on post_id from post_id
  user_id INT NOT NULL, --C on users_id from users
  created_at DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (post_id) REFERENCES Posts(post_id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES Users(users_id) ON DELETE CASCADE
);

INSERT INTO lIKES(post_id, user_id)
VALUES (1,1);

SELECT * FROM Likes;

