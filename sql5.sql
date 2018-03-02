# Quel est l évennement qui coute le plus cher?
# On va utiliser une requete imbriquée
SELECT
eve_title AS Titre,
eve_price AS Price
FROM
eve_event 
WHERE
eve_price = ( SELECT MAX(eve_price) FROM eve_event );
    
