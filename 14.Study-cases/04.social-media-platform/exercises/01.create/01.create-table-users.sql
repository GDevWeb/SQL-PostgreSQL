CREATE TABLE Users(
  user_id SERIAL PRIMARY KEY,
  userName VARCHAR(100) NOT NULL,
  email VARCHAR(250) CHECK(Email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') UNIQUE NOT NULL,
  created_at DATE NOT NULL DEFAULT CURRENT_DATE
);

/* Test */
INSERT INTO Users(userName, email)
VALUES 
('JohnDoe59', 'johndoe59@gmail.com');


SELECT * FROM users;