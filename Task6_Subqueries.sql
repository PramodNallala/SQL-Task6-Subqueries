
-- Task 6: Subqueries and Nested Queries

-- 1. Subquery in SELECT Clause (Scalar Subquery)
SELECT 
    name,
    (SELECT MAX(salary) FROM employees) AS highest_salary
FROM employees;

-- 2. Subquery in WHERE Clause using IN
SELECT name 
FROM employees
WHERE department_id IN (
    SELECT department_id FROM departments WHERE location = 'New York'
);

-- 3. Subquery in WHERE Clause using EXISTS
SELECT name 
FROM employees e
WHERE EXISTS (
    SELECT 1 FROM departments d WHERE d.department_id = e.department_id AND d.location = 'New York'
);

-- 4. Subquery in WHERE Clause using =
SELECT name
FROM employees
WHERE salary = (
    SELECT MAX(salary) FROM employees
);

-- 5. Subquery in FROM Clause (Derived Table)
SELECT department_id, AVG(salary) AS avg_salary
FROM (
    SELECT department_id, salary FROM employees
) AS dept_salaries
GROUP BY department_id;

-- 6. Correlated Subquery
SELECT name, salary 
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- 7. Challenge Query: Employees earning more than average salary
SELECT name 
FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);

-- 8. Challenge Query: Departments with more than 5 employees
SELECT department_id
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

-- 9. Challenge Query: Second highest salary
SELECT MAX(salary) 
FROM employees
WHERE salary < (
    SELECT MAX(salary) FROM employees
);
