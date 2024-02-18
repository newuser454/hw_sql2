SELECT DISTINCT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.job_title,
    t.transaction_id,
    t.transaction_date,
    t.order_status
FROM 
    customer c,
    transaction t
WHERE 
    c.customer_id = t.customer_id
    AND c.job_industry_category IN ('IT', 'Health')
    AND t.order_status = 'Approved'
    AND CAST(t.transaction_date AS DATE) BETWEEN '2017-07-07' AND '2017-07-17';
