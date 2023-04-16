SELECT * FROM world.country; -- заявка, с която да изведете на екрана всички държави.
SELECT * FROM world.city; --  заявка, с която да изведете на екрана всички градове.

SELECT * 
FROM world.country
Where Population > 10000000;   -- заявка, с която да изведете на екрана държави с население по- голямо от 10 милиона.

SELECT * 
FROM world.country
Where Population < 5000000; -- която да изведете на екрана държави с население по- малко от 5 милиона.

SELECT * 
FROM world.country
Where Population BETWEEN 1000000 and 2000000; -- заявка, с която да изведете на екрана  държави с население между 10 и 20 милиона.

SELECT * 
FROM world.country
Where Continent like 'Europe';	-- заявка, с която да изведете на екрана  всички държави в Европа.

SELECT * 
FROM world.country
Where Continent like 'Asia' and 'Europe';--  заявка, с която да изведете на екрана  всички държави в Европа и Азия.

SELECT * 
FROM world.country
Where SurfaceArea > 30000; -- заявка, с която да изведете на екрана  всички държави с площ над 30000.

SELECT * 
FROM world.country
Where Continent like 'Europe'; -- заявка, с която да изведете на екрана  имената на всички държави в Европа

SELECT * 
FROM world.country
Where Population > 10000000;   -- заявка, с която да изведете на екрана държави с население по- голямо от 10 милиона.
						