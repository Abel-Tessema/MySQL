CREATE INDEX idx_last_name ON customers (last_name(3));
-- column(number of the first few characters to be indexed.
-- For CHAR, VARCHAR, TEXT, and BLOB.
-- Optional for the first two, and mandatory for the rest two.

SELECT 
  COUNT(DISTINCT LEFT(last_name, 1)),
  COUNT(DISTINCT LEFT(last_name, 2)),
  COUNT(DISTINCT LEFT(last_name, 3)),
  COUNT(DISTINCT LEFT(last_name, 4))
-- When increasing these number of characters, we try to find the one which
-- has the least change from the previous, and has the most significant
-- change in terms of the number of distinct records it returns.
FROM customers;