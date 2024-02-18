SELECT *
FROM "transaction" t 
WHERE online_order = TRUE
  AND brand IN ('Giant Bicycles', 'Norco Bicycles', 'Trek Bicycles')
LIMIT 10;