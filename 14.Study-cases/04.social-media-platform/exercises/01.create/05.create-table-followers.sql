CREATE TABLE IF NOT EXISTS Followers(
  follower_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL, -- foreign key users_id from users
  follower_user_id INT NOT NULL, -- foreign key users_id from users as the follower
  created_at DATE DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES Users(users_id) ON DELETE  CASCADE,
  FOREIGN KEY (follower_user_id) REFERENCES Users(users_id) ON DELETE  CASCADE
);

INSERT INTO Followers(user_id, follower_user_id)
VALUES
(1,3);

SELECT * FROM Followers;