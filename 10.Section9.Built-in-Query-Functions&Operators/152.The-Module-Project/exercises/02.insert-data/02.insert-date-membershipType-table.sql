INSERT INTO MembershipTypes (MembershipName, Price, BillingFrequency, AccessLevel)
VALUES
('Basic', 30, 'Monthly', 'Gym only'),
('Premium', 50, 'Monthly', 'Gym + pool'),
('Premium', 500, 'Yearly', 'All facilities'),
('Family', 70, 'Monthly', 'All facilities');

SELECT * FROM membershiptypes;