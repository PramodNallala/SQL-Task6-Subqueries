# SQL-Task6-Subqueries
Task 6 of SQL Developer Internship – Demonstration of subqueries, scalar and correlated queries, and nested SQL techniques using sample employee and department data.
# 📘 Task 6: Subqueries and Nested Queries

## 🎯 Objective
This task demonstrates the usage of subqueries and nested queries in SQL. You'll learn how to embed subqueries in various clauses like SELECT, FROM, and WHERE, as well as use operators like IN, EXISTS, and = with subqueries.

---

## 📂 Files Included

| File Name                             | Description                                      |
|--------------------------------------|--------------------------------------------------|
| `Task6_Subqueries.sql`               | Contains all SQL queries using subqueries        |
| `Sample_Employee_Department_Schema.sql` | Sample schema and data to run and test queries |

---

## 🧪 What You'll Learn

- Subqueries in `SELECT`, `FROM`, and `WHERE` clauses  
- Scalar and correlated subqueries  
- Use of `IN`, `EXISTS`, and `=` with subqueries  
- Writing optimized and readable SQL queries

---

## 🛠️ How to Use

1. Open your SQL environment (e.g., MySQL Workbench, DB Browser for SQLite, or SQLiteOnline).
2. Run `Sample_Employee_Department_Schema.sql` to create and populate sample tables.
3. Execute the queries in `Task6_Subqueries.sql` to see subqueries in action.

---

## 📊 Database Schema

### Table: `employees`

| Column        | Type     |
|---------------|----------|
| employee_id   | INTEGER  |
| name          | TEXT     |
| department_id | INTEGER  |
| salary        | INTEGER  |

### Table: `departments`

| Column         | Type     |
|----------------|----------|
| department_id  | INTEGER  |
| department_name| TEXT     |
| location       | TEXT     |

---

## 💡 Example Query

```sql
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = employees.department_id
);
