--What are the most in-demand skills for my roles?
WITH top_paying_jobs AS (
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
    job_id,
    REVERSE(SUBSTRING(REVERSE(job_state_table.job_location),1, 2)) AS job_state
FROM job_state_table
WHERE 
    salary_year_avg IS NOT NULL AND
    job_title_short = 'Data Analyst' --AND
--    (job_state = 'FL' OR job_work_from_home = TRUE)
ORDER BY salary_year_avg DESC

)

SELECT
    skills_dim.skills,
    COUNT(top_paying_jobs.job_id) AS skill_count

FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
GROUP BY skills_dim.skills
ORDER BY skill_count DESC
LIMIT 10