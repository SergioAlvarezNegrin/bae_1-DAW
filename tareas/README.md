# _Base de datos de canciones_

## _Primer paso:_ crear el archivo y la tabla

Hago el archivo de sqlite con:

```bash
sqlite3 canciones.db
```

Y genero la tabla con:

```sql
CREATE TABLE canciones (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    duracion INTEGER NOT NULL,
);
```

---

## _Segundo paso:_ insertar las canciones

Inserto las canciones con:

```sql
INSERT INTO canciones (nombre, duracion)
VALUES ('nombre de la cancion', 'duracion de la cancion');
```

---

## _Tercer paso:_ filtrado y modificado de canciones

Para modificar aquellas canciones terminadas en 's' tendremos que ejecutar el siguiente comando:

```sql
UPDATE canciones
SET duracion = 600
WHERE nombre LIKE '%S';
```

Para filtrar las canciones con una duracion igual o mayor a 3 minutos (180 segundos) tendremos que ejecutar:

```sql
SELECT * FROM canciones WHERE duracion >= 180;
```

Para la consulta de las canciones que su nombre tengan la palabra 'love' usaremos:

```sql
SELECT * FROM canciones WHERE nombre LIKE '%love%';
```

Por último para la consulta con duracion mayor a 2 minutos y medio, y que nos de la media aritmética de esas canciones tendremos que ejecutar:

```sql
SELECT AVG(duracion) FROM canciones WHERE duracion > 150;
```
