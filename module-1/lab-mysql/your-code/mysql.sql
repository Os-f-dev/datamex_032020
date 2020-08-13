
Challenge 1 

/*Create database Cars;
Use Cars;
Create table cars
( ID integer,
cars_VIN Varchar(100),
cars_manufacturer Varchar(100),
cars_model Varchar(100),
cars_year Year,
cars_color Varchar(100),
Primary Key (ID)
);
Create table customers
(ID integer,
customer_ID Varchar(100),
customer_name Varchar(100),
customer_phone Varchar(100),
customer_email Varchar(100),
customer_address Varchar(100),
customer_city Varchar(100),
customer_state Varchar(100),
customer_country Varchar(100),
customer_cp Varchar(100),
Primary Key(ID));

Create table salespersons
(ID integer,
sales_staffID Varchar(100),
sales_name Varchar(100),
sales_store Varchar(100),
Primary Key (ID));

Create table invoice
(ID integer,
invoice_number Varchar(100),
invoice_date date,
invoice_car integer,
invoice_customer integer,
invoice_salesperson integer,
constraint invoice_cars Foreign Key (invoice_car) references cars(ID),
constraint invoice_customers Foreign Key (invoice_customer) references customers(ID),
constraint invoice_sales Foreign Key (invoice_salesperson) references salespersons(ID),
Primary Key (ID)
);*/

/USE Cars;/
INSERT INTO cars
(ID,cars_VIN,cars_manufacturer,cars_model,cars_year,cars_color)
VALUES (0,'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
(3, 'HKNDGS7CU31E9Z7JW`', 'Toyota', 'RAV4', '2018', 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

INSERT INTO customers
 (ID,customer_ID,customer_name,customer_phone,customer_email,customer_address,customer_city,customer_state,customer_country,customer_cp)
VALUES (0,10001,'Pablo Picasso','+34636176382',NULL,'Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045),
(1,20001,'Abraham Lincoln','+13059077086',NULL,'120 SW 8th St','Miami','Florida','United States',33130),
(2,30001,'Napoléon Bonaparte','+33179754000',NULL,'40 Rue du Colisée','Paris','Île-de-France','France',75008);

INSERT INTO salespersons
(ID, sales_staffID,sales_name,sales_store)
VALUES(0,00001,'Petey Cruiser','Madrid'),
(1,00002,'Anna Sthesia','Barcelona'),
(2,00003,'Paul Molive','Berlin'),
(3,00004,'Gail Forcewind','Paris'),
(4,00005,'Paige Turner','Mimia'),
(5,00006,'Bob Frapples','Mexico City'),
(6,00007,'Walter Melon','Amsterdam'),
(7,00008,'Shonda Leer','São Paulo');

INSERT INTO invoices
(ID,invoice_number,invoice_date,invoice_car,invoice_customer,invoice_salesperson)
VALUES(0,852399038,'2018-08-22',0,1,3),
(1,731166526,'2018-12-31',3,0,5),
(2,271135104,'2019-01-22',2,2,7);

delete from invoices;
delete from salespersons;
delete from customers;
delete from cars;

USE cars;

UPDATE salespersons
SET sales_store = 'Miami'
WHERE ID = 4;

UPDATE customers
SET customer_email = 'ppicasso@gmail.com'
WHERE customer_name = 'Pablo Picasso';

UPDATE customers
SET customer_email = 'lincoln@us.gov'
WHERE customer_name = 'Abraham Lincoln';

UPDATE customers
SET customer_email = 'hello@napoleon.me'
WHERE customer_name = 'Napoléon Bonaparte';

USE cars;

DELETE FROM cars 
WHERE ID = 4;
