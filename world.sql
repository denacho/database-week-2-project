WORLD:

--What's the population of the world ?--
SELECT MAX(population) FROM country;

--What is the name and the population of the most populated city in India?--
SELECT name,population FROM country WHERE name = 'India';

--Find which countries do not have a capital.--
SELECT * FROM country WHERE capital IS NULL;

--Which country has the lowest population? List all if more than one--
SELECT * FROM country WHERE population = (SELECT MIN(POPULATION)
FROM COUNTRY); 

--What are the names of all the cities in Vietnam?--
SELECT name FROM city WHERE CountryCode = 'VNM';

--Find the average life expectancy per continent.--
SELECT AVG(LifeExpectancy), continent FROM Country GROUP BY Continent;


--Find the name and population of each USA district.--
SELECT name, population, district FROM city WHERE CountryCode = 'USA';

--Find the name of the cities that appear more than 2 times in the table.--


--Find all the names of the districts in the Netherlands. (names should appear only once)--
SELECT DISTINCT district FROM city WHERE countrycode = 'NLD';
