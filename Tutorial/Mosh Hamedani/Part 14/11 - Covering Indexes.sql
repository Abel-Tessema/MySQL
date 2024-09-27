USE sql_store;

EXPLAIN SELECT customer_id FROM customers
ORDER BY state;

EXPLAIN SELECT * FROM customers
ORDER BY state;

SHOW STATUS LIKE 'last_query_cost';

EXPLAIN SELECT customer_id, state FROM customers -- So long as the SELECTed columns are in the indexes,
ORDER BY state;                                  -- it'll be an index scan.

SHOW STATUS LIKE 'last_query_cost';

-- An index is called covering if it satisfies a query entirely. Meaning,
-- if the query doesn't have to touch the file system, and can make do with
-- only the index, that means it "covers" the query. It is super fast. And
-- for it to happen, the columns in the SELECT, WHERE, ORDER BY, etc. clauses
-- should be present in the indexes. Otherwise, it'll be a full scan.