USE employee;

SELECT
    SUM(e.salary) AS Total_Finance_Salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';
USE employee;

SELECT MIN(age) AS Minimum_Age
FROM employees;
USE employee;

SELECT
    l.location,
    MAX(e.salary) AS Maximum_Salary
FROM employees e
INNER JOIN location l
ON e.location_id = l.location_id
GROUP BY l.location_id, l.location;
USE employee;

SELECT
    designation,
    AVG(salary) AS Average_Salary
FROM employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;
USE employee;

SELECT
    d.department_name,
    COUNT(e.employee_id) AS Employee_Count
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(e.employee_id) < 3;
USE employee;

SELECT
    l.location,
    AVG(e.age) AS Average_Age
FROM employees e
INNER JOIN location l
ON e.location_id = l.location_id
WHERE e.gender = 'F'
GROUP BY l.location_id, l.location
HAVING AVG(e.age) < 30;
USE employee;

SELECT
    e.employee_name,
    e.designation,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
USE employee;

SELECT
    d.department_name,
    COUNT(e.employee_id) AS Total_Employees
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
USE employee;

SELECT
    l.location,
    e.employee_name
FROM employees e
RIGHT JOIN location l
ON e.location_id = l.location_id;