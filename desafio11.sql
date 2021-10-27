SELECT 
CO.contactName AS `Nome`,
CO.country AS `País`,
COUNT(CO.country) AS `Número de compatriotas`
FROM w3schools.customers AS CO
JOIN w3schools.customers AS countries
ON CO.country = countries.country
AND CO.customerID <> countries.customerId
GROUP BY `Nome`, countries.country
ORDER BY `Nome`;
