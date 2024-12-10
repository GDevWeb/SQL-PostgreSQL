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

-- INSERT INTO messages (Content, Sender)
-- VALUES
--     ('Meeting scheduled for tomorrow at 10 AM.', 'Bob Smith'),
--     ('Project deadline extended to next week.', 'Catherine Lee'),
--     ('Don’t forget the team lunch on Friday.', 'David Brown');

-- SELECT * FROM logs;
-- SELECT * FROM messages;


CREATE TABLE IF NOT EXISTS event(
  EventID SERIAL PRIMARY KEY,
  EventName VARCHAR(100) NOT NULL,
  EventTime TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- INSERT INTO event (EventName, EventTime)
-- VALUES ('Project Launch', '2024-06-10 16:00:00 CEST');

SELECT EventID, EventName, EventTime FROM event;

