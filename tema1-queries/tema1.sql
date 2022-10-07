/* Base de dades "Tienda" */

/* ---- 01 - Llista el nom de tots els productes que hi ha en la taula "producto".*/
USE tienda; SELECT nombre FROM producto;

/* ---- 02 - Llista els noms i els preus de tots els productes de la taula "producto".*/
USE tienda; SELECT nombre, precio FROM producto;

/* ---- 03 - Llista totes les columnes de la taula "producto".*/
USE tienda; SELECT * FROM producto;

/* ---- 04 - Llista el nom dels "productos", el preu en euros i el preu en dòlars nord-americans (USD).*/
USE tienda; SELECT nombre, precio, precio * 0.9986  FROM producto;

/* ---- 05 - Llista el nom dels "productos", el preu en euros i el preu en dòlars nord-americans. Utilitza els següents àlies per a les columnes: nom de "producto", euros, dòlars nord-americans.*/
USE tienda; SELECT nombre AS producto, precio AS euros, (precio * 0.9986)  AS 'dòlars nord-americans' FROM producto;
	   
/* ---- 06 - Llista els noms i els preus de tots els productes de la taula "producto", convertint els noms a majúscula.*/
USE tienda; SELECT UPPER(nombre), precio FROM producto;

/* ---- 07 - Llista els noms i els preus de tots els productes de la taula "producto", convertint els noms a minúscula.*/
USE tienda; SELECT LOWER(nombre), precio FROM producto;

/* ---- 08 - Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant.*/
USE tienda; SELECT nombre, UPPER(LEFT(nombre,2)) AS Abreviatura FROM fabricante;

/* ---- 09 - Llista els noms i els preus de tots els productes de la taula "producto", arrodonint el valor del preu.*/
USE tienda; SELECT nombre, round(precio, 0) 'precio redondeado' FROM producto;

/* ---- 10 - Llista els noms i els preus de tots els productes de la taula "producto", truncant el valor del preu per a mostrar-lo sense cap xifra decimal.*/
USE tienda; SELECT nombre, precio, truncate(precio, 0) 'precio truncado' FROM producto;

/* ---- 11 - Llista el codi dels fabricants que tenen productes en la taula "producto".*/
USE tienda; SELECT F.codigo FROM fabricante AS F JOIN producto AS P ON P.codigo_fabricante = F.codigo;

/* ---- 12 - Llista el codi dels fabricants que tenen productes en la taula "producto", eliminant els codis que apareixen repetits.*/
USE tienda; SELECT distinct F.codigo FROM fabricante AS F JOIN producto AS P ON P.codigo_fabricante = F.codigo;

/* ---- 13 - Llista els noms dels fabricants ordenats de manera ascendent.*/
USE tienda; SELECT nombre FROM fabricante ORDER BY nombre ASC;

/* ---- 14 - Llista els noms dels fabricants ordenats de manera descendent.*/
USE tienda; SELECT nombre FROM fabricante ORDER BY nombre DESC;

/* ---- 15 - Llista els noms dels productes ordenats, en primer lloc, pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent.*/
USE tienda; SELECT nombre FROM producto ORDER BY nombre ASC; 
USE tienda; SELECT nombre FROM producto ORDER BY precio DESC;

/* ---- 16 - Retorna una llista amb les 5 primeres files de la taula "fabricante".*/
USE tienda; SELECT nombre FROM fabricante LIMIT 5;

/* ---- 17 - Retorna una llista amb 2 files a partir de la quarta fila de la taula "fabricante". La quarta fila també s'ha d'incloure en la resposta.*/
USE tienda; SELECT nombre FROM fabricante LIMIT 3,2;

/* ---- 18 - Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podries usar MIN(preu), necessitaries GROUP BY*/
USE tienda; SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;

/* ---- 19 - Llista el nom i el preu del producte més car. (Fes servir solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podries usar MAX(preu), necessitaries GROUP BY.*/
USE tienda; SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

/* ---- 20 - Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2.*/
USE tienda; SELECT nombre FROM fabricante WHERE codigo = 2;

/* ---- 21 - Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades.*/
USE tienda; SELECT P.nombre, P.precio, F.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante;

/* ---- 22 - Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades. Ordena el resultat pel nom del fabricant, per ordre alfabètic.*/
USE tienda; SELECT P.nombre, P.precio, F.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante ORDER BY F.nombre ASC ;

/* ---- 23 - Retorna una llista amb el codi del producte, nom del producte, codi del fabricant i nom del fabricant, de tots els productes de la base de dades.*/
USE tienda; SELECT P.codigo, P.nombre, F.codigo, F.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante;

/* ---- 24 - Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat.*/
USE tienda; SELECT P.nombre, precio, F.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante ORDER BY precio ASC LIMIT 1;

/* ---- 25 - Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car.*/
USE tienda; SELECT P.nombre, precio, F.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante ORDER BY precio DESC LIMIT 1;

/* ---- 26 - Retorna una llista de tots els productes del fabricant Lenovo.*/
USE tienda; SELECT P.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre='Lenovo';

/* ---- 27 - Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu major que 200 €.*/
USE tienda; SELECT P.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre='Crucial' AND P.precio>200;

/* ---- 28 - Retorna una llista amb tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Sense utilitzar l'operador IN.*/
USE tienda; SELECT P.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre='Asus' OR F.nombre='Hewlett-Packard' OR F.nombre='Seagate';

/* ---- 29 - Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Usant l'operador IN.*/
USE tienda; SELECT P.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');

/* ---- 30 - Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi per la vocal e.*/
USE tienda; SELECT P.nombre, precio FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre REGEXP 'e$';

/* ---- 31 - Retorna un llistat amb el nom i el preu de tots els productes dels fabricants dels quals contingui el caràcter w en el seu nom.*/
USE tienda; SELECT P.nombre, precio FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre REGEXP 'w';

/* ---- 32 - Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els productes que tinguin un preu major o igual a 180 €. Ordena el resultat, en primer lloc, pel preu (en ordre descendent) i, en segon lloc, pel nom (en ordre ascendent).*/
USE tienda; SELECT P.nombre, precio, F.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE precio >= 180 ORDER BY precio DESC;
USE tienda; SELECT P.nombre, precio, F.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE precio >= 180 ORDER BY P.nombre ASC;

/* ---- 33 - Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que tenen productes associats en la base de dades.*/
USE tienda; SELECT distinct F.codigo, F.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante;

/* ---- 34 - Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.*/
USE tienda; SELECT * FROM fabricante AS F LEFT JOIN producto AS P ON F.codigo = P.codigo_fabricante;

/* ---- 35 - Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.*/
USE tienda; SELECT F.nombre FROM fabricante AS F LEFT JOIN producto AS P ON F.codigo = P.codigo_fabricante WHERE P.codigo IS NULL;

/* ---- 36 - Retorna tots els productes del fabricant Lenovo. (Sense utilitzar INNER JOIN).*/
USE tienda; SELECT * FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo');
	
/* ---- 37 - Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense fer servir INNER JOIN).*/
USE tienda; SELECT * FROM producto WHERE precio = (SELECT precio FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre = 'Lenovo' ORDER BY precio DESC LIMIT 1);
	
/* ---- 38 - Llista el nom del producte més car del fabricant Lenovo.*/
USE tienda; SELECT P.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre = 'Lenovo' ORDER BY precio DESC LIMIT 1;

/* ---- 39 - Llista el nom del producte més barat del fabricant Hewlett-Packard.*/
USE tienda; SELECT P.nombre FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre = 'Hewlett-Packard' ORDER BY precio ASC LIMIT 1;
	
/* ---- 40 - Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.*/
USE tienda; SELECT * FROM producto WHERE precio >= (SELECT precio FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre = 'Lenovo' ORDER BY precio DESC LIMIT 1);
	
/* ---- 41 - Llesta tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.*/
USE tienda; SELECT * FROM producto WHERE precio > (SELECT AVG(precio) FROM producto AS P JOIN fabricante AS F ON F.codigo = P.codigo_fabricante WHERE F.nombre = 'Asus') AND codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Asus');
	
	
/* Base de dades "Universidad" */


/* ---- 01 - Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.*/
USE universidad; SELECT apellido1, apellido2, nombre FROM persona WHERE tipo='alumno' ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;
	
/* ---- 02 - Esbrina el nom i els dos cognoms dels/les alumnes que no han donat d'alta el seu número de telèfon en la base de dades.*/
USE universidad; SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo='alumno' AND telefono IS NULL;
	
/* ---- 03 - Retorna el llistat dels/les alumnes que van néixer en 1999.*/
USE universidad; SELECT * FROM persona WHERE tipo='alumno' AND YEAR(fecha_nacimiento) = 1999;

/* ---- 04 - Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K.*/
USE universidad; SELECT * FROM persona WHERE tipo='profesor' AND telefono IS NULL AND nif REGEXP 'K$';

/* ---- 05 - Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.*/
USE universidad; SELECT * FROM asignatura WHERE cuatrimestre=1 AND curso=3 AND id_grado=7;

/* ---- 06 - Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats/des. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.*/
USE universidad; SELECT P.apellido1, P.apellido2, P.nombre, D.nombre FROM persona AS P JOIN profesor AS Pr ON Pr.id_profesor = P.id JOIN departamento AS D ON D.id = Pr.id_departamento WHERE P.tipo = 'profesor' ORDER BY P.apellido1 ASC, P.apellido2 ASC, P.nombre ASC;

/* ---- 07 - Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M.*/
USE universidad; SELECT A.nombre, CE.anyo_inicio, CE.anyo_fin FROM asignatura AS A JOIN alumno_se_matricula_asignatura AS AMA ON AMA.id_asignatura = A.id JOIN curso_escolar AS CE ON CE.id = AMA.id_curso_escolar JOIN persona AS P ON P.id = AMA.id_alumno WHERE P.nif='26902806M';

/* ---- 08 - Retorna un llistat amb el nom de tots els departaments que tenen professors/es que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).*/
USE universidad; SELECT distinct D.nombre AS departamento FROM departamento AS D JOIN profesor AS Pr ON Pr.id_departamento = D.id JOIN persona AS P ON P.id = Pr.id_profesor JOIN asignatura AS A ON A.id_profesor = P.id WHERE id_grado = (SELECT id FROM grado WHERE nombre='Grado en Ingeniería Informática (Plan 2015)');

/* ---- 09 - Retorna un llistat amb tots els/les alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.*/
USE universidad; SELECT * FROM persona AS P JOIN alumno_se_matricula_asignatura As AMA ON AMA.id_alumno = P.id JOIN curso_escolar AS CE ON CE.id = AMA.id_curso_escolar WHERE CE.anyo_inicio = 2018 AND CE.anyo_fin = 2019 GROUP BY nif;


/*Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.*/


/* ---- 01 - Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats/des. El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.*/
USE universidad; SELECT P.apellido1, P.apellido2, P.nombre, D.nombre AS departamento FROM persona AS P LEFT JOIN profesor AS Pr ON Pr.id_profesor = P.id LEFT JOIN departamento AS D ON D.id = Pr.id_departamento ORDER BY departamento ASC, P.apellido1 ASC, P.apellido2 ASC, P.nombre ASC;

/* ---- 02 - Retorna un llistat amb els professors/es que no estan associats a un departament.*/
USE universidad; SELECT D.nombre AS departamento, P.apellido1, P.apellido2, P.nombre FROM persona AS P LEFT JOIN profesor AS Pr ON Pr.id_profesor = P.id LEFT JOIN departamento AS D ON D.id = Pr.id_departamento WHERE D.nombre IS NULL ORDER BY departamento ASC, P.apellido1 ASC, P.apellido2 ASC, P.nombre ASC;

/* ---- 03 - Retorna un llistat amb els departaments que no tenen professors/es associats.*/
USE universidad; SELECT D.nombre  FROM departamento AS D LEFT JOIN profesor AS Pr ON Pr.id_departamento = D.id LEFT JOIN persona AS P ON P.id = Pr.id_profesor WHERE Pr.id_departamento IS NULL;

/* ---- 04 - Retorna un llistat amb els professors/es que no imparteixen cap assignatura.*/
USE universidad; SELECT distinct P.nombre FROM persona AS P LEFT JOIN asignatura AS A ON A.id_profesor = P.id WHERE A.id IS NULL AND P.tipo='profesor';

/* ---- 05 - Retorna un llistat amb les assignatures que no tenen un professor/a assignat.*/
USE universidad; SELECT nombre FROM asignatura WHERE id_profesor IS NULL;

/* ---- 06 - Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.*/
/*Me he encallado en esta y me va a explotar la cabeza.
La dejo para mas adelante.*/


/* Consultes resum: */


/* ---- 01 - Retorna el nombre total d'alumnes que hi ha.*/
USE universidad; SELECT count(*) AS total_alumnes FROM persona WHERE tipo='alumno';

/* ---- 02 - Calcula quants/es alumnes van néixer en 1999.*/
USE universidad; SELECT count(*) AS total_alumnes FROM persona WHERE tipo='alumno' AND YEAR(fecha_nacimiento) = 1999;

/* ---- 03 - Calcula quants/es professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es.*/
USE universidad; SELECT D.nombre AS departamento, count(D.id) AS total_profesores FROM departamento AS D JOIN profesor AS Pr ON Pr.id_departamento = D.id GROUP BY D.id ORDER BY total_profesores;

/* ---- 04 - Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Té en compte que poden existir departaments que no tenen professors/es associats/des. Aquests departaments també han d'aparèixer en el llistat.*/
USE universidad; SELECT D.nombre AS departamento, count(Pr.id_departamento) AS total_profesores FROM departamento AS D LEFT JOIN profesor AS Pr ON Pr.id_departamento = D.id GROUP BY D.id;

/* ---- 05 - Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Té en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures.*/
USE universidad; SELECT G.nombre AS grado, count(A.id) as total_asignaturas FROM grado AS G LEFT JOIN asignatura AS A ON A.id_grado = G.id GROUP BY G.id ORDER BY total_asignaturas DESC;

/* ---- 06 - Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.*/
USE universidad; SELECT G.nombre AS grado, count(A.id) as total_asignaturas FROM grado AS G LEFT JOIN asignatura AS A ON A.id_grado = G.id GROUP BY G.id HAVING total_asignaturas > 40 ORDER BY total_asignaturas DESC;

/* ---- 07 - Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus.*/
USE universidad; SELECT G.nombre AS grado, A.tipo, SUM(A.creditos) as total_creditos FROM grado AS G LEFT JOIN asignatura AS A ON A.id_grado = G.id GROUP BY A.tipo;

/* ---- 08 - Retorna un llistat que mostri quants/es alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats/des.*/
USE universidad; SELECT CE.anyo_inicio, COUNT(distinct P.id) AS total_alumnes FROM persona AS P JOIN alumno_se_matricula_asignatura AS AMA ON AMA.id_alumno = P.id JOIN curso_escolar AS CE ON CE.id = AMA.id_curso_escolar GROUP BY CE.anyo_inicio;

/* ---- 09 - Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.*/
USE universidad; SELECT P.id, P.nombre, P.apellido1, P.apellido2, COUNT(A.id) AS total_asignatures FROM persona AS P LEFT JOIN asignatura AS A ON A.id_profesor = P.id WHERE P.tipo = 'profesor' GROUP BY P.id ORDER BY total_asignatures DESC;

/* ---- 10 - Retorna totes les dades de l'alumne més jove.*/
USE universidad; SELECT @id := id FROM persona WHERE tipo = 'alumno' ORDER BY fecha_nacimiento DESC LIMIT 1; SELECT distinct P.*, (SELECT group_concat(A.nombre separator ',') FROM asignatura AS A JOIN alumno_se_matricula_asignatura AS AMA ON AMA.id_asignatura = A.id WHERE AMA.id_alumno = @id) AS asignaturas, CE.anyo_inicio, CE.anyo_fin FROM curso_escolar AS CE LEFT JOIN alumno_se_matricula_asignatura AS AMA ON AMA.id_curso_escolar = CE.id LEFT JOIN persona AS P ON AMA.id_alumno = P.id WHERE P.id = @id;

/* ---- 11 - Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura.*/
USE universidad; SELECT P.nombre, P.apellido1, P.apellido2 FROM persona AS P LEFT JOIN profesor AS Pr ON Pr.id_profesor = P.id LEFT JOIN asignatura AS A ON A.id_profesor = P.id WHERE P.tipo = 'profesor' AND A.id IS NULL