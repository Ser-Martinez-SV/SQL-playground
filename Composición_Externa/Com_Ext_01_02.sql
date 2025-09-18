#1. Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. 
#El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.
SELECT * FROM fabricante LEFT JOIN producto ON fabricante.id = producto.id_fabricante;

#2. Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.
SELECT * FROM fabricante LEFT JOIN producto ON fabricante.id = producto.id_fabricante 
WHERE producto.id_fabricante IS NULL;
