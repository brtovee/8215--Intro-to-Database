/*
Created: 2018-03-02
Modified: 2018-03-02
Project: Lab6a
Model: PostgreSQL 9.5
Database: PostgreSQL 9.5
Author:Bruce Tovee
Date Created:2018-03-02
File Name: Lab6a.DDL
*/


-- Create tables section -------------------------------------------------

-- Table country_t
DROP TABLE IF EXISTS Country_t;
CREATE TABLE Country_t(
  CountryCode Character varying(3) NOT NULL,
  CountryName  Character varying,
  CountryPopulation  Integer
)
;

-- Add keys for table country_t

ALTER TABLE  Country_t  ADD CONSTRAINT  Key1  PRIMARY KEY ( CountryCode )
;

-- Table city_t
DROP TABLE IF EXISTS City_t;
CREATE TABLE City_t(
  CityID  Integer NOT NULL,
  CityName  Character varying,
  CityPopulation  Integer,
  CountryCode  Character varying(3) NOT NULL
)
;

-- Add keys for table city_t

ALTER TABLE  City_t  ADD CONSTRAINT  Key2  PRIMARY KEY ( CityID , CountryCode )
;
-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE  City_t  ADD CONSTRAINT  Relationship1  FOREIGN KEY ( CountryCode ) REFERENCES  Country_t  ( CountryCode ) ON DELETE NO ACTION ON UPDATE NO ACTION
;




