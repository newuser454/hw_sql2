SELECT *
FROM "transaction" t 
WHERE to_date(transaction_date, 'DD.MM.YYYY') BETWEEN '2017-04-01' AND '2017-04-09'
  AND order_status = 'Approved';