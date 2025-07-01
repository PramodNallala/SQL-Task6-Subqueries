# Now generating the SQL file for download manually since the user requested it again

sample_schema = """
-- Sample Schema for Employees and Departments

-- Drop tables if they already exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Create departments table
CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL,
    location TEXT
);

-- Create employees table
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department_id INTEGER,
    salary INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert sample data into departments
INSERT INTO departments (department_id, department_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'Engineering', 'San Francisco'),
(3, 'Sales', 'New York'),
(4, 'Marketing', 'Chicago');

-- Insert sample data into employees
INSERT INTO employees (employee_id, name, department_id, salary) VALUES
(1, 'Alice', 1, 50000),
(2, 'Bob', 2, 80000),
(3, 'Charlie', 2, 75000),
(4, 'David', 3, 60000),
(5, 'Eve', 4, 55000),
(6, 'Frank', 3, 58000),
(7, 'Grace', 2, 90000),
(8, 'Hannah', 1, 52000),
(9, 'Ian', 4, 56000),
(10, 'Jane', 2, 70000);
"""

# Save the content to a .sql file
schema_file_path = "/mnt/data/Sample_Employee_Department_Schema.sql"
with open(schema_file_path, "w") as file:
    file.write(sample_schema)

schema_file_path