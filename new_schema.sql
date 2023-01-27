-- create a database called CATS
DROP SCHEMA IF EXISTS `cats`;
CREATE SCHEMA `cats`;

-- select the newly created database
USE `cats`;

-- create a table for the database
CREATE TABLE IF NOT EXISTS `cats`.`data`(
   `Id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `Name` VARCHAR(255) NULL DEFAULT NULL,
   `Breed` VARCHAR(255) NULL DEFAULT NULL,
   `Age` BIGINT(20) NOT NULL,
   `Country` VARCHAR(255) NULL DEFAULT NULL
);

INSERT INTO data(
    Id, 
    Name, 
    Breed, 
    Age,
    Country
)

VALUES (
    1,
    'Blue',
    'Scottish Fold',
    7,
    'England'	    	
);

INSERT INTO data(
    Id, 
    Name, 
    Breed, 
    Age,
    Country
)

VALUES (
    2,
    'Rocket',
    'Persian',
    3,
    'Iran'	    	
);

INSERT INTO data(
    Id, 
    Name, 
    Breed, 
    Age,
    Country
)

VALUES (
    3,
    '...',
    '...',
    0,
    '...'	    	
)

INSERT INTO data(
    Id, 
    Name, 
    Breed, 
    Age,
    Country
)

VALUES (
    4,
    '...',
    '...',
    0,
    '...'	    	
)

SHOW TABLES;

ALTER TABLE data RENAME COLUMN Id to Cat_id;

ALTER TABLE data DROP COLUMN Country;

SELECT Name FROM data WHERE Cat_id = 3;

INSERT INTO data(Name, Breed, Age) 
VALUES('Monty', 'Tabby', 10)

UPDATE data SET Name = 'Sam' WHERE Cat_id = 4;
UPDATE data SET Breed = 'Munchkin' WHERE Cat_id = 4;
UPDATE data SET Age = 5 WHERE Cat_id = 4;

SELECT * FROM data;

-- add a new column to existing table
            [table-name]    [column-name] [type] [where it goes]
ALTER TABLE data ADD COLUMN Country VARCHAR(255) AFTER Age;

-- now use the preset database called 'world'
USE world;

-- select one column from table
SELECT name FROM world.city WHERE ContryCode = 'HUN';

-- select two columns and concatenat them with additional values
SELECT CONCAT(name, " has ", population, " inhabitants.") FROM world.city WHERE CountyCode = 'HUN';

-- put together in one only column the result of making query to
-- two table at once
SELECT name FROM world.city WHERE CountryCode = 'HUN' UNION ALL SELECT language FROM world.countrylanguage WHERE CountryCode = 'HUN';

-- concatenate the select result with custom separator
SELECT CONCAT_WS(' -> ', name, population) FROM world.city WHERE CountryCode = 'POL';

-- limit how many entries you would like to see
SELECT CONCAT_WS(' -> ', name, population) FROM world.city WHERE CountryCode = 'POL' LIMIT 5;

-- create a view, which is not a table
CREATE VIEW cities_vw AS SEKECT * FROM world.city where CountryCode = 'BRA' LIMIT 50;

-- data to many fields at once
INSERT INTO data(Name, Breed, Age) VALUE('Charlie', 'Ragdoll', 4), ('Draco', 'Maine Coon', 6), ('Peanut', 'Amercian Shorthair', 9);

-- using the CATS database type the command DESC to see all columns and rows details at once
DESC cats.data (or DESC data)

-- use aliases for select
SELECT name AS cat FROM data;
-- or
            alias            alias
SELECT name AS cat, country AS home FROM data;
(3:14 hours of video)
https://www.youtube.com/watch?v=en6YPAgc6WM