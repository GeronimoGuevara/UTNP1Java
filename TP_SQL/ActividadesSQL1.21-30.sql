USE base0_geroguevara;
DROP TABLE IF EXISTS clientes;
-- ej21
CREATE TABLE clientes (
	id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    fecha_registro DATE
);
-- ej22
INSERT INTO clientes (id,nombre, apellido, email,fecha_registro) VALUES
(1, 'Ana', 'García', 'ana.garcia@example.com', '2022-01-10'),
(2, 'Luis', 'Fernández', 'luis.fernandez@example.com', '2022-02-15'),
(3, 'Sofía', 'Ramírez', 'sofia.ramirez@example.com', '2022-03-20'),
(4, 'Diego', 'Sánchez', 'diego.sanchez@example.com', '2022-04-25'),
(5, 'Elena', 'Pérez', 'elena.perez@example.com', '2022-05-30');
-- ej23
SELECT * FROM clientes;
-- ej24
SELECT * FROM clientes WHERE fecha_registro > '2022-01-01';
-- ej25
SELECT * FROM clientes ORDER BY fecha_registro DESC;
-- ej26
SELECT DISTINCT email FROM Clientes;
-- ej27
SELECT * FROM clientes WHERE fecha_registro > '2022-01-01' AND apellido = 'Garcia';
-- ej28
SELECT * FROM clientes WHERE fecha_registro BETWEEN '2022-01-01' AND '2022-12-31';
-- ej29
SELECT * FROM clientes WHERE nombre LIKE 'A%';
-- ej30
SELECT * FROM clientes WHERE apellido IN ('García', 'Fernández');
