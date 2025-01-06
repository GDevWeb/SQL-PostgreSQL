-- Start the transaction
BEGIN;

-- Insert first member
INSERT INTO members (firstname, lastname, email)
VALUES ('Alice', 'Brown', 'alice.brown@example.com');

-- Simulate an error (e.g., duplicate email for the second member)
INSERT INTO members (firstname, lastname, email)
VALUES ('Bob', 'Smith', 'alice.brown@example.com');

-- Rollback the transaction
ROLLBACK;

-- Verify no records were added
SELECT * FROM members WHERE firstname IN ('Alice', 'Bob');