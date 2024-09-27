-- Unlike procedures, functions return a single value, not a result set.

USE sql_invoicing;

DROP FUNCTION IF EXISTS getRiskFactorForClient;

DELIMITER $$
CREATE FUNCTION getRiskFactorForClient(client_id INT) 
RETURNS DECIMAL(9, 2) 
-- Attributes:
-- DETERMINISTIC -- For the same input/parameter, it always returns the same value.
READS SQL DATA
-- MODIFIES SQL DATA

BEGIN
  -- risk_factor = invoices_total / invoices_count * 5
  DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
  DECLARE invoices_total DECIMAL(9, 2);
  DECLARE invoices_count INT;
  
  SELECT COUNT(*), SUM(invoice_total)
  INTO invoices_count, invoices_total
  FROM invoices i
  WHERE i.client_id = client_id;
  
  SET risk_factor = invoices_total / invoices_count * 5;
  
  RETURN IFNULL(risk_factor, 0);
END$$
DELIMITER ;


-- CALL getRiskFactorForClient(3);
SELECT 
  client_id,
  name,
  getRiskFactorForClient(client_id) AS risk_factor
FROM clients