USE sql_store;

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

START TRANSACTION;
-- SELECT points FROM customers WHERE customer_id = 1;
-- SELECT points FROM customers WHERE customer_id = 1;
SELECT * FROM customers WHERE state = 'VA';
COMMIT;