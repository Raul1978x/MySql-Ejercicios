select * from fabricante;

SELECT * FROM fabricante where codigo = 3;

SELECT NOMBRE FROM fabricante where codigo = 5;

SELECT CODIGO, NOMBRE FROM fabricante where codigo = 5;

SELECT CODIGO, NOMBRE, NACIONALIDAD FROM fabricante where codigo = 5;

SELECT * FROM fabricante where codigo = 7;

SELECT * FROM FABRICANTE WHERE CODIGO < 7;

SELECT * FROM fabricante where codigo > 7; 

SELECT * FROM fabricante where nombre = 'lenovo';

select * from fabricante where nacionalidad = 'china';

SELECT * FROM fabricante where NACIONALIDAD = 'CHINA' AND nombre = 'ASUS';

SELECT * FROM fabricante where NACIONALIDAD = 'JAPON' OR NACIONALIDAD = 'COREA DEL SUR';

SELECT COUNT(*) FROM fabricante;

SELECT count(*) from fabricante where nacionalidad = 'Japon';

select max(codigo) from fabricante;

SELECT min(CODIGO)from fabricante;

SELECT * FROM fabricante where codigo IN(3,5);

SELECT * FROM fabricante where nombre LIKE '%su%';

select * from fabricante where nombre like 'sus%';

SELECT * FROM fabricante where nombre LIKE '%SUS';

SELECT * FROM fabricante where codigo BETWEEN 2 AND 7;