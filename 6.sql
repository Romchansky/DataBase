USE initDB;

SELECT *, AVG(d.salary)
FROM projects p, developers d, dev_projects dp
WHERE d.id_dev = dp.id_dev 
AND p.id_project = dp.id_project 
AND p.id_project
IN (SELECT id_project FROM projects 
WHERE cost IN (SELECT MIN(cost) FROM projects));
