USE sql_invoicing;

DELETE FROM invoices
WHERE client_id IN (
  SELECT client_id
  FROM clients
  WHERE name = 'Myworks'
)