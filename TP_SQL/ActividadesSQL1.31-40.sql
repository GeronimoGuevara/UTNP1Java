USE base0_geroguevara;
DROP TABLE IF EXISTS Ventas;
-- ej31
CREATE TABLE IF NOT EXISTS Ventas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    cliente_id INT,
    producto_id INT,
    cantidad INT,
    total DECIMAL(10.2)
);
-- ej32
INSERT INTO Ventas (fecha, cliente_id, producto_id, cantidad, total) VALUES
('2023-01-10', 1, 1, 2, 2000.00),
('2023-01-15', 2, 2, 1, 500.00),
('2023-01-20', 3, 3, 3, 60.00),
('2023-01-25', 4, 4, 2, 30.00),
('2023-01-30', 5, 5, 5, 25.00);
-- ej33
SELECT * FROM Ventas;
-- ej34
SELECT * FROM Ventas WHERE fecha > '2023-01-01';
-- ej35
SELECT * FROM Ventas ORDER BY fecha ASC;
-- ej36
SELECT DISTINCT cliente_id FROM Ventas;
-- ej37
SELECT * FROM Ventas WHERE fecha > '2023-01-01' AND total > 100;
-- ej38
SELECT * FROM Ventas WHERE fecha BETWEEN '2023-01-01' AND  '2023-01-31';
-- ej39
SELECT * FROM Ventas WHERE fecha LIKE '2023-01%';
-- ej40
SELECT * FROM Ventas WHERE cliente_id IN (1, 2);