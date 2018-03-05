--QUERY 1
--1a
SELECT * FROM Part_T;
--1b
SELECT part, material, size, cost FROM Part_T;
--1c
SELECT part, material, cost FROM Part_T;


--QUERY 2
--2a
SELECT part, material, cost FROM Part_T WHERE cost < 1.00;
--2b
SELECT part, size, cost FROM Part_T WHERE cost>2.10;

--QUERY 3
--3a
SELECT AVG(cost) FROM Part_T WHERE material = 'BRASS';
--3b
SELECT AVG(cost) FROM Part_T WHERE part = 'SCREW';

--QUERY 4
--4a
SELECT SUBSTRING(part FROM 1 FOR 3) FROM Part_T;
--4b
SELECT SUBSTRING(material FROM 1 FOR 5) FROM Part_T;

--QUERY 5
--5a
INSERT INTO Part_T(part, material, size, cost) VALUES('NAIL', 'STEEL', 'SMALL', 0.15);
--5b
INSERT INTO Part_T(part, material, size, cost) VALUES('HAMMER', 'STEEL', 'SMALL', 7.15);

