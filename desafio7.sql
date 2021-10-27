SELECT
UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
job_history.START_DATE AS 'Data de início',
employees.salary AS 'Salário'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job_history ON job_history.employee_id = employees.EMPLOYEE_ID
WHERE MONTH(job_history.start_date) BETWEEN 1 AND 3
ORDER BY `Nome completo`, job_history.START_DATE;
