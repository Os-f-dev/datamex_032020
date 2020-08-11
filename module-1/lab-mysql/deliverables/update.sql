USE car_dealer

UPDATE sales_persons SET store='Miami' WHERE store='Mimia';

UPDATE customers SET email = 'ppicasso@gmail.com' WHERE (sql_id = 1);
UPDATE customers SET email = 'lincoln@us.gov' WHERE (sql_id = 2);
UPDATE customers SET email = 'hello@napoleon.me' WHERE (sql_id = 3);
SELECT * FROM customers;