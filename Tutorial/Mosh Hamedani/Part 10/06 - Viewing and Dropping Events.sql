USE sql_invoicing;

-- SHOW EVENTS;
-- SHOW EVENTS LIKE 'yearly%';
ALTER EVENT yearly_delete_stale_audit_rows DISABLE;
ALTER EVENT yearly_delete_stale_audit_rows ENABLE;