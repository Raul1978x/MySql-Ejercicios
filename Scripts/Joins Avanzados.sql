/*
seleccionar los registros de dos tablas por separado.
*/
select * from fabricante;
select * from producto;

/*
Inner Joins: Da como resultado los valores de interseccion entre dos tablas implicadas en la consulta.
*/

select *
from producto p
Inner Join fabricante f
on p.codigo_fabricante = f.CODIGO;

/*
Left Outer Joins: Da como resultado los valores de la tabla indicada en el from junto con los
valores de interseccion entra las dos tablas implicadas en la consulta.
*/

select *
from producto p
left outer join fabricante f
on p.codigo_fabricante = f.CODIGO;

/*
Right Outer Joins: Da como resultado los valores de la tabla indicada en Right Outer Joins
junto con los valores interseccion entre las dos tablas implicadas.
*/

select *
from producto p
Right Outer Join fabricante f
on p.codigo_fabricante = f.CODIGO;

/*
Semi Join (Exists): Da como resultado los valores interseccion entre la tabla producto y la tabla fabricante.
*/

select *
from producto p
where exists (select f.codigo
from fabricante f
where f.codigo = p.codigo_fabricante
);

/*
Anti Semi Join (Not Exists): Da como resultado los valores de la tabla producto que no se encuentran en la  tabla fabricante.
*/

select *
from producto p
where not exists (select f.codigo
from fabricante f
where f.codigo = p.codigo_fabricante
);
select * 
from fabricante f
where not exists ( select p.codigo_fabricante
from producto p
where p.codigo_fabricante = f.codigo
);

/*
Cross Join: Da como resultado los valores que se encuentran en ambas tablas. Multiplicando cada producto por cada fabricante.
*/

select *
from producto p
cross join fabricante f
