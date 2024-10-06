--Parte solo de CREATE TABLE y INSERT INTO
CREATE database IF NOT EXISTS base1_GeroGuevara;
USE base1_GeroGuevara;
DROP TABLE IF EXISTS productos;
CREATE TABLE productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10 , 2 ) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    fecha_lanzamiento DATE NOT NULL,
    proveedor_id INT,
    FOREIGN KEY (proveedor_id) REFERENCES productos(id)
);

INSERT INTO productos (nombre,precio,categoria,fecha_lanzamiento,proveedor_id) VALUES
('Laptop', 1200.00, 'Electrónica', '2021-01-01', NULL),
('Smartphone', 800.00, 'Electrónica', '2020-05-15', NULL),
('Cafetera', 50.00, 'Hogar', '2019-08-20', NULL),
('Libro', 20.00, 'Libros', '2022-03-10', NULL),
('Tablet', 300.00, 'Electrónica', '2021-06-01', 1),
('Aspiradora', 150.00, 'Hogar', '2020-11-20', 2),
('Monitor', 250.00, 'Electrónica', '2018-07-15', 3),
('Juego de Mesa', 30.00, 'Juegos', '2022-09-05', 4);
