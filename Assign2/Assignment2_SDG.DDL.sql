/*
File Name: Assignment2_SDG.DDL
Authors Bruce Tovee
Date Created: 2018-03-28
*/

DROP TABLE IF EXISTS Poverty_t;
DROP TABLE IF EXISTS Indicator_t;
DROP TABLE IF EXISTS Country_t;
DROP TABLE IF EXISTS Series_t;
DROP TABLE IF EXISTS Sex_t;
DROP TABLE IF EXISTS Age_t;

DROP INDEX IF EXISTS Country_Index;
DROP INDEX IF EXISTS Poverty_Index;

DROP VIEW IF EXISTS PovertyAgeGroup_View;

CREATE TABLE Indicator_t(
	Goal VARCHAR(5),
	Target VARCHAR(3),
	IndicatorRef VARCHAR(10),
	IndicatorID VARCHAR(10),
	IndicatorDescription VARCHAR,
	CONSTRAINT Indicator_PK PRIMARY KEY(IndicatorID)
);

CREATE TABLE Sex_t(
	Sex VARCHAR(50),
	CONSTRAINT Sex_PK PRIMARY KEY(Sex)
);
CREATE TABLE Age_t(
	AgeGroup VARCHAR,
	AgeID VARCHAR(4),
	CONSTRAINT Age_PK PRIMARY KEY(AgeGroup)
);

CREATE TABLE Country_t(
	CountryOrAreaCode VARCHAR,
	CountryOrAreaName VARCHAR
);


CREATE TABLE Series_t(
	SeriesCode VARCHAR(15),
	SeriesType VARCHAR(5),
	SeriesDescription VARCHAR,
	CONSTRAINT Series_PK PRIMARY KEY(SeriesCode)
);


CREATE TABLE Poverty_t(
	IndicatorID VARCHAR(10),
	SeriesCode VARCHAR(15),
	CountryOrAreaCode VARCHAR,
	AgeGroup VARCHAR,
	Sex VARCHAR(50),
	"2016" DECIMAL(8,3),
	FN VARCHAR
);

--13
CREATE INDEX Country_Index
ON Country_t (CountryOrAreaCode, CountryOrAreaName);

CREATE INDEX Poverty_Index
ON Poverty_t (CountryOrAreaCode, AgeGroup, Sex, "2016");

--14
CREATE VIEW PovertyAgeGroup_View AS
SELECT DISTINCT
	Poverty_t.CountryOrAreaCode AS "Country Code",
	count(Age_t.AgeGroup) AS "Age Group Count"
FROM
	Poverty_t JOIN Age_t
ON
	Poverty_t.AgeGroup = Age_t.AgeGroup
WHERE
	Poverty_t.Sex = 'Male'
GROUP BY
	Poverty_t.CountryOrAreaCode
HAVING
	Poverty_t.CountryOrAreaCode LIKE 'C%';
