#1. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos 
#los productos de la base de datos.
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto 
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id;

#2. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos 
#los productos de la base de datos. Ordene el resultado por el nombre del fabricante.
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto 
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id 
ORDER BY fabricante.nombre;

#3. Devuelve una lista con el identificador del producto, nombre del producto, identificador del fabricante 
#y nombre del fabricante, de todos los productos de la base de datos.
SELECT producto.id, producto.nombre, fabricante.id, fabricante.nombre FROM producto 
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id;

#4. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto 
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id 
ORDER BY producto.precio ASC LIMIT 1;

#5. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto 
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id 
ORDER BY producto.precio DESC LIMIT 1;

#6. Devuelve una lista de todos los productos del fabricante Lenovo.
SELECT * FROM producto 
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id 
WHERE fabricante.nombre = "Lenovo";

#7. Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
SELECT * FROM producto 
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id 
WHERE fabricante.nombre = "Crucial" AND producto.precio > 200;

#8. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. 
#Sin utilizar el operador IN.
SELECT * FROM producto 
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id 
WHERE fabricante.nombre = "Asus" OR fabricante.nombre = "Hewlett-Packard" OR fabricante.nombre = "Seagate";

#9. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. 
#Utilizando el operador IN.
SELECT * FROM producto 
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id 
WHERE fabricante.nombre IN ("Asus", "Hewlett-Packard", "Seagate");

#10. Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre 
#termine por la vocal e.
SELECT * FROM producto 
INNER JOIN fabricante ON producto.id_fabricante = fabricante.id 
WHERE fabricante.nombre LIKE "%e";
