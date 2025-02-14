# Customer Database Management

## Overview
This project is a simple SQL-based **Customer Database Management System** that allows users to create, update, retrieve, and delete customer records using SQL queries.

## Features
- Create a `customers` table to store customer details.
- Insert customer data into the database.
- Update customer information.
- Retrieve all customer records.
- Delete specific customer records.
- Count the total number of customers.

## Technologies Used
- **SQL** (Structured Query Language)
- **MySQL / MariaDB / SQLite** (Any SQL-compatible database)

## Database Schema
The `customers` table includes the following fields:
- `id` (INT, PRIMARY KEY, AUTO_INCREMENT)
- `name` (VARCHAR(100), NOT NULL)
- `email` (VARCHAR(100), UNIQUE, NOT NULL)
- `location` (VARCHAR(100), NULLABLE)
- `signup_date` (DATE, NULLABLE)

## Installation & Setup
1. Install a database system such as MySQL or SQLite.
2. Create a database (e.g., `customer_db`).
3. Run the `customer_database.sql` script to set up the table and insert sample data.

## Usage
1. **Run the SQL script** in your database environment:
   ```sql
   source customer_database.sql;
   ```
2. Perform CRUD (Create, Read, Update, Delete) operations using SQL queries.

## SQL Script Breakdown
```sql
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
```

## Contributing
If you would like to contribute to this project, feel free to fork the repository and submit pull requests.

## License
This project is open-source and available under the [MIT License](LICENSE).

