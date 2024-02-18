SELECT DISTINCT job_title
FROM customer c 
WHERE (job_industry_category = 'IT' OR job_industry_category = 'Financial Services')
  AND job_title LIKE 'Senior%';