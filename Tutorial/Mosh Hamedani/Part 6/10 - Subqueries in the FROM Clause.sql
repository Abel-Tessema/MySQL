USE sql_invoicing;

SELECT *
FROM (
  SELECT 
    client_id,
    name,
    (
      SELECT SUM(invoice_total)
      FROM invoices
      WHERE client_id = c.client_id
    ) AS total_sales,
    (
      SELECT AVG(invoice_total)
      FROM invoices
    ) AS average,
    -- (SELECT total_sales) - (SELECT average) AS difference
    (SELECT total_sales - average) AS difference
  FROM clients c
) AS sales_summary
WHERE total_sales IS NOT NULL

-- The table from the subquery in the FROM clause is virtual/temporary.
-- We can store it as a View, and reference that view instead of the
-- complex subquery that produced it.