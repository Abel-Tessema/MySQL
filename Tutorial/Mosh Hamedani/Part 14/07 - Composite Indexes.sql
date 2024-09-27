USE sql_store;
SHOW INDEXES IN customers;

CREATE INDEX idx_state_points ON customers (state, points);

ANALYZE TABLE customers;

EXPLAIN SELECT customer_id
FROM customers
-- FORCE INDEX (idx_state_points)
WHERE state = 'CA' AND points > 30000;

DROP INDEX idx_state ON customers;
DROP INDEX idx_ ON customers;

-- It's not working. Composite index is not making even the slightest difference.
-- No matter how much I change the minimum point, the rows checked stay the same.
-- And other states except CA look for only 1 row.