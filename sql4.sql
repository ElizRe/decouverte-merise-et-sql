# Combien cela va me couter si je participe à tous les évennements
SELECT 
SUM(eve_price) AS "Prix Total"
FROM
eve_event;
