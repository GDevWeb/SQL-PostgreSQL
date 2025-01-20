CREATE TABLE IF NOT EXISTS Posts(
  post_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL, --fk user_id from users
  content Text,
  created_at DATE NOT NULL DEFAULT CURRENT_TIMESTAMP, 
  FOREIGN KEY (user_id) REFERENCES Users(users_id) ON DELETE CASCADE
);

-- INSERT INTO Posts(user_id, content)
-- VALUES
-- (1, 'Hello World, I am GD@evWeb. I am a curious IT engineer, passionate about learning, exploring new programming languages and developing increasingly projects.');

SELECT * FROM Posts;