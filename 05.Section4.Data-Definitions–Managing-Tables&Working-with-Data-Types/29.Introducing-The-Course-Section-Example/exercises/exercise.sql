-- CREATE TABLE employers(
--   EmployerID INT PRIMARY KEY,
--   CompanyName VARCHAR(100),
--   ContactEmail VARCHAR(100)
-- );

-- CREATE TABLE users(
--   UserID INT PRIMARY KEY,
--   Name VARCHAR(100),
--   Skills TEXT,
--   Email VARCHAR(100)
-- );

-- CREATE TABLE conversations (
--     ConversationID INT PRIMARY KEY,
--     EmployerID INT,
--     UserID INT,
--     Message TEXT,
--     Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (EmployerID) REFERENCES employers(EmployerID),
--     FOREIGN KEY (UserID) REFERENCES users(UserID)
-- );

-- --  Insert an Employer
-- INSERT INTO employers (EmployerID, CompanyName, ContactEmail)
-- VALUES (2, 'Innovatex', 'talent-contact@innivatex.com');

-- --  Insert an User
-- INSERT INTO users (UserID, Name, Skills, Email)
-- VALUES (2, 'John Doe', 'Python, Data analysis', 'johndoe@gmail.com');

-- -- Insert a conversation between employer and user
-- INSERT INTO conversations (ConversationID, EmployerID, UserID, Message, TimeStamp)
-- VALUES (2, 2, 2, 'We’d like to discuss a potential data analysis project.', NOW());

-- show DB employers:
-- SELECT * FROM employers

-- show DB employers only :
SELECT * FROM employers WHERE CompanyName = 'Innovatex';

SELECT * FROM users WHERE Name = 'John Doe';
