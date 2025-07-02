/*-----------------------------------------------------------
  1️⃣  CREATE AND USE DATABASE
-----------------------------------------------------------*/
-- Create a new database named `base`
CREATE DATABASE base;

-- Switch the session to `base` so all subsequent commands
-- apply to this database
USE base;



/*-----------------------------------------------------------
  2️⃣  INSPECT CURRENT OBJECTS
-----------------------------------------------------------*/
-- Show any tables that already exist in `base`
SHOW TABLES;



/*-----------------------------------------------------------
  3️⃣  CREATE `employee` TABLE
-----------------------------------------------------------*/
-- The table will store basic employee information
CREATE TABLE employee (
    emp_id        INT PRIMARY KEY,          -- Unique employee ID
    first_name    VARCHAR(40),              -- First name
    last_name     VARCHAR(40),              -- Last name
    email         VARCHAR(50),              -- Corporate e-mail
    phone_number  VARCHAR(15),              -- Contact phone
    job_title     VARCHAR(20),              -- Job position
    salary        DECIMAL(10,2),            -- Salary with 2 decimals
    department    VARCHAR(50)               -- Department name
);

-- Verify structure (optional)
SELECT * FROM employee;   -- Empty result - table just created



/*-----------------------------------------------------------
  4️⃣  INSERT SAMPLE DATA
-----------------------------------------------------------*/
INSERT INTO employee
(emp_id, first_name, last_name, email, phone_number,
 job_title, salary, department)
VALUES
--            1 -------------- 2 -------- 3 ---------------- 4 ------------- 5 ------------------- 6 ------- 7 ------
(2,  'Abhishek', 'Sharma',  'rahul.sharma@example.com',  '9876543210',  'Software Engineer',   75000.00, 'IT'),
(3,  'Nikhil',   'Mehta',   'priya.mehta@example.com',  '8765432109',  'Data Analyst',        68000.50, 'Analytics'),
(4,  'Prasad',   'Patel',   'amit.patel@example.com',   '7654321098',  'HR Manager',          72000.00, 'HR'),
(5,  'Devansh',  'Rao',     'sneha.rao@example.com',    '6543210987',  'Marketing Executive', 58000.75, 'Marketing'),
(6,  'Maruti',   'Desai',   'vikram.desai@example.com', '5432109876',  'Accountant',          62000.25, 'Finance'),
(7,  'Tejas',    'Verma',   'anjali.verma@example.com', '4321098765',  'UI/UX Designer',      65000.00, 'Design'),
(8,  'Tejas',    'Singh',   'karan.singh@example.com',  '3210987654',  'Project Manager',     90000.00, 'Operations'),
(9,  'Rohan',    'Joshi',   'deepika.joshi@example.com','2109876543',  'Business Analyst',    70000.00, 'Business'),
(10, 'Rohit',    'Kumar',   'rohit.kumar@example.com',  '1098765432',  'System Administrator',67000.00, 'IT');

-- View inserted rows
SELECT * FROM employee;



/*-----------------------------------------------------------
  5️⃣  MODIFY TABLE STRUCTURE
-----------------------------------------------------------*/
-- Remove the phone_number column (no longer needed)
ALTER TABLE employee DROP COLUMN phone_number;

-- Verify column removal
SELECT * FROM employee;



/*-----------------------------------------------------------
  6️⃣  RENAME TABLE
-----------------------------------------------------------*/
-- Rename `employee` table to `staff`
ALTER TABLE employee RENAME TO staff;

-- Confirm new table name
SELECT * FROM staff;



/*-----------------------------------------------------------
  7️⃣  UPDATE DATA
-----------------------------------------------------------*/
-- Give employee with emp_id = 2 a new salary
UPDATE staff
SET salary = 150000
WHERE emp_id = 2;



/*-----------------------------------------------------------
  8️⃣  DELETE DATA
-----------------------------------------------------------*/
-- Delete record where emp_id = 6
DELETE FROM staff
WHERE emp_id = 6;



/*-----------------------------------------------------------
  9️⃣  DISABLE SAFE MODE (MySQL-specific)
-----------------------------------------------------------*/
-- In some MySQL clients, safe-update mode prevents UPDATE/DELETE
-- without a key. Set to 0 to disable (if needed).
SET SQL_SAFE_UPDATES = 0;



/*-----------------------------------------------------------
 🔟  FINAL RESULT
-----------------------------------------------------------*/
-- Show the final state of the `staff` table
SELECT * FROM staff;
