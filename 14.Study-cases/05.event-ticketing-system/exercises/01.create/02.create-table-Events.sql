CREATE TABLE IF NOT EXISTS Events(
  event_id SERIAL PRIMARY KEY,
  event_name VARCHAR(250) NOT NULL,
  location VARCHAR(250) NOT NULL,
  start_time TIMESTAMP NOT NULL,
  end_time TIMESTAMP NOT NULL CHECK (end_time > start_time),
  price NUMERIC(10,2) NOT NULL CHECK (price >= 9.99) 
);

-- INSERT INTO Events(event_name, location, start_time, end_time, price)
-- VALUES
-- ('EJS show 2025', 'New York', '2025-06-05 09:00:00', '2025-06-05 12:00:00', 9.99),
-- ('Angular show 2025', 'San Francisco', '2025-09-05 09:00:00', '2025-09-05 12:30:00', 9.99);

SELECT * FROM Events;

-- SELECT ALL FROM Events;

-- Drop TABLE events;
