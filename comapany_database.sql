USE company;

CREATE TABLE Department(DepartmentId INT NOT NULL AUTO_INCREMENT PRIMARY KEY, DepartmentName VARCHAR(500) );

INSERT INTO Department VALUES(1, 'IT');
INSERT INTO Department VALUES(2, 'SUPPORT');
INSERT INTO Department VALUES(3, 'SALES');
INSERT INTO Department VALUES(4, 'PURCHASE');
INSERT INTO Department VALUES(5, 'HR');

CREATE TABLE Employee(EmployeeId INT NOT NULL AUTO_INCREMENT PRIMARY KEY, EmployeeName VARCHAR(500), Department VARCHAR(500), Admission DATE, PhotoFileName VARCHAR(500));

INSERT INTO Employee VALUES(11, 'Marlon Couto Ribeiro', 'IT', '2020-06-01', 'marlon.png');
INSERT INTO Employee VALUES(12, 'Geysa Couto von Krieger', 'PURCHASE', '2022-04-28', 'geysa.png');
INSERT INTO Employee VALUES(13, 'Maria Laura Couto', 'SALES', '2021-09-04', 'laura.png');
INSERT INTO Employee VALUES(14, 'Lazaro de Jesus', 'SUPPORT', '2016-12-13', 'lazaro.png');
INSERT INTO Employee VALUES(15, 'Eliene Medrado', 'HR', '2017-11-09', 'laura.png');
INSERT INTO Employee VALUES(16, 'Aniko Couto-Szalay', 'HR', '2019-03-21', 'aniko.png');
INSERT INTO Employee VALUES(17, 'Beniamin Couto-Szalay', 'SUPPORT', '2021-09-14', 'beniamin.png');
INSERT INTO Employee VALUES(18, 'Konrad Jerzak vel Dobosz', 'IT', '2018-04-15', 'konrad.png');

SELECT * FROM company;
SELECT * FROM company WHERE DepartmentName='IT';
SELECT * FROM company WHERE DepartmentName='HR';
SELECT * FROM company WHERE DepartmentName='SUPPORT';
SELECT * FROM company WHERE DepartmentName='SALES';
SELECT * FROM company WHERE EmployeeName='Marlon Couto';
SELECT * FROM company WHERE PhotoFileName='laura.png';

//inner join
SELECT A.`DepartmentId`, B.`EmployeeName` FROM `Department` AS A 
INNER JOIN `Employee` AS B ON B.`Department` = A.`DepartmentName`

//cross join
SELECT * FROM `Department` CROSS JOIN `Employee`

https://www.guru99.com/joins.html


