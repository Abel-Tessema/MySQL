-- USE sql_store;

-- SELECT 
--   c.first_name AS customer,
--   p.name AS product
-- -- FROM customers c
-- -- CROSS JOIN products p -- Explicit cross join syntax
-- FROM customers c, products p -- Implicit cross join syntax
-- ORDER BY c.first_name

-- -- You use cross joins for something like all combinations of colors and sizes of a product.

-- Exercise

SELECT
  s.name AS shipper,
  p.name AS product
-- FROM shippers s
-- CROSS JOIN products p
FROM shippers s, products p
ORDER BY s.name