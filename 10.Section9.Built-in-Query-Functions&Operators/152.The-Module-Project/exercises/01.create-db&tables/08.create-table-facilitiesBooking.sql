-- CREATE TYPE facilityType AS ENUM('Yoga studio', 'Pool', 'Fitness studio', 'Cardio studio', 'Cross-Training studio', 'Weight-Lifting studio');

CREATE TABLE IF NOT EXISTS FacilitiesBooking(
  BookingID SERIAL PRIMARY KEY,
  MemberID INT,--foreign key
  FacilityName facilityType NOT NULL,
  BookingDate DATE DEFAULT CURRENT_DATE,
  StartTime TIMESTAMP NOT NULL,
  EndTime TIMESTAMP NOT NULL,
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

SELECT * FROM FacilitiesBooking;

-- DROP TABLE IF EXISTS FacilitiesBooking;
