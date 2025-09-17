#11. Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga 
#el carácter w en su nombre.
SELECT * FROM producto
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id
WHERE fabricante.nombre LIKE "%w%";

#12. Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que 
#tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente)
#y en segundo lugar por el nombre (en orden ascendente)
SELECT * FROM producto
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id
WHERE producto.precio >= 180 ORDER BY producto.precio DESC, producto.nombre ASC;

#13. Devuelve un listado con el identificador y el nombre de fabricante, solamente de aquellos fabricantes 
#que tienen productos asociados en la base de datos.
SELECT DISTINCT fabricante.id, fabricante.nombre FROM producto
LEFT JOIN fabricante ON producto.id_fabricante = fabricante.id;

