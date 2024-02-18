SELECT *
FROM customer c 
WHERE customer_id NOT IN (
  SELECT DISTINCT customer_id
  FROM "transaction" t 
);