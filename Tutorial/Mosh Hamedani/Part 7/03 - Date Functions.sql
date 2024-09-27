-- SELECT
--   NOW(),
--   CURDATE(),
--   CURTIME(),
--   YEAR(NOW()),
--   MONTH(NOW()),
--   DAY(NOW()),
--   HOUR(NOW()),
--   MINUTE(NOW()),
--   SECOND(NOW()),
--   DAYNAME(NOW()),
--   MONTHNAME(NOW()),
--   EXTRACT(YEAR FROM NOW()),
--   EXTRACT(MONTH FROM NOW()),
--   EXTRACT(DAY FROM NOW())

-- Exercise

USE sql_store;

SELECT *
FROM orders
-- WHERE order_date >= '2019-01-01'
WHERE YEAR(order_date) = YEAR(NOW())