USE sql_store;

-- SELECT
--   order_id,
--   IFNULL(shipper_id, 'Not assigned') AS shipper,
--   COALESCE(shipper_id, comments, 'Not assigned') AS shipper
-- FROM orders

-- Exercise

SELECT
  CONCAT(first_name, ' ', last_name) AS full_name,
  COALESCE(phone, 'Unknown') AS phone
FROM customers 