CREATE TABLE IF NOT EXISTS cars(
  CarID SERIAL PRIMARY KEY,
  Brand VARCHAR(25) NOT NULL,
  Model VARCHAR(50) NOT Null,
  Year Date NOt NULL,
  Motor Varchar(50),
  Options Varchar(100)
);

-- Update Table
Alter TABLE cars
ADD COLUMN Price DECIMAL(10,2),
ADD COLUMN Discount DECIMAL(5,2),
ADD COLUMN DiscountedPrice DECIMAL(10,2);

INSERT INTO cars (Brand, Model, Year, Motor, Options, Price, Discount, DiscountedPrice)
VALUES ('Renault', 'Captur', '2024-01-01', 'Hybrid Diesel', 'Backyard Camera, Google CarPlay', 25000.00, 10.00, 22500.00);
SELECT * FROM cars;

