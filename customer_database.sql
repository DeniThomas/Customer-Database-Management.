-- Step 1: Drop the table if it already exists
DROP TABLE IF EXISTS customers;

-- Step 2: Create the customers table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    location VARCHAR(100),
    signup_date DATE
);

-- Step 3: Insert customer data
INSERT INTO customers (name, email, location, signup_date) 
VALUES 
    ('John Doe', 'johndoe@example.com', 'New York', '2023-02-10'),
    ('Alice Smith', 'alice@example.com', 'Los Angeles', '2023-03-15');

-- Step 4: Update customer location
UPDATE customers 
SET location = 'San Francisco' 
WHERE email = 'johndoe@example.com';

-- Step 5: Select all customers
SELECT * FROM customers;

-- Step 6: Delete a customer
DELETE FROM customers WHERE email = 'michael@example.com';

-- Step 7: Count total customers
SELECT COUNT(*) AS total_customers FROM customers;
