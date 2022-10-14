use optica;
/* *************** primera ******************** */
SELECT *  
FROM ulleres AS U
JOIN clients_ulleres AS CU ON CU.ullera_id = U.id
JOIN clients AS C ON C.id = CU.client_id
WHERE C.id=1 AND U.dia_compra BETWEEN '2021-05-01' AND '2022-05-01'

/* *************** segona ******************** */
SELECT *  
FROM ulleres AS U
JOIN clients_ulleres AS CU ON CU.ullera_id = U.id
JOIN empleat AS E ON E.id = CU.empleat_id
WHERE E.id = 1

/* *************** tercera ******************** */
SELECT * FROM proveidor AS P
JOIN marca_ulleres AS MU ON MU.proveidor_id = P.id
JOIN ulleres AS U ON U.marca_id = MU.id
GROUP BY P.id