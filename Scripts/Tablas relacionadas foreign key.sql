/*
Teoria

Ligaduras

Tipo: Integridad Referencial

La Integridad Referencial asegura que las relaciones que existe entre llave primaria (en la tabla
referenciada) y la llave foránea (en las tablas referenciantes) serán siempre mantenidas. Una
fila o registro en la tabla referenciada (tabla donde reside la llave primaria) no puede ser
borrada o su llave primaria cambiada si existe una fila o registro con una llave foránea (en la
tabla referenciante) que se refiere a esa llave primaria.

• FOREIGN KEY: En esta restricción se define una llave foránea, una columna o combinación
de columnas en las cuales su valor debe corresponder al valor de la llave primaria en la
misma u en otra tabla.

*/
CREATE TABLE `tienda`.`producto` (
  `codigo` INT UNSIGNED NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `codigo_fabricante` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `codigo_fabricante_idx` (`codigo_fabricante` ASC) VISIBLE,
  CONSTRAINT `codigo_fabricante`
    FOREIGN KEY (`codigo_fabricante`)
    REFERENCES `tienda`.`fabricante` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO PRODUCTO VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO PRODUCTO VALUES(2, 'Memoria RAM DDR$ 8GB', 120, 6);
INSERT INTO PRODUCTO VALUES(3, 'Disco SSD 1TB', 150.99, 4);
INSERT INTO PRODUCTO VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO PRODUCTO VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO PRODUCTO VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO PRODUCTO VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1); 
INSERT INTO PRODUCTO VALUES(8, 'Portatil Yoga 520', 559, 2);
INSERT INTO PRODUCTO VALUES(9, 'Portatil Ideapd 320', 444, 2);
INSERT INTO PRODUCTO VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 2);
INSERT INTO PRODUCTO VALUES(11, 'Impresora HP Laserjet Pro M26nw', 100, 3);

select * from producto;

select * from fabricante;
