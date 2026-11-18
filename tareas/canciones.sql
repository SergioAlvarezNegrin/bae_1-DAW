CREATE TABLE albums(
    id INTEGER PRIMARY KEY,
    name TEXT,
    year TEXT,
    artists_id_fk INTEGER,
    cover TEXT
);

CREATE TABLE artists(
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE songs(
    id INTEGER PRIMARY KEY,
    name TEXT,
    album_id_fk INTEGER,
    duracion INTEGER
);

INSERT INTO albums (id, name, year, artists_id_fk, cover) 
VALUES (1, 'Besos de perro', '2002', Null, 'img/besos de perro.jpg'), 
        (2, 'Do it', '2025', 3, 'img/do it.jpeg'), 
        (3, 'Made', '2016', 2, 'img/made.jpeg'),    
        (4, 'Una semana increible', '2024', 5, 'img/una semana increible.jpeg'), 
        (6, 'Un verano sin ti', '2022', Null, 'img/un verano sin ti.jpeg'), 
        (9, 'Tonight', '2011', 2, 'img/tonight.jpeg');

INSERT INTO artists (id, name) VALUES (1, 'Jason Mraz'), (2, 'BigBang'), (3, 'Stray Kids'), (4, 'Backstreet Boys'), (5, 'La Pantera');

INSERT INTO songs (id, name, album_id_fk, duracion) VALUES (1, 'PINKY PROMISE', 4, 122), (2, 'Tarot', 6, 237), (3, 'Dos Mil 16', 6, 208), (4, 'ASHE', 4, 156), (5, 'AMORTAL', 4, 167), (6, 'NO ES MI VIDA REAL', 4, 129);

-- Albumes con su artista --
--SELECT artists.name, albums.name, albums.year FROM albums INNER JOIN artists ON albums.artists_id_fk = artists.id;--

-- Todos los albums incluyendo los artistas --
--SELECT albums.id, albums.name, albums.year, artists.name FROM albums LEFT JOIN artists ON albums.artists_id_fk = artists.id;--

-- Artista sin album --
--SELECT artists.id, artists.name FROM artists LEFT JOIN albums ON albums.artists_id_fk = artists.id WHERE albums.artists_id_fk is NULL;--

-- Albums sin artista --
--SELECT albums.id, albums.name, albums.year FROM albums LEFT JOIN artists ON albums.artists_id_fk = artists.id WHERE albums.artists_id_fk is NULL;--

-- Albums con artistas, albums sin artistas, artistas sin albums --
--SELECT albums.id, albums.name, albums.year, artists.id, artists.name FROM albums FULL OUTER JOIN artists ON albums.artists_id_fk = artists.id;--

-- Albums sin artistas y artistas sin albums --
--SELECT albums.id, albums.name, albums.year, artists.id, artists.name FROM albums FULL OUTER JOIN artists ON albums.artists_id_fk = artists.id WHERE albums.artists_id_fk is NULL;--