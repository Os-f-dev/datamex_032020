CREATE DATABASE car_dealer;
USE car_dealer;
CREATE TABLE cars (sql_id VARCHAR(50), vin VARCHAR(50),
manufacturer VARCHAR(50), model VARCHAR(50), year VARCHAR(50), color VARCHAR(50));

CREATE TABLE customers (sql_id VARCHAR(50), customer_id VARCHAR(50),
name VARCHAR(30), phone_number VARCHAR(20), email VARCHAR(30), address VARCHAR(100),
city VARCHAR(30), state_province VARCHAR(30), country VARCHAR(20), zip_postal VARCHAR(7));

CREATE TABLE salespersons (sql_id VARCHAR(50), staff_id VARCHAR(50),
name VARCHAR(30), store VARCHAR(30));

CREATE TABLE invoices (sql_id VARCHAR(50), invoice_number VARCHAR(50),
date DATETIME, car VARCHAR(30), customer VARCHAR(30), sales_person VARCHAR(30));

ALTER TABLE cars MODIFY sql_id INT NOT NULL AUTO_INCREMENT UNIQUE KEY
ALTER TABLE customers MODIFY sql_id INT NOT NULL AUTO_INCREMENT UNIQUE KEY
ALTER TABLE invoices MODIFY sql_id INT NOT NULL AUTO_INCREMENT UNIQUE KEY
ALTER TABLE sales_persons MODIFY sql_id INT NOT NULL AUTO_INCREMENT UNIQUE KEY

SELECT * FROM sales_persons;
