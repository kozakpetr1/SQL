---------------
-- INNER JOIN
---------------
SELECT city.name, country.name
FROM city JOIN country
ON city.country_id = country.id;

---------------
-- LEFT JOIN
---------------
SELECT city.name, country.name
FROM city LEFT JOIN country
ON city.country_id = country.id;

---------------
-- RIGHT JOIN
---------------
SELECT city.name, country.name
FROM city RIGHT JOIN country
ON city.country_id = country.id;

---------------
-- CROSS JOIN
---------------
SELECT city.name, country.name
FROM city CROSS JOIN country;