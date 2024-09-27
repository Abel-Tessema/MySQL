-- USE sql_invoicing;

-- SELECT *
-- FROM clients c
-- WHERE EXISTS (
--   SELECT DISTINCT client_id
--   FROM invoices
--   WHERE client_id = c.client_id
-- )
-- Since the subquery returns a boolean instead of a result set,
-- it is more efficient than trying to find a client_id IN
-- the subquery for large datasets.

USE sql_store;

SELECT *
FROM products p
WHERE NOT EXISTS (
  SELECT DISTINCT product_id
  FROM order_items
  WHERE product_id = p.product_id
)