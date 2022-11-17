select * from fabricante;

select * from producto;

/*
ORDER BY
*/

select * 
from fabricante
order by nombre;

select *
from fabricante
order by nombre asc;

select *
from fabricante
order by nombre desc;

select *
from fabricante
order by nombre, codigo;

select f.nombre, p.nombre, p.precio
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
order by f.nombre, p.nombre;

select f.nombre, p.nombre, p.precio
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
order by p.nombre, f.nombre;

/*
GROUP BY
*/

select f.nombre
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nombre;

select f.nacionalidad, f.nombre
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nacionalidad, f.nombre;

select f.nombre, count(*)
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nombre;

select f.nacionalidad, count(*)
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nacionalidad;

/*
HAVING
*/

select f.nombre, count(*)
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nombre
having count(*) >1;

select f.nombre, count(*)
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nombre
having count(*) > 1 and f.nombre <> 'lenovo';

select f.nombre, count(*), sum(p.precio)
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nombre
having sum(p.precio) >300;
