-- USE sql_hr;

-- SELECT *
-- FROM employees e
-- WHERE salary > (
--   SELECT AVG(salary)
--   FROM employees
--   WHERE office_id = e.office_id
-- )
-- The subquery references a value from the outer query (they are correlated).
-- Thus, it runs for each outer query.
-- Were they not correlated, the subquery would execute once,
-- and the outer query would use that once-calculated subquery.
-- SQL is efficient like that.

-- Exercise

USE sql_invoicing;

SELECT *
FROM invoices i
WHERE invoice_total > (
  SELECT AVG(invoice_total)
  FROM invoices
  WHERE client_id = i.client_id
)