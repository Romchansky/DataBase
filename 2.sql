USE initDB;

SELECT p.Name_project, SUM(d.salary) AS cost_project
FROM projects p
INNER JOIN dev_projects dp ON p.id_project = dp.id_project
INNER JOIN developers d ON d.id_dev = dp.id_dev
GROUP BY p.Name_project
ORDER BY cost_project DESC
LIMIT 1;
