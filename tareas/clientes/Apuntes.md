CREATE TABLE clients (
id INTEGER PRIMARY KEY,
name TEXT,
securitycard_fk INTEGER
);

CREATE TABLE scards (
id INTEGER PK,
code INTEGER UNIQUE
);

ALTER TABLE clients ADD CONSTRAINT "clients_securitycard_fk" FOREIGN KEY securitycard_fk REFERENCES scards.id;

<!--CHECK (EXPRESION) después de constraint sirve para añadir una condición a cumplir-->
