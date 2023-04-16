-- Намерете страната с най-малобройно население
SELECT  Name,Population
FROM country
WHERE Population=(SELECT min(Population) from country);

-- Намерете страната с най-малка площ в Европа
SELECT Name,surfaceArea
FROM country
WHERE surfaceArea=(SELECT min(surfaceArea) FROM country WHERE continent like 'Europe');

-- Намерете страната с най-нисък БВП в Азия
SELECT Name,GNP
FROM country
WHERE GNP=(SELECT min(GNP) FROM country WHERE continent like 'Asia');

-- Намерете най-малката по площ държава започваща с “А”
SELECT Name,surfaceArea
FROM country
WHERE surfaceArea=(SELECT min(surfaceArea) FROM country WHERE Name like 'A%');

-- Намерете най-малката по площ страна с население между 5 и 10 милиона
SELECT Name,Population
FROM country
WHERE Population=(SELECT min(Population) FROM country WHERE  Population between  1000000 and 5000000);

-- MAX()
-- Намерете страната с най-голяма площ в Южна Америка
SELECT Name,surfaceArea
FROM country
WHERE surfaceArea=(SELECT max(surfaceArea) FROM country WHERE Continent like 'South America');

-- Намерете страната с най- висока продължителност на живота в света
SELECT Name,LifeExpectancy
FROM country
WHERE LifeExpectancy=(SELECT max(LifeExpectancy) FROM country );

--  Намерете монархията с най-многобройно население
SELECT Name,GovernmentForm,Population
FROM country
WHERE Population=(SELECT max(Population) FROM country WHERE GovernmentForm like 'Monarchy' );

-- Намерете държавата с най-висок БВП в Европа, но не е в Източна Еврова
SELECT Name,GNP
FROM country
WHERE GNP=(SELECT max(GNP) FROM country WHERE Continent like  'Europe' and Region not like 'Eastern Europe' );

-- Намерете най-голямата по площ държава, която се е обявила независимост след 1950 г.
SELECT Name,SurfaceArea,IndepYear
FROM country
WHERE SurfaceArea=(SELECT max(SurfaceArea) FROM country WHERE IndepYear > 1950 );

-- AVG
-- Намерете колко средно е продължителността на живот в света.
SELECT avg(LifeExpectancy)
FROM country;

-- Намерете колко средно е продължителността на живот в Азия
SELECT avg(LifeExpectancy)
FROM country
WHERE Continent like 'Asia';

--  Намерете колко средно е БВП на държавите в Европа
SELECT avg(GNP)
FROM country
WHERE Continent like 'Europe';

-- Намерете колко средно е площта на държавите в Карибите
SELECT avg(SurfaceArea)
FROM country
WHERE Region like 'Caribbean';

-- Намерете колко средно е броят на населението на държавите с площ над 300 хил кв.км
SELECT avg(Population)
FROM country
WHERE SurfaceArea > 300000;

-- SUM()
-- Намерете площта на Европа.
SELECT sum(SurfaceArea)
FROM country
WHERE Continent like 'Europe';

-- Намерете БВП на карибския регион
SELECT sum(GNP)
FROM country
WHERE Region like 'Caribbean';

-- Намерете броя хора, които живеят в държава, чието име е с 5 букви
SELECT sum(Population)
FROM country
WHERE Name like '_____';

-- Намерете броя хора, които живеят в някаква форма на монархия
SELECT sum(Population)
FROM country
WHERE GovernmentForm like '%Monarchy%';

-- Намерете броя хора, които живеят в държави с население под 3 млн.
SELECT sum(Population)
FROM country
WHERE Population < 3000

















