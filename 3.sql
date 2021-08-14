USE initDB;

SELECT SUM(d.salary) AS total_java_Dev_salary
FROM developers d
INNER JOIN dev_skills ds ON d.id_dev = ds.id_dev
INNER JOIN skills s ON s.id_skill = ds.id_skill
WHERE s.language = 'Java' ;