-- SELECT *
-- FROM customers
-- -- ORDER BY first_name
-- -- ORDER BY first_name DESC
-- -- ORDER BY state, first_name
-- -- ORDER BY state, first_name
-- -- ORDER BY state DESC, first_name
-- ORDER BY state DESC, first_name DESC

-- SELECT first_name, last_name
-- FROM customers
-- ORDER BY birth_date -- The ordering column doesn't have to be in the SELECT clause.

-- SELECT first_name, last_name, 10 AS points
-- FROM customers
-- -- ORDER BY points, first_name -- You can order by an alias, not just an actual column name.
-- ORDER BY 1, 2 -- first_name and last_name respectively. But avoid doing this.

-- SELECT *
SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
-- ORDER BY quantity * unit_price DESC
ORDER BY total_price DESC