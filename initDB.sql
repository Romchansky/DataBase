DROP DATABASE IF EXISTS initdb;
CREATE DATABASE IF NOT EXISTS initDB;
USE initDB;

CREATE TABLE developers (
id_dev INT NOT NULL AUTO_INCREMENT,
Name_dev VARCHAR(30) NOT NULL,
Age_dev INT(3),
Gender_dev ENUM('male','female'),
PRIMARY KEY (id_dev)
);
 
 CREATE TABLE skills (
 id_skill INT NOT NULL AUTO_INCREMENT,
 Language ENUM('Java','Kotlin','Python','C++','JavaScript'),   
 Level_skill ENUM('Trainee','Junior','Middle','Senior'),
 PRIMARY KEY (id_skill)
 );

CREATE TABLE projects (
id_project INT NOT NULL AUTO_INCREMENT,
Name_project VARCHAR(128) NOT NULL,
Field_of_develops VARCHAR(64) NOT NULL,
PRIMARY KEY (id_project) 
); 
 
 CREATE TABLE companies (
 id_company INT NOT NULL AUTO_INCREMENT,
 Name_company VARCHAR(128),
 City_company VARCHAR(64),
 PRIMARY KEY (id_company)
 );
 
 CREATE TABLE customers(
 id_customer INT NOT NULL AUTO_INCREMENT,
 Name_customer VARCHAR(64) NOT NULL,
 City_customer VARCHAR(64) NOT NULL,
 Industry VARCHAR(64) NOT NULL,
 PRIMARY KEY (id_customer)
 );
 
 CREATE TABLE dev_skills (
 id_dev INT NOT NULL,
 id_skill INT NOT NULL,
 PRIMARY KEY(id_dev, id_skill),
 FOREIGN KEY (id_dev) REFERENCES developers (id_dev),
 FOREIGN KEY (id_skill) REFERENCES skills (id_skill)
 );

CREATE TABLE dev_projects(
id_dev INT NOT NULL,
id_project INT NOT NULL,
PRIMARY KEY(id_dev, id_project),
FOREIGN KEY(id_dev) REFERENCES developers(id_dev),
FOREIGN KEY(id_project) REFERENCES projects(id_project) 
);


CREATE TABLE dev_companies (
id_dev INT NOT NULL,
id_company INT NOT NULL,
PRIMARY KEY(id_dev, id_company),
FOREIGN KEY(id_dev) REFERENCES developers (id_dev),
FOREIGN KEY(id_company) REFERENCES companies (id_company)
);

CREATE TABLE companies_projects (
id_company INT NOT NULL,
id_project INT NOT NULL,
PRIMARY KEY (id_company, id_project),
KEY id_project (id_project),
FOREIGN KEY(id_company) REFERENCES companies (id_company),
FOREIGN KEY(id_project) REFERENCES projects (id_project)
);

CREATE TABLE customers_projects (
id_customer INT NOT NULL,
id_project INT NOT NULL,
PRIMARY KEY (id_customer, id_project),
KEY id_project (id_project),
FOREIGN KEY(id_customer) REFERENCES customers (id_customer),
FOREIGN KEY(id_project) REFERENCES projects (id_project)
);

