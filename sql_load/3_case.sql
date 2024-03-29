

/*
SELECT name AS company_name,
*
FROM company_dim
WHERE company_id IN (
    SELECT
        company_id
    FROM job_postings_fact
    WHERE   job_no_degree_mention = TRUE
    ORDER BY company_id)

/*
SELECT *
FROM (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH from job_posted_date) = 1
    ) AS january_jobs;


WITH january_jobs AS (
    SELECT *
)


SELECT  
    CASE
        WHEN salary_year_avg < 60000 THEN 'Low Salary'
        WHEN salary_year_avg BETWEEN 60000 AND 80000 THEN 'Standard'
        ELSE 'High Salary'
    END AS salary_category,
    *
FROM 
    job_postings_fact
WHERE
    (salary_year_avg IS NOT NULL) AND
    job_title_short = 'Data Analyst'    
ORDER BY salary_year_avg
LIMIT 150000


SELECT  
    COUNT(job_id) AS number_of_jobs,
    
    CASE
        WHEN job_location = 'New York, NY' THEN 'Local'
        WHEN job_location = 'Anywhere' THEN 'Remote'
        ELSE 'Onsite'
    END AS location_category
FROM 
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY location_category
*/