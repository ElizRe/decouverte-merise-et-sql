# Combien y a t-il d évennements par ville?
SELECT 
pla.pla_city AS City,
count(*) AS NbEvent
FROM
eve_event eve,
pla_place pla
WHERE
eve.pla_oid = pla.pla_oid
GROUP BY
pla.pla_city;
