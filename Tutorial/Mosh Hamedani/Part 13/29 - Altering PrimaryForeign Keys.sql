USE sql_store2;

ALTER TABLE `Order`
ADD PRIMARY KEY (orderId), -- You can list multiple primary key columns here.
DROP PRIMARY KEY, -- All of 'em have to be dropped, apparently.
DROP FOREIGN KEY fk_Order_customerId,
ADD FOREIGN KEY fk_Order_customerId (customerId)
  REFERENCES Customer (customerId)
  ON UPDATE CASCADE
  ON DELETE NO ACTION