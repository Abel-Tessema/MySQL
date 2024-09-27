EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' OR points > 50000;

CREATE INDEX idx_points ON customers (points);

EXPLAIN                                 -- We break the query down into two so that it uses
  SELECT customer_id FROM customers     -- different indexes, hence making it more efficient.
  WHERE state = 'CA'
  UNION
  SELECT customer_id FROM customers
  WHERE points > 50000;

EXPLAIN
  SELECT customer_id FROM customers
  WHERE points + 10 > 50010;

EXPLAIN
  SELECT customer_id FROM customers
  WHERE points > 50000                  -- Rewrite expression columns so that they are no longer
                                        -- expressions. Otherwise, the index on that column won't
                                        -- be utilized.