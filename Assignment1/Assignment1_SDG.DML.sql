/*
File Name: Assignment1_SDG.DML
Authors: Bruce Tovee, Johnathan Gonzalez
Team Name: Team J-uce
Date Created: 2018-02-14
*/

DELETE FROM Indicator_t;

INSERT INTO Indicator_t( Goal, Target, IndicatorRef, IndicatorID, IndicatorDescription) VALUES( 1, '1.1', '1.1.1', 'C010101', 'Proportion of population below the international poverty line, by sex, age, employment status and geographical location (urban/rural)' );

DELETE FROM Series_t;

INSERT INTO Series_t(SeriesCode, SeriesType, SeriesDescription) VALUES('SI_POV_DAY1', 'SD', 'Proportion of population below the international poverty line of US$1.90 per day');
INSERT INTO Series_t(SeriesCode, SeriesType, SeriesDescription) VALUES('SI_POV_EMP1', 'SD', 'Proportion of employed population below the international poverty line of US$1.90 per day (the working poor)');