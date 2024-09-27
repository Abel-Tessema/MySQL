USE sql_store;

SHOW INDEXES IN customers;

DROP INDEX idx_lastname_state ON customers;   -- The DROP statements here are for syncing with Mosh.
DROP INDEX idx_state_lastname ON customers;
DROP INDEX idx_points ON customers;
DROP INDEX idx_last_name ON customers;
CREATE INDEX idx_lastname ON customers (last_name);

EXPLAIN SELECT customer_id FROM customers
ORDER BY state; -- Since the composite index idx_state_points has the 'state' column, it has already
                -- sorted the entire table using 'state'. Thus, this will be an index scan.
                
EXPLAIN SELECT customer_id FROM customers
ORDER BY first_name; -- It is sorted using an algorithm in MySQL called 'filesort', and it is very
                     -- expensive. Thus, either don't sort your data, or prepare an index beforehand.
                     
SHOW STATUS;
SHOW STATUS LIKE 'last_query_cost';

EXPLAIN SELECT customer_id FROM customers
ORDER BY state; -- Even though sorting by first_name and state, both return the same number of records,
                -- their cost is quite different.

SHOW STATUS LIKE 'last_query_cost';

EXPLAIN SELECT customer_id FROM customers
ORDER BY state, points; -- This is an index scan.

SHOW STATUS LIKE 'last_query_cost';

EXPLAIN SELECT customer_id FROM customers
ORDER BY points, state; -- This is also an index scan.

SHOW STATUS LIKE 'last_query_cost';

EXPLAIN SELECT customer_id FROM customers
ORDER BY state, first_name, points; -- But this one is an entire scan.

SHOW STATUS LIKE 'last_query_cost';

EXPLAIN SELECT customer_id FROM customers
ORDER BY state, points DESC; -- This is both an index and entire scan (see the Extra column).

SHOW STATUS LIKE 'last_query_cost';

EXPLAIN SELECT customer_id FROM customers
ORDER BY state DESC, points DESC; -- This is an index scan, more accurately, a backward one.

SHOW STATUS LIKE 'last_query_cost';

EXPLAIN SELECT customer_id FROM customers
ORDER BY points; -- This is both an index and entire scan.

SHOW STATUS LIKE 'last_query_cost';

EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' -- Adding the WHERE clause covers the 'state' part of the idx_state_points index,
ORDER BY state;    -- then since they are sorted using points after that, this operation costs quite
                   -- little (relatively speaking).
                   
SHOW STATUS LIKE 'last_query_cost';