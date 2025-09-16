#11. Lista el código de los fabricantes que tienen productos en la tabla producto.
SELECT id_fabricante FROM producto;

#12. Lista el código de los fabricantes que tienen productos en la tabla producto.
SELECT DISTINCT(id_fabricante) FROM producto;

#13. Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT nombre FROM fabricante ORDER BY nombre ASC;

#14. Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT nombre FROM fabricante ORDER BY nombre DESC;

#15. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;
