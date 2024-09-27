-- INSERT INTO customers
-- VALUES (
--   DEFAULT,
--   'Abebe',
--   'Besso',
--   '1990-01-01',
--   NULL, -- or DEFAULT, since the default value is NULL
--   'address',
--   'city',
--   'CA',
--   DEFAULT
-- )
INSERT INTO customers (
  last_name,
  first_name,
  birth_date,
  address,
  city,
  state
)
VALUES (
  'Besso',
  'Abebe',
  '1990-01-01',
  'address',
  'city',
  'CA'
)