SELECT *
FROM december_jobs
LIMIT 5



/*
-- January
CREATE TABLE january_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 1);

-- February
CREATE TABLE february_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 2);

-- March
CREATE TABLE march_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 3);

-- April
CREATE TABLE april_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 4);

-- May
CREATE TABLE may_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 5);

-- June
CREATE TABLE june_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 6);

-- July
CREATE TABLE july_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 7);

-- August
CREATE TABLE august_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 8);

-- September
CREATE TABLE september_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 9);

-- October
CREATE TABLE october_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 10);

-- November
CREATE TABLE november_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 11);

-- December
CREATE TABLE december_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        (EXTRACT(MONTH FROM job_posted_date) = 12);


SELECT 
    company_dim.name,
    EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST') AS job_month
FROM job_postings_fact
INNER JOIN company_dim ON job_postings_fact.company_id=company_dim.company_id
WHERE 
    (job_health_insurance = TRUE) AND
    (EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST') BETWEEN 7 AND 9)

LIMIT 500





AND job_month BETWEEN 7 AND 10
AND (job_month BETWEEN 7 AND 9)
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT

SELECT 
    job_schedule_type,
    ROUND(AVG(salary_year_avg),2) AS avg_yearly_salary,
    AVG(salary_hour_avg)::MONEY AS avg_hourly_salary
FROM job_postings_fact
GROUP BY job_schedule_type


--WHERE 
--    job_posted_date >= 2023-06-01 00:00:00


SELECT 
    COUNT(job_id) AS job_count,
    EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST') AS job_month
FROM job_postings_fact
GROUP BY job_month
ORDER BY job_month

*/

