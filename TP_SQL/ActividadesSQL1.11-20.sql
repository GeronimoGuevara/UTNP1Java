USE base0_geroguevara;
-- ej11
CREATE TABLE Productos(
    id INT PRIMARY KEY,
    nombre VARCHAR(14),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT
);
-- ej12
INSERT INTO Productos(id, nombre, categoria, precio, stock) VALUES
(1, 'Camiseta', 'ropa', 25000.00, 60),
(2, 'Zapatillas', 'calzado', 55000.00, 30),
(3, 'Celular', 'electronica', 500000.00, 20),
(4, 'Reloj', 'accesorios', 250000.00, 10),
(5, 'Gorra', 'accesorios', 10.00, 40);
-- ej13
SELECT * FROM Productos;
-- ej14
SELECT * FROM Productos WHERE categoria = 'electronica';
-- ej15
SELECT * FROM Productos ORDER BY precio ASC;
-- ej16
SELECT DISTINCT categoria FROM Productos;
-- ej17
SELECT * FROM Productos WHERE precio > 50000.00 AND categoria = 'electronica';
-- ej18
SELECT * FROM Productos WHERE precio BETWEEN 1.00 AND 100.00;
-- ej19
SELECT * FROM Productos WHERE nombre LIKE 'Camiseta%';
-- ej20
SELECT * FROM Productos WHERE categoria IN ('electronica', 'ropa');

