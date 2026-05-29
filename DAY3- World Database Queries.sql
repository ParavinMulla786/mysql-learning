USE world;
SHOW TABLES;

SELECT COUNT(*) AS total_cities
FROM city;

SELECT COUNT(*) AS total_countries
FROM country;

SELECT Name, Continent
FROM country;

SELECT Name
FROM city
WHERE CountryCode = 'IND';

SELECT Name, Population
FROM city
WHERE Population BETWEEN 100000000 AND 5000000000;


SELECT Name, Population
FROM city
WHERE CountryCode = 'CHN'
ORDER BY Population DESC;

SELECT SUM(Population) AS total_population
FROM country
WHERE Continent = 'Asia';