-- CREATE TYPE type_logLevel AS ENUM ('INFO','ERROR','DEFAULT');

-- -- Exercise 1: Create a logs Table
-- CREATE TABLE IF NOT EXISTS logs(
--   LogID SERIAL PRIMARY KEY,
--   Message TEXT NOT NULL,
--   LogLevel type_logLevel NOT NULL DEFAULT 'DEFAULT',
--   LoggedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- -- Exercise 2: Insert Data into logs
-- INSERT INTO logs (Message, LogLevel)
-- VALUES
--     ('System started.', 'INFO'),
--     ('Database connection failed.', 'ERROR');

SELECT * FROM logs;

