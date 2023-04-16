SELECT * FROM world.city
ORDER BY Population desc; -- всички градове от най - населения към най-малко населения.

SELECT Name ,
Population FROM world.country 
Where Region like 'Caribbean' ORDER BY Name asc;  -- държавите от карибския регион и ги подредете по азбучен ред.-- Изведете само името на държавата и региона.

SELECT Name ,
SurfaceArea FROM world.country ORDER BY SurfaceArea desc LIMIT 1 ; -- е държавата с най - голяма площ в света.

SELECT Name ,
SurfaceArea FROM world.country where Continent like 'Europe' ORDER BY SurfaceArea asc LIMIT 5 ; -- 5-те държави в Европа с най-малка площ.

SELECT Name ,LifeExpectancy , Population FROM world.country Where LifeExpectancy>75 and Population> 30000000;  -- държавите със средна продължителност на живот над 75г. И население по - голямо от 30 млн. Изведете само името на държавата, средна продължителност на живот и население


SELECT * FROM world.countrylanguage Where Percentage >90; -- всички езици, които се говорят от над 90% от населението в съответната страна.

SELECT Name , Continent,Region,LifeExpectancy FROM world.country Where LifeExpectancy < "40"; -- Намерете страните със средна продължителност на живота под 40 г. Покажете името на страната, континента, региона, и средна продължителност на живота.

SELECT CountryCode , Language  FROM world.countrylanguage  where Language like 'Bulgariana'; -- кодовете на страните, в които се говори български език

 SELECT Name ,Region FROM world.country WHERE Region  like 'Easten Europe ' or Region like 'Souuthern Surope' ORDER BY Name asc ;-- страните от Източна и Южна Европа и ги подредете по азбучен ред.
 
SELECT Name ,GNP Region FROM world.country WHERE Region like 'North Europe' ORDER BY GNP desc Limit 1;-- страна в Южна Европа има най - висок БВП.

 SELECT NAme , Population FROM world.city ORDER BY Population desc Limit 10; -- 10те най - многолюдни града в света.
 
   SELECT Name FROM world.country ORDER BY Population/SurfaceArea desc ; -- най - гъсто населената държава.
 