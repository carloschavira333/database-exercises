USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

SELECT CONCAT(first_name,' ',last_name, ': hire date of ', hire_date, ' same as emp id of: 101010')
FROM employees
    WHERE hire_date = (
        SELECT hire_date
        FROM employees
        WHERE emp_no = '101010'
);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name IN ('Aamod') GROUP BY emp_no
);

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name IN ('Aamod') GROUP BY emp_no
);

# Find all the current department managers that are female.

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
      AND gender = 'F'
);