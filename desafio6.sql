SELECT 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS 'Cargo',
S.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS S
INNER JOIN hr.employees AS E ON S.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs AS J ON J.JOB_ID = S.JOB_ID
INNER JOIN hr.departments AS D ON D.DEPARTMENT_ID = S.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
