/*
File Name: Assignment1_SDG.DDL
Authors: Bruce Tovee, Johnathan Gonzalez
Team Name: Team J-uce
Date Created: 2018-02-14
*/

DROP TABLE IF EXISTS Indicator_t;
CREATE TABLE Indicator_t(
	Goal INTEGER,
	Target VARCHAR(3),
	IndicatorRef VARCHAR(5),
	IndicatorID VARCHAR(7),
	IndicatorDescription VARCHAR,
	CONSTRAINT Indicator_PK PRIMARY KEY(IndicatorID)
);



DROP TABLE IF EXISTS Country_t;
CREATE TABLE Country_t(
	CountryOrAreaCode VARCHAR,
	CountryOrAreaName VARCHAR,
	CONSTRAINT Country_PK PRIMARY KEY(CountryOrAreaCode)
);

DROP TABLE IF EXISTS Series_t;
CREATE TABLE Series_t(
	SeriesCode VARCHAR(11),
	SeriesType VARCHAR(2),
	SeriesDescription VARCHAR,
	CONSTRAINT Series_PK PRIMARY KEY(SeriesCode)
);
	