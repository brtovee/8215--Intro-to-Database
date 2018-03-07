--Exercise 1
SELECT
	Country.Code,
	Country.Name,
	City.Name
FROM
	Country INNER JOIN City
ON
	Country.Code = City.CountryCode;
	
--Exercise 2
SELECT
	Country.Code,
	Country.Name,
	City.Name
FROM
	Country LEFT JOIN City
ON
	Country.Code = City.CountryCode
WHERE
	City.Name IS NULL;

--Exercise 3
SELECT
	Country.Code,
	Country.Name
FROM
	CountryLanguage RIGHT JOIN Country
ON
	Country.Code = CountryLanguage.CountryCode
WHERE
	CountryLanguage.Language IS NULL;





