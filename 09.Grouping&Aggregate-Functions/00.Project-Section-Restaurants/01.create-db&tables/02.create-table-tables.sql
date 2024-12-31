-- CREATE TYPE table_category AS ENUM('classic', 'outdoor', 'VIP');

CREATE TABLE IF NOT EXISTS  Tables(
  TableID SERIAL PRIMARY KEY,
  Seats INT CHECK (Seats >= 2) NOT NULL,
  Category table_category NOT NULL
);

SELECT * from Tables;