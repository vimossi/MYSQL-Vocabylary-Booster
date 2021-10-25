SELECT
trabalho.JOB_TITLE AS Cargo,
ROUND(AVG(empregado.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(empregado.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(empregado.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(empregado.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS Senioridade
FROM hr.employees AS empregado
JOIN hr.jobs AS trabalho ON trabalho.JOB_ID = empregado.JOB_ID
GROUP BY empregado.JOB_ID
ORDER BY `Média salarial`, Cargo;
