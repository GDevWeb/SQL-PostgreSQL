-- CREATE TYPE type_genre AS ENUM ('man','woman','N/A');
-- CREATE TYPE type_status AS ENUM ('user','premium','administrator');

CREATE TABLE IF NOT EXISTS users (
  UserID SERIAL PRIMARY KEY,
  Genre type_genre NOT NULL DEFAULT 'N/A',
  FName VARCHAR(100) NOT NULL,
  LName VARCHAR(100) NOT NULL,
  Street VARCHAR(200) DEFAULT 'N/A',
  City VARCHAR(100) DEFAULT 'N/A',
  State VARCHAR(100) DEFAULT 'N/A',
  PostalCode VARCHAR(20) DEFAULT '00000'
  Age INTEGER CHECK (Age >= 18 ) NOT NULL,
  Account_Created_Date DATE DEFAULT CURRENT_DATE,
  Updated_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  Account_Status type_status NOT NULL DEFAULT 'user',
  Account_IsPremium BOOLEAN GENERATED ALWAYS AS (Account_Status = 'premium') STORED
);


INSERT INTO users (Genre, FName, LName, Mail, Street, City, State, PostalCode, Age, Account_Created_Date, Account_Status)
VALUES
    ('man', 'John', 'Doe', 'john.doe@example.com', '123 Main St', 'Springfield', 'IL', '62704', 28, '2024-06-01', 'user'),
    ('woman', 'Jane', 'Smith', 'jane.smith@example.com', '456 Oak Ave', 'Chicago', 'IL', '60614', 34, '2024-06-02', 'premium'),
    ('man', 'Michael', 'Brown', 'michael.brown@example.com', '789 Pine Rd', 'Austin', 'TX', '73301', 45, '2024-06-03', 'user'),
    ('woman', 'Emily', 'Davis', 'emily.davis@example.com', '321 Elm St', 'Denver', 'CO', '80203', 30, '2024-06-04', 'premium'),
    ('man', 'William', 'Johnson', 'william.johnson@example.com', '654 Maple Dr', 'Seattle', 'WA', '98101', 38, '2024-06-05', 'administrator'),
    ('woman', 'Sarah', 'Miller', 'sarah.miller@example.com', '987 Birch Blvd', 'Boston', 'MA', '02115', 25, '2024-06-06', 'user'),
    ('N/A', 'Alex', 'Taylor', 'alex.taylor@example.com', '159 Cedar Ln', 'Miami', 'FL', '33101', 29, '2024-06-07', 'user')
ON CONFLICT (Mail) DO NOTHING;

-- Retrieving all data
-- SELECT * FROM users;

-- Retrieving only premium's user
-- SELECT * FROM users WHERE account_status = 'premium';

-- Complex Retrieving only premium's user and genre's woman
-- SELECT * FROM users WHERE account_status = 'premium' AND genre = 'woman';

-- Update account_status:
UPDATE users
SET account_status = 'premium'
WHERE Mail = 'alex.taylor@example.com'
RETURNING UserID, FName, LName, Mail, Account_Status;

-- DROP TABLE users;