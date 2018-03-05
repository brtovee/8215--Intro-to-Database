SELECT * FROM Practice WHERE Part ='BOLT';
-- 3 Rows
--Query 1.
SELECT * FROM Practice WHERE Part ='SCREW';
-- BRASS,STEEL,ALUMINIUM


SELECT * FROM Practice WHERE Material = 'STEEL';
-- 4 Rows
--Query 2.
SELECT * FROM Practice WHERE Material = 'BRASS';
-- BOLT, NUT, SCREW, WASHER

--Query 3.
SELECT * FROM Practice WHERE Part = 'SCREW' OR Part = 'WASHER';
--SCREW - BRASS,STEEL,ALUMINIUM
--WASHER - BRASS STEEL,ALUMINIUM

SELECT COUNT(*) FROM Practice WHERE Material = 'ALUMINIUM';
-- 4
--Query 4.
SELECT COUNT(*) FROM Practice WHERE Material = 'STEEL';
 --4

SELECT Part, Material FROM Practice WHERE Material != ('ALUMINIUM');
--Query 5.
SELECT * FROM Practice WHERE Material != ('BRASS');
SELECT * FROM Practice

/**
SELECT * FROM Practice;
-- all columns because of asterisk
-- all rows because there is no WHERE filtering for rows
--12 rows and 2 columns - all rows and all columns
Select Part FROM Practive;
--only one column because asterist replace with colmn name PART
--all rows because there is no WHERE filtering for rows
--12 rows and 1 columns(PArt) - all rows and all columns
**/

