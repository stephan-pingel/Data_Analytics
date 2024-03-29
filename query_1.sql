--What are the top paying jobs for my role?

WITH job_state_table AS (
    SELECT
        *,
        REVERSE(SUBSTRING(REVERSE(job_postings_fact.job_location),1, 2)) AS job_state
    FROM job_postings_fact
    FULL OUTER JOIN company_dim ON job_postings_fact.company_id=company_dim.company_id
)

SELECT 
    job_title_short,
    name,
    job_location,
    job_country,
    salary_year_avg,
    REVERSE(SUBSTRING(REVERSE(job_state_table.job_location),1, 2)) AS job_state
FROM job_state_table
WHERE 
    salary_year_avg IS NOT NULL AND
    job_title_short = 'Data Analyst' AND
    (job_state = 'FL' OR job_work_from_home = TRUE)
ORDER BY salary_year_avg DESC
LIMIT 10

-- There are no job postings listed for South Dakota, so I chose Florida.