CREATE TABLE nombres (
    id INTEGER PRIMARY KEY,
    nombre TEXT
);
CREATE TABLE apellidos (
    id INTEGER PRIMARY KEY,
    nombre TEXT
);
INSERT INTO nombres (id, nombre) VALUES (1, 'Rosa'), (2, 'Carla'), (3, 'Pedro'), (5, 'Sergio');
INSERT INTO apellidos (id, nombre) VALUES (1, 'Morales'), (2, 'Pérez'), (4, 'Díaz'), (5, 'Álvarez');
SELECT nombres.id AS id, nombres.nombre AS nombre, apellidos.nombre AS nombre FROM nombres INNER JOIN apellidos ON nombres.id = apellidos.id;

-- No aparecen los nombres y apellidos de los id 3 y 4 ya que cuando haces la consulta y juntas las tablas, no comparten dichos id en ambas --