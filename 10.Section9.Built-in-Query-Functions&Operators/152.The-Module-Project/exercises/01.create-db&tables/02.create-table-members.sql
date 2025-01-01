-- CREATE TYPE genderType AS ENUM('Male', 'Female', 'Non-Binary', 'Other', 'N/A');

CREATE TABLE IF NOT EXISTS Members(
  MemberId SERIAL PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Gender genderType NOT NULL,
  DateOfBirth DATE NOT NULL,
  Email VARCHAR(100) UNIQUE NOT NULL,
  PhoneNumber VARCHAR(10) UNIQUE NOT NULL,
  Address VARCHAR(200) NOT NULL,
  JoinDate DATE DEFAULT CURRENT_DATE,
  MembershipID INT,
  FOREIGN KEY (MembershipID) REFERENCES MembershipTypes(MembershipID)
);

SELECT * FROM members;


-- DROP TABLE members