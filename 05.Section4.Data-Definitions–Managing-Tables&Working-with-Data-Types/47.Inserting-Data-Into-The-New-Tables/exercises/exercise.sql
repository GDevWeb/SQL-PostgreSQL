CREATE TABLE IF NOT EXISTS messages (
  MessageID SERIAL PRIMARY KEY,
  Content TEXT NOT NULL,
  Sender VARCHAR(100) NOT NULL,
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS logs (
  LogID SERIAL PRIMARY KEY,
  Message TEXT NOT NULL,
  LogLevel VARCHAR(50) NOT NULL,
  LoggedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO messages (Content, Sender)
VALUES
    ('Meeting scheduled for tomorrow at 10 AM.', 'Bob Smith'),
    ('Project deadline extended to next week.', 'Catherine Lee'),
    ('Don’t forget the team lunch on Friday.', 'David Brown');

SELECT * FROM logs;
SELECT * FROM messages;

