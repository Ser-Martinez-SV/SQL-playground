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

#16. Devuelve una lista con las 5 primeras filas de la tabla fabricante.
SELECT * FROM fabricante LIMIT 5;

#17. Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.
SELECT id, nombre FROM fabricante WHERE id > 3 AND id < 6;

#18. Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;

#19. Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

#20. Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.
SELECT nombre FROM producto WHERE id_fabricante = 2;
