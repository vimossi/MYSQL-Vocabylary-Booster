SELECT job.JOB_TITLE AS 'Cargo',
ROUND(AVG(employee.SALARY), 2) AS 'Média salarial',
CASE 
WHEN ROUND(AVG(employee.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(employee.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(employee.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees AS employee
JOIN hr.jobs AS job ON job.JOB_ID = employee.JOB_ID
GROUP BY employee.JOB_ID
ORDER BY 'Média salarial', Cargo;
