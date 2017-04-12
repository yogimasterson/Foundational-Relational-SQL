-- SUM and COUNT

-- 1. Show the total population of the world.
SELECT SUM(population)
FROM world
-- 2. List all the continents - just once each.

-- 3. Give the total GDP of Africa
SELECT SUM(gdp)
FROM world
  WHERE continent = 'Africa'
-- 4. How many countries have an area of at least 1000000

-- 5. What is the total population of ('Estonia', 'Latvia', 'Lithuania')
SELECT SUM(population)
FROM world
  WHERE name IN ('Estonia', 'Latvia', 'Lithuania')
-- 6. For each continent show the continent and number of countries.

-- 7. For each continent show the continent and number of countries with populations of at least 10 million.
SELECT continent, COUNT(name)
FROM world
  WHERE population >= 10000000
  GROUP BY  continent
-- 8. List the continents that have a total population of at least 100 million.
SELECT DISTINCT continent
FROM world x
WHERE 100000000 <=
  (SELECT SUM(population) FROM world y
  WHERE x.continent = y.continent
  AND population > 0)