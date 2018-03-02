# Tous les event avec uniquement les titre des event et le prix et la ville

# Première manière de faire
SELECT 
eve_title AS Title,
eve_price AS Price,
pla_city AS City
FROM
eve_event eve,
pla_place pla
WHERE
eve.pla_oid = pla.pla_oid;


# Deuxieme manière de faire
SELECT 
eve_title AS Title,
eve_price AS Price,
pla_city AS City
FROM
eve_event eve INNER JOIN pla_place pla ON eve.pla_oid = pla.pla_oid;


