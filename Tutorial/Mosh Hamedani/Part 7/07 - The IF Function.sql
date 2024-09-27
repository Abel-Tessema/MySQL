USE sql_store;

-- SELECT
--   order_id,
--   order_date,
--   IF (YEAR(order_date) = 2019, 'Active', 'Archived') AS status
-- FROM orders

-- Exercise

SELECT
  product_id,
  name,
  (
    SELECT COUNT(product_id)
    FROM order_items
    WHERE product_id = p.product_id
  ) AS orders,
  IF ((SELECT orders) = 1, 'Once', 'Many times') AS frequency
FROM products p
WHERE (
  SELECT COUNT(product_id)
  FROM order_items
  WHERE product_id = p.product_id
) <> 0;

SELECT
  product_id,
  name,
  COUNT(*) AS orders,
  IF (COUNT(*) = 1, 'Once', 'Many times') AS frequency
FROM products
JOIN order_items USING (product_id)
GROUP BY product_id, name
