CREATE TABLE IF NOT EXISTS Customer(
  CustomerID SERIAL PRIMARY KEY,
  FirstName  VARCHAR(50) NOT NULL,
  LastName  VARCHAR(50) NOT NULL,
  Email  VARCHAR(255) CHECK (Email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') UNIQUE NOT NULL,
  PhoneNumber VARCHAR(255) UNIQUE NOT NULL,
  Address TEXT  NOT NULL
);

SELECT * FROM Customer;