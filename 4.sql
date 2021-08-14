USE initDB;

ALTER TABLE projects ADD COLUMN cost INTEGER;
UPDATE projects SET cost = 50000000 WHERE(id_project = 1);
UPDATE projects SET cost = 3700000 WHERE(id_project = 2);
UPDATE projects SET cost =  2000000 WHERE(id_project = 3);
UPDATE projects SET cost = 500000000 WHERE(id_project = 4);
UPDATE projects SET cost = 265000000  WHERE(id_project = 5);
UPDATE projects SET cost =  10000000 WHERE(id_project = 6);
UPDATE projects SET cost =  300000000 WHERE(id_project = 7);