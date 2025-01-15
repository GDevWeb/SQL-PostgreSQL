CREATE TABLE IF NOT EXISTS Members(
  MembersID SERIAL PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(250) CHECK(Email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') UNIQUE NOT NULL,
  PhoneNumber VARCHAR(15) CHECK(LENGTH(PhoneNumber) = 10),
  Address TEXT NOT NULL
);

SELECT * FROM members;