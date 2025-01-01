CREATE TABLE IF NOT EXISTS MembershipRecords(
  RecordID SERIAL PRIMARY KEY,
  MemberID INT, --foreign key
  MembershipID INT, --foreign key
  StartDate DATE DEFAULT CURRENT_DATE,
  EndDate DATE DEFAULT NULL, --(DATE, NULLABLE): When the membership ends (null if active).
  LastCheckIn TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- (TIMESTAMP): Last time the member checked into the gym. 
  FOREIGN KEY (MemberID) REFERENCES Members(memberID),
  FOREIGN KEY (MembershipID) REFERENCES MembershipTypes(MembershipID)
);

SELECT * FROM MembershipRecords;