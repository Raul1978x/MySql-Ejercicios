/*
Teoria
Ligaduras 
Tipo: Integridad de Entidad o Tabla

Especifica que, en una tabla o entidad, todas sus filas tengan un unico identificador que diferencie a una fila de otra y tambien que
se establescan columnas cuyo contenido es un valor unico que las hace llaves candidatas para un futuro como
por ejemplo : numero de cedula, numero de seguro social o cuenta de mail.alter

* Primary Key: Este tipo de restriccion se aplica a todas las filas permitiendo que exista un identificador, que se conoce como llave primaria
				y que se asegura que los usuarios no instroduzcan valores duplicados. Ademas, se asegura que se cree un indice para mejorar 
                el desempeño. Los valores nulos no estan permitidos para este tipo de restriccion.
                */
                CREATE DATABASE TIENDA CHARACTER SET utf8mb4;
                USE TIENDA;
                
                CREATE TABLE FABRICANTE (
                CODIGO INT UNSIGNED PRIMARY KEY,
                NOMBRE VARCHAR(100) NOT NULL
                );
                INSERT INTO FABRICANTE VALUES(1, 'Asus');
                INSERT INTO fabricante VALUES(2, "Lenovo");
				INSERT INTO fabricante VALUES(3, "Hewlett-Packard");
				INSERT INTO fabricante VALUES(4, "Samsung");
				INSERT INTO fabricante VALUES(5, "Seagate");
				INSERT INTO fabricante VALUES(6, "Crucial");
				INSERT INTO fabricante VALUES(7, "Gigabyte");
				INSERT INTO fabricante VALUES(8, "Huawei");
				INSERT INTO fabricante VALUES(9, "Xiaomi");

select * from fabricante;

insert into fabricante values (1, 'prueba');