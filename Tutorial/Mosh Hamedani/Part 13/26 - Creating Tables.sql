USE sql_store2;

-- DROP TABLE IF EXISTS Customer;

CREATE TABLE IF NOT EXISTS Customer (
  customerId  INT           PRIMARY KEY AUTO_INCREMENT,
  firstName   VARCHAR(64)   NOT NULL,
  points      INT           NOT NULL DEFAULT 0,
  email       VARCHAR(256)  NOT NULL UNIQUE
);