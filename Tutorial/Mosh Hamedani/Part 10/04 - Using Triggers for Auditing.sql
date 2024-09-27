USE sql_invoicing;

-- DROP TABLE IF EXISTS payments_audit;
-- CREATE TABLE payments_audit (
--   client_id     INT             NOT NULL,
--   date          DATE            NOT NULL,
--   amount        DECIMAL(9, 2)   NOT NULL,
--   action_type   VARCHAR(50)     NOT NULL,
--   action_date   DATETIME        NOT NULL
-- )

-- DROP TRIGGER IF EXISTS paymentsAfterInsert;
-- DELIMITER $$
-- CREATE TRIGGER paymentsAfterInsert
--   AFTER INSERT on payments
--   FOR EACH ROW
-- BEGIN
--   UPDATE invoices
--   SET payment_total = payment_total + NEW.amount
--   WHERE invoice_id = NEW.invoice_id;
--   
--   INSERT INTO payments_audit
--   VALUES (NEW.client_id, NEW.date, NEW.amount, 'Insert', NOW());
-- END$$
-- DELIMITER ;

-- DROP TRIGGER IF EXISTS paymentsAfterDelete;
-- DELIMITER $$
-- CREATE TRIGGER paymentsAfterDelete
--   AFTER DELETE on payments
--   FOR EACH ROW
-- BEGIN
--   UPDATE invoices
--   SET payment_total = payment_total - OLD.amount
--   WHERE invoice_id = OLD.invoice_id;
--   
--   INSERT INTO payments_audit
--   VALUES (OLD.client_id, OLD.date, OLD.amount, 'Delete', NOW());  
-- END$$
-- DELIMITER ;

-- INSERT INTO payments
-- VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1);

DELETE FROM payments
WHERE payment_id = LAST_INSERT_ID();