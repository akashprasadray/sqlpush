CREATE DATABASE football;

-- CREATING A TABLE NAME FOOTBALL
CREATE TABLE player_details(
sno INT PRIMARY KEY,
name VARCHAR(50),
club VARCHAR(50)
);

-- INSERTING THE DATA INTO TABLE
INSERT INTO player_details
VALUES
(1, "Lionel Messi", "Inter Miami"),
(2, "Cristiano Ronaldo", "Al Nassar"),
(3, "Neymar Jr", "Santos"),
(4, "Lamine Yamal", "Barcelona"),
(5, "Pedri", "Barcelona"),
(6, "Fermin Lopez", "Barcelona");

-- RETRIEVE DATA 
SELECT * FROM player_details;