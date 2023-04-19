-- Намерете държавата с най-голямо население за всеки континент.
SELECT Continent,SurfaceArea, name
FROM country 
JOIN
(SELECT max(SurfaceArea) as maxarea FROM world.country
group by continent) t 
on country.SurfaceArea = t.maxarea;

-- Намерете площта на всички континенти.
SELECT sum(SurfaceArea) , Name as sumarea 
FROM country 
group by SurfaceArea ;

-- Намерете средната продължителност на живот за различните региони на Европа.
SELECT avg(LifeExpectancy) , Region as avgLifeExpectancy
FROM country 
WHERE Continent like 'Europe' group by LifeExpectancy ; 

-- Намерете колко държави има на всеки континент. Подредете низходящо по население.
SELECT count(Name) , Continent as countCountry
FROM country 
group by Continent;

-- Намерете най-малката по население държава за всеки континент.
SELECT Continent,Population, name
FROM country 
JOIN
(SELECT min(Population) as minpopulation FROM world.country
group by continent) b
on country.Population = b.minpopulation;

-- Намерете за всеки район в Аржентина какъв процент от населението на страната живее в него.
Select sum(city.Population),district
FROM city 
JOIN country ON city.countryCode = country.code
Where country.name = 'Argentina'
GROUP BY district ;

-- Напишете заявка, която извежда континентите, чието население е повече от 700 000000 души. Подредете резултата низходящо по населението.
select c.continent, sum(c.Population)
from country c
group by c.continent
having sum(c.Population) >  700000000 
ORDER BY sum(c.Population) ASC ;

 -- Напишете заявка, която извежда континентите, на които средната продължителност на живота е повече от 75 години.
select c.continent, avg(c.LifeExpectancy)
from country c
group by c.continent
having avg(c.LifeExpectancy) >  75 ;

-- Напишете заявка, която извежда езиците, които се говорят в повече от 20 държави (без значение дали е официален езика или не)
 SELECT Language, count(countryCode) AS "Languages"
FROM countrylanguage 
GROUP BY Language
having count(CountryCode) > 20;

-- Изведете формите на държавно управление, за които населението, което управляват е повече от 100млн души. Подредете низходящо по население.
select c.GovernmentForm, sum(c.Population)
from country c
group by c.continent
having sum(c.Population) >  100000000
ORDER BY sum(c.Population) ASC ;

-- Напишете заявка, която да извежда имената на държавите, в които се говорят повече от 10 (десет) езика.
SELECT Name, count(Language) AS "Languages"
FROM countrylanguage JOIN country On CountryCode LIKE code
GROUP BY CountryCode
having count(Language) >  10;

-- Напишете заявка, която да извежда имената на държавите, в които има повече от 3 официални езика
SELECT Name, count(Language) AS "Languages"
FROM countrylanguage JOIN country On CountryCode LIKE code
WHERE IsOfficial LIKE 'T'
GROUP BY CountryCode
having count(Language) >  3