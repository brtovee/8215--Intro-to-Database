/*
File Name: Lab6a.DML
Authors: Bruce Tovee
Date Created: 2018-03-02
*/

DELETE FROM Country_t;

INSERT INTO Country_t( CountryCode, CountryName, CountryPopulation) VALUES( 'CAN', 'Canada', 35540419 );
INSERT INTO Country_t( CountryCode, CountryName, CountryPopulation) VALUES( 'GBR', 'United Kingdom', 63181775 );

DELETE FROM City_t;

INSERT INTO City_t(CityID, CityName, CityPopulation, CountryCode) VALUES(1814, 'Winnipeg', 618477, 'CAN');
INSERT INTO City_t(CityID, CityName, CityPopulation, CountryCode) VALUES(1820, 'London', 339917, 'CAN');
INSERT INTO City_t(CityID, CityName, CityPopulation, CountryCode) VALUES(1811, 'Calgary', 767082, 'CAN');

INSERT INTO City_t(CityID, CityName, CityPopulation, CountryCode) VALUES(456, 'London', 7285000, 'GBR');
INSERT INTO City_t(CityID, CityName, CityPopulation, CountryCode) VALUES(462, 'Manchester', 430000, 'GBR');
INSERT INTO City_t(CityID, CityName, CityPopulation, CountryCode) VALUES(464, 'Bristol', 402000, 'GBR');