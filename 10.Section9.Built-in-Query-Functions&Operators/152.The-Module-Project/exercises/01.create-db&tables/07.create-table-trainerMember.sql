CREATE TABLE IF NOT EXISTS TrainerMember(
  AssignmentID SERIAL PRIMARY KEY,
  TrainerID INT,--foreign key
  MemberID INT,--foreign key
  StartDate DATE DEFAULT CURRENT_DATE,
  EndDate DATE DEFAULT NULL,
  FOREIGN KEY (TrainerID) REFERENCES Trainers(TrainerID),
  FOREIGN KEY (MemberID) REFERENCES Members(MemberId)
);

SELECT * FROM TrainerMember;