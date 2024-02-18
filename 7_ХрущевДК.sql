SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.job_title,
    c.job_industry_category,
    t.transaction_id,
    t.standard_cost
FROM
    customer c
JOIN
    transaction t ON c.customer_id = t.customer_id
WHERE
    c.job_industry_category = 'IT'
    AND t.standard_cost = (
        SELECT
            MAX(t2.standard_cost)
        FROM
            transaction t2
        WHERE
            t2.customer_id = c.customer_id
    )
ORDER BY
    c.customer_id;









