# Section 9: Built-in Query Functions & Operators

## **Roadmap for Section 9: Built-in Query Functions & Operators**

<div style="text-align:center">
<img src="img/module-project.png" style="widht:40%">
</div>

---

#### **Day 1: Wednesday**

**Goal**: Introduction and basic understanding of functions.

- **Tasks**:
  - 🟢 Watch videos:
    - 151. Module Introduction (2 min)
    - 152. The Module Project (5 min)
  - 🟢 Practice:
    - Review the schema of the **Module Project** and try creating the `Members`, `Membership Types`, and `Memberships` tables based on the provided structure.

---

#### **Day 2: Thursday**

**Goal**: Explore string and mathematical functions.

- **Tasks**:
  - 🟢 Watch videos:
    - 153. Working with Mathematical Functions & Arithmetic Operators (14 min)
    - 154. Understanding String Functions with SELECT (7 min)
    - 155. Using String Functions with INSERT (9 min)
  - 🟢 Practice:
    - Use mathematical functions to calculate totals, discounts, or averages.
    - Use string functions (`UPPER`, `LOWER`, `CONCAT`) on `Members` or `Membership Types`.

---

#### **Day 3: Friday**

**Goal**: Understand and apply date/time functions.

- **Tasks**:
  - 🟢 Watch videos:
    - 156. Understanding Date / Time Functions (5 min)
    - 157. Working with Weekdays (8 min)
    - 158. Calculating INTERVALS (10 min)
    - 159. Adding INTERVALS to Dates (8 min)
  - 🟢 Practice:
    - Work on the `Membership Start` and `Membership End` dates:
      - Calculate the duration of memberships using date differences.
      - Add intervals to extend membership periods.

---

#### **Day 4: Sunday**

**Goal**: Dive deeper into filtering and subqueries.

- **Tasks**:
  - 🟢 Watch videos:
    - 160. Understanding LIKE & Pattern Matching (10 min)
    - 161. Understanding EXISTS (6 min)
    - 162. Working with Subquery Expressions and EXISTS (4 min)
    - 163. Working with Subquery Expressions and IN (8 min)
  - 🟢 Practice:
    - Write queries using `LIKE` to find members by patterns in names.
    - Use `EXISTS` and subqueries to filter data:
      - E.g., Find members who have checked in more than 5 times.

---

#### **Day 5: Next Week**

**Goal**: Complete and finalize the section.

- **Tasks**:
  - 🟢 Watch videos:
    - 164. Introducing Conditional Expressions (7 min)
    - 165. Challenge Solution (7 min)
    - 166. Database (SQL) vs Application Level (3 min)
  - 🟢 Practice:
    - Use conditional expressions like `CASE` to label membership types (e.g., "Gold", "Silver").
    - Compare SQL queries and calculations with potential application-side processing.

---

#### **General Notes**

1. ⏱ **Pace Yourself**: Watch videos in chunks and prioritize applying concepts immediately in SQL.
2. 📚 **Practice Regularly**: Ensure each day ends with a mix of theory and practice.
3. ❓ **Ask Questions**: Share any doubts after practicing each set of queries.
4. 💾 **Save Work**: Continuously document your SQL scripts to review later.

Let me know if you need further adjustments or additional details for any day!

---

### Details to Create the Gym Club Membership Management System Database

The Gym Club Membership Management System database will involve three primary entities:

---

### **1. Members Table**

Tracks individual members of the gym.

- **Columns**:
  - `MemberID` (Primary Key, Serial): Unique identifier for each member.
  - `FirstName` (VARCHAR(50), NOT NULL): Member's first name.
  - `LastName` (VARCHAR(50), NOT NULL): Member's last name.
  - `Gender` (ENUM: 'Male', 'Female', 'Non-Binary', 'Other', 'N/A'): Gender of the member.
  - `DateOfBirth` (DATE): Member's date of birth.
  - `Email` (VARCHAR(100), UNIQUE, NOT NULL): Member's email address.
  - `PhoneNumber` (VARCHAR(15), UNIQUE): Member's phone number.
  - `JoinDate` (DATE, DEFAULT CURRENT_DATE): Date when the member joined.
  - `MembershipID` (Foreign Key): Links to the Membership Types table.

---

### **2. Membership Types Table**

Tracks types of gym memberships.

- **Columns**:
  - `MembershipID` (Primary Key, Serial): Unique identifier for each membership type.
  - `MembershipName` (VARCHAR(50), NOT NULL): Name of the membership (e.g., Basic, Premium, Family).
  - `Price` (DECIMAL(8,2), NOT NULL): Monthly cost of the membership.
  - `BillingFrequency` (ENUM: 'Monthly', 'Quarterly', 'Yearly'): Frequency of payment.
  - `AccessLevel` (VARCHAR(100)): Level of access provided (e.g., gym only, gym + pool, all facilities).

---

### **3. Membership Records Table**

Tracks active and past memberships for members.

- **Columns**:
  - `RecordID` (Primary Key, Serial): Unique identifier for each record.
  - `MemberID` (Foreign Key): Links to the Members table.
  - `MembershipID` (Foreign Key): Links to the Membership Types table.
  - `StartDate` (DATE, DEFAULT CURRENT_DATE): When the membership starts.
  - `EndDate` (DATE, NULLABLE): When the membership ends (null if active).
  - `LastCheckin` (TIMESTAMP): Last time the member checked into the gym.

---

### **4. Gym Check-In Table**

Tracks members' daily check-ins.

- **Columns**:
  - `CheckinID` (Primary Key, Serial): Unique identifier for each check-in.
  - `MemberID` (Foreign Key): Links to the Members table.
  - `CheckinTime` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP): Time the member checked in.
  - `CheckoutTime` (TIMESTAMP, NULLABLE): Time the member checked out.

---

### **5. Trainers Table**

Tracks gym trainers and their assigned members.

- **Columns**:
  - `TrainerID` (Primary Key, Serial): Unique identifier for each trainer.
  - `FirstName` (VARCHAR(50), NOT NULL): Trainer's first name.
  - `LastName` (VARCHAR(50), NOT NULL): Trainer's last name.
  - `Specialization` (VARCHAR(100)): Area of expertise (e.g., weightlifting, yoga).
  - `Email` (VARCHAR(100), UNIQUE, NOT NULL): Trainer's email address.
  - `PhoneNumber` (VARCHAR(15), UNIQUE): Trainer's phone number.

---

### **6. Trainer-Member Assignments Table**

Tracks relationships between trainers and members.

- **Columns**:
  - `AssignmentID` (Primary Key, Serial): Unique identifier for each assignment.
  - `TrainerID` (Foreign Key): Links to the Trainers table.
  - `MemberID` (Foreign Key): Links to the Members table.
  - `StartDate` (DATE, DEFAULT CURRENT_DATE): Date the assignment started.
  - `EndDate` (DATE, NULLABLE): Date the assignment ended.

---

### **7. Facilities Booking Table**

Tracks member bookings for specific gym facilities.

- **Columns**:
  - `BookingID` (Primary Key, Serial): Unique identifier for each booking.
  - `MemberID` (Foreign Key): Links to the Members table.
  - `FacilityName` (VARCHAR(100), NOT NULL): Name of the facility (e.g., yoga studio, pool).
  - `BookingDate` (DATE, DEFAULT CURRENT_DATE): Date of the booking.
  - `BookingTime` (TIMESTAMP): Time slot booked.

---

### Database Relationships

- **One-to-Many**:

  - A member can have multiple membership records (Members → Membership Records).
  - A member can check in multiple times (Members → Gym Check-In).
  - A trainer can be assigned to multiple members (Trainers → Trainer-Member Assignments).

- **Many-to-One**:
  - Multiple members can have the same membership type (Members → Membership Types).
  - Multiple membership records can refer to the same membership type (Membership Records → Membership Types).

---

### Example SQL Script to Create Tables

If you'd like, I can draft the SQL commands to create these tables based on this schema. Let me know!
