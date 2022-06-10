USE employees;

SELECT DISTINCT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM departments d

         JOIN dept_manager dm ON dm.dept_no = d.dept_no
        JOIN employees e ON dm.emp_no = e.emp_no
        JOIN titles t ON dm.emp_no = t.emp_no

WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;
# WHERE t.title IN('Manager');


SELECT DISTINCT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM departments d

     JOIN dept_manager dm ON dm.dept_no = d.dept_no
     JOIN employees e ON dm.emp_no = e.emp_no
     JOIN titles t ON dm.emp_no = t.emp_no

WHERE dm.to_date = '9999-01-01' AND e.gender = 'F' ORDER BY dept_name;

SELECT t.title AS Title, COUNT(*) AS Total
FROM titles t

    JOIN dept_emp de on t.emp_no = de.emp_no
    JOIN departments d on de.dept_no = d.dept_no

WHERE t.to_date = '9999-01-01'

    AND dept_name = 'Customer Service'
    AND de.to_date = '9999-01-01'

    GROUP BY title;

SELECT d.dept_name AS Department_Name,
CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager,
s.salary AS Salary

FROM departments d

     JOIN dept_manager dm ON dm.dept_no = d.dept_no
     JOIN employees e ON dm.emp_no = e.emp_no
    JOIN salaries s on e.emp_no = s.emp_no

WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01' ORDER BY dept_name;
