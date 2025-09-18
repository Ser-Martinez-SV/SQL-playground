#1. Calcula el número total de productos que hay en la tabla productos.
SELECT COUNT(*) FROM producto;

#2. Calcula el número total de fabricantes que hay en la tabla fabricante.
SELECT COUNT(*) FROM fabricante;

#3. Calcula el número de valores distintos de identificador de fabricante aparecen en la tabla productos.
SELECT COUNT(DISTINCT id_fabricante) FROM producto;

#4. Calcula la media del precio de todos los productos.
SELECT AVG(precio) FROM producto;

#5. Calcula el precio más barato de todos los productos.
SELECT MIN(precio) FROM producto;

#6. Calcula el precio más caro de todos los productos.
SELECT MAX(precio) FROM producto;

#7. Lista el nombre y el precio del producto más barato.
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;

#8. Lista el nombre y el precio del producto más caro.
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

#9. Calcula la suma de los precios de todos los productos.
SELECT SUM(precio) FROM producto;

#10. Calcula el número de productos que tiene el fabricante Asus.
SELECT COUNT(id_fabricante) FROM producto INNER JOIN fabricante ON producto.id_fabricante = fabricante.id
WHERE fabricante.nombre = "Asus";
