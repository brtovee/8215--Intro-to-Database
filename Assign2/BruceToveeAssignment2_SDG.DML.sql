/*
File Name: Assignment2_SDG.DML
Authors Bruce Tovee
Date Created: 2018-03-28
*/
-- 8 a
SELECT DISTINCT
	CountryOrAreaCode AS "Country Code",
	CountryOrAreaName AS "Country Name"
FROM
	Country_t
WHERE
	CountryOrAreaName LIKE 'C%'
ORDER BY
	CountryOrAreaName DESC;

--8 b
SELECT 
	CountryOrAreaCode AS "Country Code",
	"2016"
FROM
	Poverty_t
WHERE 
	"2016" > 0
ORDER BY
	"2016" ASC;

--8 c
SELECT
	CountryOrAreaCode AS "Country Code",
	count(AgeGroup) AS "Age group Count"
FROM
	Poverty_t
GROUP BY
	CountryOrAreaCode
ORDER BY
	CountryOrAreaCode DESC;

-- 8 d
SELECT DISTINCT
	CountryOrAreaCode AS "Country Code",
	Sex AS "Sex"
FROM
	Poverty_T
WHERE
	Sex IN ('Male', 'Female')
ORDER BY
	CountryOrAreaCode DESC
LIMIT 10;

--9 This query shows which country names have a null value in the 2016 column
SELECT DISTINCT
	Country_t.CountryOrAreaName AS "Country Name",
	Poverty_t."2016"
FROM
	Poverty_t LEFT JOIN Country_t
ON
	Poverty_t.CountryOrAreaCode = Country_t.CountryOrAreaCode
WHERE
	"2016" IS NULL;


--10
SELECT 
	CountryOrAreaCode 
FROM 
	Poverty_t
WHERE
	CountryOrAreaCode LIKE 'C%'
UNION
SELECT 
	CountryOrAreaCode 
FROM 
	country_t
WHERE
	CountryOrAreaCode LIKE 'C%'
ORDER BY 
	CountryOrAreaCode;

--11 The purpose of the sub query is to find the max value for 2016 column and then use that max value in the main query
SELECT DISTINCT
	Country_t.CountryOrAreaName AS "Country Name",
	Poverty_t."2016"
FROM
	Poverty_t JOIN Country_t
ON
	Poverty_t.CountryOrAreaCode = Country_t.CountryOrAreaCode
WHERE
	Poverty_t."2016" = (SELECT MAX("2016")
				FROM Poverty_t);

--12 The purpose of this query is to tell you the amount of age groups used for countries starting with a letters c's male population
				
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