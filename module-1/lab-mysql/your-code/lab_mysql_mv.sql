#crear base de datos
/*CREATE DATABASE base_autos;
USE base_autos;*/

/*CREATE TABLE autos
(
ID DECIMAL(2),
Fabricante VARCHAR(15),
Modelo VARCHAR(10),
Transmisión VARCHAR(10),
Año DECIMAL(4),
Color VARCHAR(10),
Cilindros DECIMAL(2),
PRIMARY KEY (ID)
)*/

/*CREATE TABLE ventas
(
ID DECIMAL(2),
Staff_ID DECIMAL(4),
Nombre VARCHAR(20),
Agencia VARCHAR(15),
PRIMARY KEY(ID)
)*/

/*CREATE TABLE clientes
(
ID DECIMAL(2),
Cliente_ID DECIMAL(5),
Nombre_c VARCHAR(10),
Mail VARCHAR(20),
Ciudad VARCHAR(15),
PRIMARY KEY(ID)
)*/

/*CREATE TABLE facturas
(
ID DECIMAL(2),
Num_factura DECIMAL(5),
Fecha_factura DATE,
Auto DECIMAL(2),
Cliente DECIMAL(2),
Ventas DECIMAL(2),
PRIMARY KEY(ID)
)*/

/*INSERT INTO autos
(ID, Fabricante, Modelo, Transmisión, Año, Color, Cilindros)
VALUES(0, 'Volkswagen', 'Tiguan', 'Auto', 2019, 'Azul', 4),
(1, 'Peugeot', 'Rifter', 'Std', 2019, 'Rojo', 4),
(2, 'Ford', 'Fusion', 'Auto', 2018, 'Blanco', 4),
(3, 'Toyota', 'Rav4', 'Auto', 2018, 'Gris', 6),
(4, 'Volvo', 'V60', 'Std', 2019, 'Gris', 4),
(5, 'Volvo', 'V60 Cross', 'Auto', 2019, 'Gris', 4),
(6, 'Toyota', 'Tacoma', 'Std', 2019, 'Azul', 6),
(7, 'Dodge', 'Ram', 'Auto', 2018, 'Blanco', 6); */

/*INSERT INTO ventas
(ID, Staff_ID, Nombre, Agencia)
VALUES(0, 0001, 'Peter Cruiser', 'Madrid'),
(1, 0002, 'Anna Sthesia', 'Barcelona'),
(2, 0003, 'Paul Molive', 'Berlin'),
(3, 0004, 'Gail Force', 'Paris'),
(4, 0005, 'Paige Turner', 'Mimia');*/

/*INSERT INTO clientes
(ID, Cliente_ID, Nombre_c, Mail, Ciudad)
VALUES(0, 10001, 'Pablo', NULL, 'Madrid'),
(1, 20001, 'Abraham', NULL, 'Miami'),
(2, 30001, 'Napoleón', NULL, 'París');*/ 

/*INSERT INTO facturas
(ID, Num_factura, Fecha_factura, Auto, Cliente, Ventas)
VALUES(0, 85239, '2018-08-22', 0, 1, 3),
(1, 73116, '2018-12-31', 3, 0, 5),
(2, 27113, '2019-01-22', 2, 2, 4);*/

/*seleccionando la base de datos base_autos para trabajar en ella.
USE base_autos;

UPDATE clientes
SET Mail = 'ppicasso@gmail.com'
WHERE ID = 0;*/

/*UPDATE clientes
SET Mail = 'lincoln@us.gov'
WHERE ID = 1;*/

/*UPDATE clientes
SET Mail = 'hello@napoleon.me'
WHERE ID = 2;*/

/*UPDATE ventas
SET Agencia = 'Miami'
WHERE ID = 4;*/
