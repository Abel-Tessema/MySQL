USE sql_store;

-- SELECT
--   order_id,
--   order_date,
--   'Active' AS status
-- FROM orders
-- WHERE order_date >= '2019-01-01'
-- UNION
-- SELECT
--   order_id,
--   order_date,
--   'Archived' AS status
-- FROM orders
-- WHERE order_date < '2019-01-01'

-- SELECT first_name AS name
-- -- SELECT first_name, last_name -- Different number of columns is not allowed in unions.
-- FROM customers
-- UNION
-- SELECT name
-- FROM shippers

-- Exercise
SELECT
  customer_id,
  first_name,
  points,
  'Bronze' AS type
FROM customers
WHERE points < 2000
UNION
SELECT
  customer_id,
  first_name,
  points,
  'Silver' AS type
FROM customers
-- WHERE (points >= 2000) AND (points < 3000)
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT
  customer_id,
  first_name,
  points,
  'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name -- This should come last in a union.