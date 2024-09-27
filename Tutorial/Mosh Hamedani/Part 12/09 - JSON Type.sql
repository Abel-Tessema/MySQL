USE sql_store;

-- UPDATE products
-- SET properties = '{
--   "weight": 10,
--   "dimensions": [1, 2, 3],
--   "manufacturer": { "name": "sony" }
-- }'
-- WHERE product_id = 1;

-- UPDATE products
-- SET properties = JSON_OBJECT(
--   'weight', 10,
--   'dimensions', JSON_ARRAY(1, 2, 3),
--   'manufacturer', JSON_OBJECT('name', 'sony')
-- )
-- WHERE product_id = 2;

-- SELECT 
--   product_id,
--   name,
--   -- JSON_EXTRACT(properties, '$.weight') AS weight
--   -- properties -> '$.weight' -- -> = column path operator
--   -- properties -> '$.dimensions'
--   -- properties -> '$.dimensions[0]'
--   -- properties -> '$.manufacturer'
--   -- properties -> '$.manufacturer.name'
--   properties ->> '$.manufacturer.name' -- To get rid of quotation marks in strings.
--   
-- FROM products
-- -- WHERE product_id IN (1, 2)
-- WHERE properties ->> '$.manufacturer.name' = 'sony';

-- UPDATE products
-- SET properties = JSON_SET(properties,
--   '$.weight', 20,
--   '$.age', 10
-- )
-- WHERE product_id = 1; 

-- SELECT 
--   product_id,
--   name,
--   properties
-- FROM products
-- WHERE properties ->> '$.manufacturer.name' = 'sony';

-- UPDATE products
-- SET properties = JSON_REMOVE(properties,
--   '$.age'
-- )
-- WHERE product_id = 1;

SELECT 
  product_id,
  name,
  properties
FROM products
WHERE properties ->> '$.manufacturer.name' = 'sony';