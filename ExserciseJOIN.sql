Use world;
SELECT country.Name, city.Name, city.Population
FROM country JOIN city ON country.Code = city.CountryCode and country.Code = "BGR";
SELECT country.Name as "Country" , city.Name as "Capital"
FROM country JOIN city On country.Capital= city.ID and country.Continent = "Europe" ORDER BY country.Name asc;

SELECT country.Name as "Country", country.capital as "Capital", country.Population as "CountryPopulation",city.Population as CityPopulation
FROM country 
JOIN city on country.Capital = city.ID and city.Population
WHERE country.Name  = "Malta" ;



