CREATE TABLE IF NOT EXISTS Users(
  user_id Serial PRIMARY Key,
  username VARCHAR(50) NOT NULL,    
  email VARCHAR(250) CHECK(Email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') UNIQUE NOT NULL,
  created_at DATE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Users(username, email, created_at)
VALUES
('John Doe', 'johndoe@fakemail.com', '2023-01-25'),
('Jane Doeson', 'janedoeson@fakemail.com', '2023-02-18');

SELECT * FROM Users;
