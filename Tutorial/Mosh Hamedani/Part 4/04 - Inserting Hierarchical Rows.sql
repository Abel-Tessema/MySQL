-- INSERT INTO orders (customer_id, order_date, status)
-- VALUES (1, '2019-01-02', 1);

INSERT INTO order_items
VALUES
  (LAST_INSERT_ID(), 1, 1, 2.50),
  (LAST_INSERT_ID(), 2, 1, 3.50)