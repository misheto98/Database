SELECT Name 
FROM country 
WHERE Continent like 'Europe' AND Name like 'M%';

SELECT * FROM world.country
WHERE GovernmentForm like "Monarchy";

SELECT country.Name , country.Region 
FROM country 
WHERE Region like "%nesia";

SELECT country.Name 
FROM country 
WHERE Name like "____";

SELECT country.Name,country.Population,country.Continent 
FROM country 
WHERE Name like "%A" and Population > 10000000 and Continent like "%A";

SELECT country.Name,country.Continent
FROM country
WHERE country.Name  like  "B%A";

SELECT country.Name 
WHERE continent like 'Europe' and 'Asia' ORDER BY country.Name asc;

SELECT country.Name, country.Continent
FROM country
WHERE continent IN ('Europe','Asia') 
ORDER BY country.Continent asc;

SELECT * FROM world.countrylanguage
WHERE  Language like 'Spanish' 




 










 



