CREATE DATABASE coches;
USE coches;
CREATE TABLE cars
(
ID INT ,
car_vin VARCHAR(25),
car_manufacturer VARCHAR(15),
car_model VARCHAR(20),
car_year YEAR,
car_color VARCHAR(15),
PRIMARY KEY (ID)
);

CREATE TABLE customers
(
ID INT,
cus_ID VARCHAR(10),
cus_name VARCHAR(40),
cus_phone VARCHAR(15),
cmr_email VARCHAR(30),
cmr_address VARCHAR(60),
cmr_city VARCHAR(15),
cmr_state VARCHAR(15),
cmr_country VARCHAR(15),
cmr_cp VARCHAR(10),
PRIMARY KEY (ID)
);

CREATE TABLE salespersons
(
ID INT,
sal_staffID VARCHAR(10),
sal_name VARCHAR(40),
sal_store VARCHAR(15),
PRIMARY KEY (ID)
);

CREATE TABLE invoice
(
ID INT,
inv_number VARCHAR(15),
inv_date DATE,
inv_car INT,
inv_customer INT,
inv_sal_person INT,
CONSTRAINT invoice_car FOREIGN KEY (inv_car) REFERENCES cars(ID),
CONSTRAINT invoice_cust FOREIGN KEY (inv_customer) REFERENCES customers(ID),
CONSTRAINT invoice_sales FOREIGN KEY (inv_sal_person) REFERENCES salespersons(ID),
PRIMARY KEY (ID)
);

