SELECT DISTINCT brand
FROM "transaction" t 
WHERE standard_cost <> '' 
  AND CAST(REPLACE(standard_cost, ',', '.') AS numeric) > 1500;