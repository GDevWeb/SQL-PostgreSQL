CREATE TYPE type_title AS ENUM('Apprentice','Employee','Manager', 'Developer Frontend', 'Developer BackEnd', 'Developer FullStack')

CREATE TABLE IF NOT EXISTS Job_Titles(
  job_title_id SERIAL PRIMARY KEY,
  title type_title NOT NULL DEFAULT 'Employee'
);


SELECT * FROM Job_titles
