import csv

# CONSTANTES
TOTAL_CLIENTES = 1000
EDAD_MINIMA = 18
EDAD_MAXIMA = 70
EDAD_RANGO = EDAD_MAXIMA - EDAD_MINIMA + 1
EDAD_MULTIPLICADOR = 17
EDAD_INCREMENTO = 13
MODULO_EDAD = 53
CODIFICACION = 'utf-8-sig'
DELIMITADOR = ','
DOMINIO_CORREO = '@example.com'
NOMBRE_ARCHIVO = 'clientes_1000.csv'

NOMBRES = [
    'Lucas',
    'Sofia',
    'Daniel',
    'Lucia',
    'Hugo',
    'Martina',
    'Pablo',
    'Valeria',
    'Alejandro',
    'Emma',
    'Diego',
    'Carmen',
    'Adrian',
    'Julia',
    'Mario',
    'Paula',
    'Marcos',
    'Alba',
    'Javier',
    'Claudia',
    'Nicolas',
    'Elena',
    'Gabriel',
    'Sara',
    'Mateo',
    'Irene',
    'David',
    'Noa',
    'Manuel',
    'Laura',
    'Alex',
    'Marta',
    'Carlos',
    'Andrea',
    'Ruben',
    'Aitana',
    'Sergio',
    'Nerea',
    'Alvaro',
    'Clara',
]

APELLIDOS = [
    'Garcia',
    'Rodriguez',
    'Gonzalez',
    'Fernandez',
    'Lopez',
    'Martinez',
    'Sanchez',
    'Perez',
    'Gomez',
    'Martin',
    'Jimenez',
    'Ruiz',
    'Hernandez',
    'Diaz',
    'Moreno',
    'Alvarez',
    'Romero',
    'Alonso',
    'Gutierrez',
    'Navarro',
    'Torres',
    'Dominguez',
    'Vazquez',
    'Ramos',
    'Gil',
    'Ramirez',
    'Serrano',
    'Blanco',
    'Molina',
    'Morales',
    'Suarez',
    'Ortega',
    'Delgado',
    'Castro',
    'Ortiz',
    'Rubio',
    'Marin',
    'Sanz',
    'Iglesias',
    'Medina',
    'Cortes',
    'Castillo',
    'Santos',
    'Lozano',
    'Guerrero',
    'Cano',
    'Prieto',
    'Mendez',
    'Cruz',
    'Flores',
]

# GENERACIÓN DE CLIENTES
contador = 0
indice_nombre = 0
indice_apellido = 0

with open(NOMBRE_ARCHIVO, 'w', newline='', encoding=CODIFICACION) as archivo:
    escritor = csv.writer(archivo, delimiter=DELIMITADOR)

    while contador < TOTAL_CLIENTES:
        nombre = NOMBRES[indice_nombre]
        apellido = APELLIDOS[indice_apellido]

        nombre_completo = f'{nombre} {apellido}'

        edad = EDAD_MINIMA + ((contador * EDAD_MULTIPLICADOR + EDAD_INCREMENTO) % EDAD_RANGO)

        correo = f'{nombre.lower()}.{apellido.lower()}{contador + 1}{DOMINIO_CORREO}'

        escritor.writerow([contador + 1, nombre_completo, edad, correo])

        contador += 1
        indice_apellido += 1

        if indice_apellido == len(APELLIDOS):
            indice_apellido = 0
            indice_nombre += 1

        if indice_nombre == len(NOMBRES):
            indice_nombre = 0

print(f'Archivo creado: {NOMBRE_ARCHIVO}')
print(f'Total de clientes generados: {contador}')
