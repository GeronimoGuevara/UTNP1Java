CREATE DATABASE IF NOT EXISTS base0_geroguevara;
USE base0_geroguevara;
DROP TABLE IF EXISTS productos;
-- ej1
CREATE TABLE Empleados (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 apellido VARCHAR(50),
 fecha_nacimiento DATE,
 puesto VARCHAR(50),
 salario DECIMAL(10, 2)
);
-- ej2
INSERT INTO Empleados (id, nombre, apellido, fecha_nacimiento, puesto, salario) VALUES
(1, 'Juan', 'Pérez', '1985-05-15', 'Desarrollador', 50000.00),
(2, 'María', 'Gómez', '1990-08-22', 'Analista', 45000.00),
(3, 'Carlos', 'Rodríguez', '1982-03-10', 'Gerente', 70000.00),
(4, 'Laura', 'Martínez', '1995-11-05', 'Diseñador', 40000.00),
(5, 'Pedro', 'López', '1988-07-18', 'Desarrollador', 55000.00);
-- ej3
SELECT * FROM Empleados;
-- ej4
SELECT * FROM Empleados WHERE puesto = 'Desarrollador';
-- ej5
SELECT * FROM Empleados ORDER BY salario DESC;
-- ej6
SELECT DISTINCT puesto FROM Empleados;
-- ej7
SELECT * FROM Empleados WHERE salario > 50000 AND puesto = 'Desarrollador';
-- ej8
SELECT * FROM Empleados WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1990-12-31';
-- ej9
SELECT * FROM Empleados WHERE apellido LIKE 'G%';
-- ej10
SELECT * FROM Empleados WHERE puesto IN ('Desarrollador', 'Gerente');
