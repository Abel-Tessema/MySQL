USE sql_store2;

DROP TABLE IF EXISTS `Order`; -- This one comes first because it's a child table, and we cannot drop
                              -- parent tables if they have dependencies (child tables). We have to
                              -- drop the dependencies, then the parent.
DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer (
  customerId  INT           PRIMARY KEY AUTO_INCREMENT,
  firstName   VARCHAR(64)   NOT NULL,
  points      INT           NOT NULL DEFAULT 0,
  email       VARCHAR(256)  NOT NULL UNIQUE
);

CREATE TABLE `Order` (
  orderId     INT   PRIMARY KEY,
  customerId  INT   NOT NULL,
  FOREIGN KEY fk_Order_customerId (customerId)
    REFERENCES Customer (customerId)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);