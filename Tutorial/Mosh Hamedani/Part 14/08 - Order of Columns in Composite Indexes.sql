-- 1) Frequently used columns
-- 2) High cardinality columns (columns with many DISTINCT values)
-- 3) Take your queries into account (the first two may not always apply).

USE sql_store;

SELECT customer_id
FROM customers
WHERE state = 'CA' AND last_name LIKE 'A%';

SELECT 
  COUNT(DISTINCT state),
  COUNT(DISTINCT last_name)
FROM customers;

CREATE INDEX idx_lastname_state ON customers (last_name, state);

EXPLAIN SELECT customer_id
FROM customers
WHERE state = 'CA' AND last_name LIKE 'A%';

CREATE INDEX idx_state_lastname ON customers (state, last_name);

EXPLAIN SELECT customer_id
FROM customers
WHERE state = 'CA' AND last_name LIKE 'A%';

EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_lastname_state)
WHERE state = 'CA' AND last_name LIKE 'A%';

EXPLAIN SELECT customer_id
FROM customers
WHERE state LIKE 'A%' AND last_name LIKE 'A%';

EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_state_lastname)
WHERE state LIKE 'A%' AND last_name LIKE 'A%';

DROP INDEX idx_lastname_state ON customers; -- Because it is not optimal for the "WHERE state = 'CA' AND last_name LIKE 'A%'",
                                            -- assuming that's our only query of interest, not the other ones here.
                                            