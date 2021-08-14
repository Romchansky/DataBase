USE initDB;

ALTER TABLE developers ADD COLUMN salary INTEGER;
UPDATE developers SET salary = 3200 WHERE(id_dev = 1);
UPDATE developers SET salary = 500 WHERE(id_dev = 2);
UPDATE developers SET salary = 960 WHERE(id_dev = 3);
UPDATE developers SET salary = 100500 WHERE(id_dev = 4);
UPDATE developers SET salary = 2060 WHERE(id_dev = 5);
UPDATE developers SET salary = 3800 WHERE(id_dev = 6);
UPDATE developers SET salary = 1000 WHERE(id_dev = 7);
UPDATE developers SET salary = 5000 WHERE(id_dev = 8);
UPDATE developers SET salary = 7300 WHERE(id_dev = 9);
UPDATE developers SET salary = 13000 WHERE(id_dev = 10);
UPDATE developers SET salary = 25000 WHERE(id_dev = 11);