-- CREATE TYPE specializationType AS ENUM ('Weight-Lifting', 'Cross-Training', 'Fitness', 'Yoga', 'Boxe-Rhythmic');

CREATE TABLE IF NOT EXISTS Trainers(
  TrainerID SERIAL PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Specialization specializationType NOT NULL,
  Email VARCHAR(100) UNIQUE NOT NULL,
  PhoneNumber VARCHAR(10) UNIQUE NOT NULL
);

SELECT * FROM trainers;