-- SELECT *
-- FROM orders o
-- JOIN customers c
--   ON o.customer_id = c.customer_id

-- Implicit join syntax
SELECT *
FROM orders o, customers c
-- WHERE o.customer_id = c.customer_id
-- If you forget the WHERE clause, it becomes a cross join (A cross B).