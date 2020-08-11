DROP TABLE cars, customers, salespersons, invoices;

CREATE TABLE cars (sql_id VARCHAR(50), vin VARCHAR(50),
manufacturer VARCHAR(30), model VARCHAR(30), year VARCHAR(5), color VARCHAR(10));

CREATE TABLE customers (sql_id VARCHAR(50), customer_id VARCHAR(50),
name VARCHAR(30), phone_number VARCHAR(15), email VARCHAR(30), address VARCHAR(50),
city VARCHAR(20), state_province VARCHAR(20), country VARCHAR(20), zip_postal VARCHAR(7));

CREATE TABLE sales_persons (sql_id VARCHAR(50), staff_id VARCHAR(50),
name VARCHAR(30), store VARCHAR(30));

CREATE TABLE invoices (sql_id VARCHAR(50), invoice_number VARCHAR(50),
date DATETIME, car VARCHAR(20), customer VARCHAR(30), sales_person VARCHAR(30));