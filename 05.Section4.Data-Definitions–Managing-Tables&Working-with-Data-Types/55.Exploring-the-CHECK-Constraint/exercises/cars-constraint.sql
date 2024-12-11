-- Exercise 1: Create a cars Table

CREATE TABLE IF NOT EXISTS Cars(
  CarID SERIAL PRIMARY KEY,
  Brand VARCHAR(100) NOT NULL,
  Model VARCHAR(100) NOT NULL,
  Year INT NOT NULL CHECK(Year > 1990 AND Year <= EXTRACT(YEAR FROM CURRENT_DATE))
);

-- Exercise 2: Insert Valid and Invalid Data
-- 2.1.Valid Data :
-- INSERT INTO cars (Brand, Model, Year) VALUES ('Toyota ','Corolla', 2015);
-- 2.2.Insert an invalid car with a year before 1990:
-- INSERT INTO cars (Brand, Model, Year) VALUES ('Oldsmobile', 'Oldsmobile', 1980);

-- -- Add column price :
-- ALTER TABLE Cars
-- ADD COLUMN Price DECIMAL(10,2);

-- Update existing rows to set a minimum price of 1000
UPDATE Cars
SET Price = 1000.00
WHERE Price < 1000.00;

-- Drop the existing constraint if it exists
ALTER TABLE Cars
DROP CONSTRAINT IF EXISTS price_minimum;

-- Add a CHECK constraint to ensure Price is at least 1000
ALTER TABLE Cars
ADD CONSTRAINT price_minimum CHECK (Price >= 1000.00);

-- Verify the table
SELECT * FROM Cars;
