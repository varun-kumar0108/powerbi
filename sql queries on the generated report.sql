USE hr_dataset;

SELECT*FROM hr;
select*from hr;
 
 ALTER TABLE hr
 CHANGE COLUMN ï»¿id emp_id VARCHAR(20)NULL;
 
 SELECT*FROM hr;
 
 ALTER TABLE hr
 DROP COLUMN birthdate;
 
 SET sql_safe_updates=0;
 
 ALTER TABLE hr
 DROP COLUMN hire_date;
 
SELECT*FROM hr;

SET sql_safe_updates=0;

ALTER TABLE hr
DROP COLUMN termdate;
 
-- classification of number of male and female 
SELECT gender,
    COUNT(*) AS count
FROM hr
GROUP BY gender;

-- Classification based on the race/ethnicity
SELECT race,COUNT(*) AS count
FROM hr
GROUP BY race;

-- employee location- headquarters or remote
SELECT location,COUNT(*) AS count
FROM hr
GROUP BY location;

-- gender distribution across department and job titles
SELECT department,gender,COUNT(*) AS count
FROM hr
GROUP BY department,gender
ORDER BY department;

-- Distribution of job titles 
SELECT jobtitle,COUNT(*) AS count
FROM hr
GROUP BY jobtitle
ORDER BY jobtitle DESC;

SELECT*FROM hr;

-- Location state of the employee
SELECT location_state,COUNT(*) AS count
FROM hr
GROUP BY location_state
ORDER BY count DESC;
