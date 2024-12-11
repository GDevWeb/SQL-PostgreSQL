/* 
Exercise 1: Drop and Recreate a members Table
Drop the members table if it exists.

  Create a members table with the following columns:
  MemberID (Auto-increment primary key)
  Name (VARCHAR(100), not null)
  JoinDate (TIMESTAMP, default to the current timestamp)
  MembershipStatus (VARCHAR(20), default 'Active')
 
 */

CREATE TABLE IF NOT EXISTS members (
  MemberID SERIAL PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  JoinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  MembershipStatus VARCHAR(20) DEFAULT 'Active'
);

-- -- Exercise 2: Insert Data with Default Values
-- INSERT INTO members (Name) VALUES ('Alice Green')
-- ON CONFLICT (MemberID) DO NOTHING;
-- INSERT INTO members (Name, MembershipStatus) VALUES ('Bob White', 'Pending')
-- ON CONFLICT (MemberID) DO NOTHING;

INSERT INTO members(Name, MembershipStatus)
VALUES
('Hello world', DEFAULT),
('Good Bye world', DEFAULT);

SELECT * FROM members;

-- DROP TABLE IF EXISTS members;