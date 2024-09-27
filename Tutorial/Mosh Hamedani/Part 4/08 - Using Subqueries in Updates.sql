-- USE sql_invoicing;

-- UPDATE invoices
-- SET
--   payment_total = invoice_total * 0.5,
--   payment_date = due_date
-- -- WHERE client_id = (
-- --   SELECT client_id
-- --   FROM clients
-- --   WHERE name = 'Myworks'
-- -- )

-- -- WHERE client_id IN (
-- --   SELECT client_id 
-- --   FROM clients
-- --   WHERE state IN ('CA', 'NY')
-- -- )

-- -- SELECT * -- Check first using SELECT, whenever it's not a subquery like lines 14-16
-- -- FROM invoices
-- WHERE payment_date IS NULL

-- Exercise

USE sql_store;

UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN (
  SELECT customer_id
  FROM customers
  WHERE points > 3000
)