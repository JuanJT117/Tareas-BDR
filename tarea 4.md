# Universidad Autonoma de Nuevo León
# Facultad de Ciencias Fisico Matematicas
# Bases de Datos Relacionables
## Tarea 4

### [4 puntos] Crea tu base de datos y tablas correspondientes a partir de tus tareas de los modelos e-r y relacional

/*
SE ELIMINAN TABLAS DE EXISTIR COMO PRIMER PASO
*/

DROP DATABASE IF EXISTS contaminacion_ambiental_y_poblacion;
DROP TABLE IF EXISTS monoxido_de_carbono;
DROP TABLE IF EXISTS dioxido_de_azufre;
DROP TABLE IF EXISTS dioxido_de_nitrogeno;
DROP TABLE IF EXISTS ozono;

/*
SE CREAN LAS TABLAS CORRESPONDIENTES
*/

CREATE DATABASE contaminacion_ambiental_y_poblacion;
USE contaminacion_ambiental_y_poblacion;

/*
se modifica la tabla de contaminante por cada una del los 
ademas se considerara la fecha dentro de cada toma de muestra de 
cada contamianante asi como la estacion de la que se extrajo la
muestra
*/

CREATE TABLE monoxido_de_carbono (
		id_co INT AUTO_INCREMENT PRIMARY KEY,
	 id_fecha INT(11) NOT NULL,
     hora TIME,
     aco VARCHAR(50),
     ajm VARCHAR(50),
     ati VARCHAR(50),
     bju VARCHAR(50),
     cam VARCHAR(50),
     cca VARCHAR(50)
	);

CREATE TABLE dioxido_de_azufre (
		id_so2 INT AUTO_INCREMENT PRIMARY KEY,
	 id_fecha INT(11) NOT NULL,
     hora TIME,
     aco VARCHAR(50),
     ajm VARCHAR(50),
     ati VARCHAR(50),
     bju VARCHAR(50),
     cam VARCHAR(50),
     cca VARCHAR(50)
	);

CREATE TABLE dioxido_de_nitrogeno (
		id_no2 INT AUTO_INCREMENT PRIMARY KEY,
	 id_fecha INT(11) NOT NULL,
     hora TIME,
     aco VARCHAR(50),
     ajm VARCHAR(50),
     ati VARCHAR(50),
     bju VARCHAR(50),
     cam VARCHAR(50),
     cca VARCHAR(50)
	);

CREATE TABLE ozono (
		id_o3 INT AUTO_INCREMENT PRIMARY KEY,
	 id_fecha INT(11) NOT NULL,
     hora TIME,
     aco VARCHAR(50),
     ajm VARCHAR(50),
     ati VARCHAR(50),
     bju VARCHAR(50),
     cam VARCHAR(50),
     cca VARCHAR(50)
	);

CREATE TABLE fecha (
		id_fecha INT AUTO_INCREMENT PRIMARY KEY,
	 dia INT, mes VARCHAR(15), año YEAR(4)
	);

CREATE TABLE estacion (
		id_estacion INT AUTO_INCREMENT PRIMARY KEY,
	 nombre VARCHAR(50), latitud FLOAT(6,2), longitud FLOAT(6,2)
	);

CREATE TABLE poblacion (
		id_poblacion INT AUTO_INCREMENT PRIMARY KEY,
	 id_fecha INT(11) NOT NULL, genero VARCHAR(15), edad INT(3), numero_habitantes INT
	);

### [4 puntos] Incluye al menos 20 registros en tu base de datos, Sube tu archivo de creación de base de datos a tu repositorio con un nombre claro




### [2 puntos] Tu archivo se ejecuta completamente y sin ningún error en su SGBD correspondiente durante la siguiente sesión en vivo
