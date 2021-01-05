-- display all values in planet table
-- SELECT * from planet;

-- display all values in alien table
-- SELECT * from alien;

-- display all values from both plaaliennet and alien tables 
-- SELECT * FROM alien a JOIN planet p ON a.planet_id= p.id;

-- display minimum values from both planet and alien tables
-- 	   surname
--     first_name
--     last_name
--     poster
--     original_planet = planet.name

SELECT a.surname, a.first_name, a.last_name, a.poster, p.name AS original_planet FROM alien a JOIN planet p ON a.planet_id= p.id;