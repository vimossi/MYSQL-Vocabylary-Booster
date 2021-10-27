SELECT 
P.productName AS `Produto`,
MIN(O.quantity) AS `Mínima`,
MAX(O.quantity) AS `Máxima`,
ROUND(AVG(O.quantity), 2) AS `Média`
FROM w3schools.products AS P
JOIN w3schools.order_details AS O
ON P.productId = O.productId
GROUP BY O.productId
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
