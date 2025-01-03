-- CREATE TYPE memberShipNameType AS ENUM('Basic', 'Premium', 'Family'); --frequency of the payment
-- CREATE TYPE billingFrequencyType AS ENUM('Monthly', 'Quarterly', 'Yearly'); --frequency of the payment
-- CREATE TYPE accessLevelType AS ENUM('Gym only', 'Gym + pool', 'All facilities'); --frequency of the payment

CREATE TABLE IF NOT EXISTS MembershipTypes(
  MembershipID SERIAL PRIMARY KEY,
  MembershipName memberShipNameType NOT NULL,
  Price DECIMAL(8,2) NOT NULL,
  BillingFrequency billingFrequencyType NOT NULL,
  AccessLevel accessLevelType NOT NULL
);

SELECT * FROM membershiptypes;

