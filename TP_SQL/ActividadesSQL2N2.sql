SELECT * FROM productos;
SELECT * FROM productos WHERE (precio > 200.00 and categoria = 'Electrónica') OR (precio < 50.00 AND categoria = 'Hogar');

SELECT categoria ,AVG(precio) AS precio_promedio
FROM productos
GROUP BY categoria
HAVING AVG(precio) > 100.00;

SELECT * FROM productos ORDER BY precio DESC, nombre ASC;

SET SQL_SAFE_UPDATES = 0;

UPDATE productos
SET precio = precio * 1.10
WHERE categoria = 'Electrónica' AND fecha_lanzamiento < '2020-01-01';

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM productos;

SELECT nombre, precio
FROM productos
WHERE precio > (SELECT AVG(precio) FROM productos);

SELECT nombre, precio,
	RANK() OVER (ORDER BY precio DESC) AS ranking 
FROM productos;

DROP VIEW IF EXISTS productos_electronica;
CREATE VIEW productos_electronica AS
SELECT nombre, precio 
FROM productos
WHERE categoria = 'Electrónica';
SELECT * FROM productos_electronica;

SELECT nombre, precio
FROM productos
WHERE precio > (
SELECT avg(precio) 
FROM productos 
WHERE categoria = categoria
);

SELECT nombre, precio
FROM productos
WHERE precio > (SELECT AVG (precio) FROM productos);

SELECT nombre, precio
FROM productos p1
WHERE precio > (
	SELECT AVG(precio) 
    FROM productos p2 
    WHERE p2.categoria = p1.categoria
);

SELECT nombre, precio 
FROM productos p1
WHERE  precio > (
	SELECT MIN(precio)
    FROM productos p2
    WHERE p2.categoria = p1.categoria
);

SELECT nombre, precio
FROM productos p1
WHERE precio > (
	SELECT MAX(precio)
    FROM productos p2
    WHERE p2.categoria = p1.categoria
);

SELECT nombre, precio
FROM productos p1
WHERE precio = (
	SELECT MAX(precio)
    FROM productos p2
    WHERE p2.categoria = p1.categoria
);

SELECT nombre, precio
FROM productos p1
WHERE precio = (
	SELECT MIN(precio)
    FROM productos p2
    WHERE p2.categoria = p1.categoria
);

SELECT nombre, precio
FROM productos p1
WHERE precio > (
	SELECT AVG(precio)
    FROM productos p2
);

SELECT nombre, precio
FROM productos p1
WHERE precio > (
	SELECT AVG(precio)
    FROM productos p2
    WHERE p2.categoria = 'Libros'
)AND p1.categoria != 'Libros';
/*21. Seleccionar Productos con Precio Mayor al Promedio de Productos de
la Misma Categoría y Fecha de Lanzamiento Reciente
Escribe una consulta SQL que seleccione el nombre y el precio de los
productos cuyo precio sea mayor que el promedio de precios de los
productos de la misma categoría y que hayan sido lanzados después de
una fecha específica (por ejemplo, '2020-01-01').
*/
SELECT nombre, precio
FROM productos p1
WHERE precio > (
	SELECT AVG(precio)
    FROM productos p2
    WHERE p2.categoria = p1.categoria
)AND p1.fecha_lanzamiento >('2020-01-01');

SELECT nombre, precio
FROM productos p1
WHERE precio > (
	SELECT AVG(precio)
    FROM productos p2
    WHERE p2.categoria = p1.categoria
)AND p1.proveedor_id IS NOT NULL;

