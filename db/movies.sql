DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
    movie_id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(30) NOT NULL,
    category VARCHAR(30) NOT NULL,
    length INT NOT NULL
);

INSERT INTO movies (name, category, length) VALUES
    ('Inception', 'Sci-Fi', 148),
    ('The Godfather', 'Crime', 175),
    ('Spirited Away', 'Animation', 125),
    ('Parasite', 'Thriller', 132),
    ('The Dark Knight', 'Action', 152),
    ('Titanic', 'Romance', 195),
    ('The Shawshank Redemption', 'Drama', 142),
    ('Avengers: Endgame', 'Superhero', 181),
    ('Jurassic Park', 'Adventure', 127),
    ('Interstellar', 'Sci-Fi', 169),
    ('Superman', 'Superhero', 150);
