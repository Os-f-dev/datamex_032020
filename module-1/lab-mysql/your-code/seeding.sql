/*
CREATE TABLE cars
(
ID INT(5),
VIN VARCHAR(17),
manufacturer VARCHAR(10),
model VARCHAR(20),
myear INT(4),
color VARCHAR(10),
PRIMARY KEY(ID)
);

CREATE TABLE customers
(
ID INT(5),
customer_ID INT(10),
nombre VARCHAR(30),
phone VARCHAR(20),
email VARCHAR(30),
address VARCHAR(30),
city VARCHAR(15),
state VARCHAR(20),
country VARCHAR(15),
zip_postal INT(5),
PRIMARY KEY(ID)
);

CREATE TABLE salesperson
(
ID INT(5),
staff_ID INT(5),
nombre VARCHAR(30),
store VARCHAR(20),
PRIMARY KEY(ID)
);

CREATE TABLE invoices
(
ID INT(5),
invoice_number INT(10),
DT DATE,
car INT(5),
customer INT(5),
salesperson INT(30),
PRIMARY KEY(ID)
);

INSERT INTO cars
(ID, VIN, manufacturer, model, myear, color)
VALUES(0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country',2019, 'Gray')
;

INSERT INTO customers
(ID, customer_ID, nombre, phone, email, address, city, state, country, zip_postal)
VALUES(0, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', 28045),
(1, 20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

INSERT INTO salesperson
(ID, staff_ID, nombre, store)
VALUES(0, 00001, 'Petey Cruiser', 'Madrid'),
(1, 00002, 'Anna Sthesia', 'Barcelona'),
(2, 00003, 'Paul Molive', 'Berlin'),
(3, 00004, 'Gail Forcewind', 'Paris'),
(4, 00005, 'Paige Turner', 'Mimia'),
(5, 00006, 'Bob Frapples', 'Mexico City'),
(6, 00007, 'Walter Melon', 'Amsterdam'),
(7, 00008, 'Shonda Leer', 'São Paulo');

INSERT INTO invoices
(ID, invoice_number, DT, car, customer, salesperson)
VALUES(0, 852399038, '2018-08-22', 0, 1, 3),
(1, 731166526, '2018-12-31', 3, 0, 5),
(2, 271135104, '2019-01-22', 2, 2, 7);
*/
