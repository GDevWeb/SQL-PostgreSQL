/* 
154: Understanding String Functions with SELECT

### **Exercise**
 */

/* 
1. Extract the first three letters of each member’s first name and display them alongside the full name.
 */
SELECT 
firstname,
SUBSTRING(firstname FROM 1 FOR 3) AS full_name
FROM members;

/* 
2. Find the position of the letter `a` in each member’s first name.
 */
SELECT 
firstname,
POSITION('a' IN (lower(firstname))) as position_of_a
FROM members;

/* 
3. Trim all unnecessary spaces from the `membership_type` column and convert it to uppercase.
 */

SELECT 
MembershipName,
TRIM(upper(membershipname)) AS trimmed_capitalized_type 
FROM membershiptypes;

___
-- Grade
-- A-