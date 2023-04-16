Use world;
SELECT country.Name, city.Name, city.Population
FROM country JOIN city ON country.Code = city.CountryCode and country.Code = "BGR";
SELECT country.Name as "Country" , city.Name as "Capital"
FROM country JOIN city On country.Capital= city.ID and country.Continent = "Europe" ORDER BY country.Name asc;

SELECT country.Name as "Country", country.capital as "Capital", country.Population as "CountryPopulation",city.Population as CityPopulation
FROM country 
JOIN city on country.Capital = city.ID and city.Population
WHERE country.Name  = "Malta" ;

SELECT country.Name as "Country" , language as "countrylanguage"
FROM country JOIN countrylanguage On country.Code= Countrylanguage.countryCode 
WHERE country.Name like 'Australia' ;


SELECT Region as "Country" , language as "countrylanguage"
FROM Country JOIN countrylanguage On country.Code= Countrylanguage.countryCode 
WHERE region like 'Caribbean' ;

sELECT country.name as 'Country Name', Population as "Country_Population" , countrylanguage.Percentage as "language_Percentage" , round((country.population * countrylanguage.Percentage )/ 100)  as "All"
FROM Country JOIN countrylanguage On  country.Code= Countrylanguage.countryCode 
Where Language like 'Bulgariana'





