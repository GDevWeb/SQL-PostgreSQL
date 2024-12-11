CREATE TABLE IF NOT EXISTS employers (
  EmployerID SERIAL PRIMARY KEY,
  CompanyName VARCHAR(100) NOT NULL,
  CompanyAddress VARCHAR(255),
  YearlyRevenue DECIMAL(10,2),
  IsHiring BOOLEAN
);

CREATE TABLE IF NOT EXISTS users (
  UserID SERIAL PRIMARY KEY,
  FullName VARCHAR(100) NOT NULL,
  YearlySalary DECIMAL(10,2),
  CurrentStatus VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS conversations(
  ConversationID SERIAL PRIMARY KEY,
  UserID INT REFERENCES users(UserID),
  EmployerID INT REFERENCES employers(EmployerID),
  Message TEXT NOT NULL
);

--1.Add data into employers
-- INSERT INTO employers (CompanyName, CompanyAddress, YearlyRevenue, IsHiring)
-- VALUES ('IBM', 'Euratechnologie - 59000 Lille', 5000000.00, TRUE);

-- SELECT * FROM employers;

-- 2.add user data
-- INSERT INTO users (FullName, YearlySalary, CurrentStatus)
-- VALUES ('Frank Meyer', 30000, 'self-employed');

-- SELECT * FROM users;

-- 3. Establishing Relationships Between Tables
-- INSERT INTO conversations(UserID, EmployerID, Message)
-- VALUES (1,1, 'hello world !');

-- SELECT * FROM conversations;

-- Exercise 4: Query the Conversations
-- Join the users and employers tables through the conversations table to see the messages:
SELECT
    c.ConversationID,
    u.FullName AS UserName,
    e.CompanyName AS EmployerName,
    c.Message
FROM conversations c
JOIN users u ON c.UserID = u.UserID
JOIN employers e ON c.EmployerID = e.EmployerID;
--❗
-- DROP TABLE IF EXISTS employers;
-- DROP TABLE IF EXISTS users;
-- DROP TABLE IF EXISTS conversations;