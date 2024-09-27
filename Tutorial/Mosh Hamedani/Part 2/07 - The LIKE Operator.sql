-- SELECT *
-- FROM customers
-- -- WHERE last_name LIKE 'b%' -- Regex = /^b.*$/
-- -- WHERE last_name LIKE 'brush%' -- Regex = /^brush.*$/
-- -- WHERE last_name LIKE '%b%' -- Regex = /b/ or /^.*b.*$/
-- -- WHERE last_name LIKE '%y' -- Regex = /^.*y$/
-- -- WHERE last_name LIKE '_____y' -- Regex = /^.{5}y$/
-- WHERE last_name LIKE 'b____y' -- Regex = /^b.{4}y$/

-- Exercise

SELECT *
FROM customers
-- WHERE address LIKE '%trail%' OR address LIKE '%avenue%'
-- WHERE phone LIKE '%9'
WHERE phone NOT LIKE '%9'