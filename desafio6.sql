SELECT 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS 'Cargo',
S.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history S
JOIN hr.employees E ON S.EMPLOYEE_ID = E.EMPLOYEE_ID
JOIN hr.jobs J ON J.JOB_ID = S.JOB_ID
JOIN hr.departments D ON D.DEPARTMENT_ID = S.DEPARTMENT_ID
ORDER BY 'Nome completo' DESC, 'Cargo';
