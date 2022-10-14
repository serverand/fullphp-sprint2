SELECT P.nom AS beguda, CL.localitat FROM productes AS P
JOIN comandes_productes AS CP ON CP.producte_id = P.id
JOIN comandes AS C ON C.id = CP.comanda_id
JOIN client AS CL ON CL.id = C.client_id
WHERE P.tipus = 'beguda' AND CL.localitat = 'Tarragona'
GROUP BY CL.id

SELECT E.*, COUNT(*) AS total_comandes FROM comandes AS C
JOIN empleat AS E ON E.id = C.repartidor
WHERE E.id = 3