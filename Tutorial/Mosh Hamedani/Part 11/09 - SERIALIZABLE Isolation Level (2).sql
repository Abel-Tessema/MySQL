USE sql_store;

START TRANSACTION;
UPDATE customers
-- SET points = 40
SET state = 'VA'
WHERE customer_id = 3;
COMMIT;
-- ROLLBACK;