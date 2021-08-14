USE initDb;

SELECT Name_project, cost FROM projects
WHERE cost = (SELECT MIN(cost) FROM projects)
LIMIT 1;
