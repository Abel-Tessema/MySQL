USE sql_store;

-- START TRANSACTION;

-- INSERT INTO orders (customer_id, order_date, status)
-- VALUES (1, '2019-01-01', 1);

-- INSERT INTO order_items
-- VALUES (LAST_INSERT_ID(), 1, 1, 1);

-- -- Error checking code here (if you'd like); if true, then,
-- -- ROLLBACK;

-- -- Otherwise,
-- COMMIT;

SHOW VARIABLES LIKE 'autocommit'; -- When ON, MySQL wraps every single statement within a transaction, and then commits it.