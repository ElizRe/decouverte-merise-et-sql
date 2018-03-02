# Requete qui retourne juste la ville (et son lien google map) qui a le plus d évennements?
SELECT * from 
(
	SELECT 
	pla.pla_city AS City,
	pla.pla_google_map AS Link,
	count(*) AS NbEvent
	FROM
	eve_event eve,
	pla_place pla
	WHERE
	eve.pla_oid = pla.pla_oid
	GROUP BY
	pla.pla_city,
	pla.pla_google_map
	ORDER BY
	count(*) DESC
) req
LIMIT 1;
