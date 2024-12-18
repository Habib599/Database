Answer 1

SELECT first_name, 
    (SELECT job_title 
     FROM jobs 
     WHERE jobs.job_id = employees.job_id) AS job_title
FROM 
    employees;

Answer 2

select first_name, job_title
from employees
	join jobs
    using (job_id)


Answer 3

SELECT first_name, job_title, salary 
FROM employees 
JOIN jobs USING (job_id) 
ORDER BY salary DESC 

Answer 4

SELECT 
    e.first_name AS employee_name, 
    m.first_name AS manager_name
FROM employees e
LEFT JOIN employees m 
ON 
    e.manager_id = m.employee_id;
