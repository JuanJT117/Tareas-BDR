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
		co_id INT AUTO_INCREMENT PRIMARY KEY,
	 fecha_id INT(11) NOT NULL ,
     hora TIME,
     aco VARCHAR(50),
     ajm VARCHAR(50),
     ati VARCHAR(50),
     bju VARCHAR(50),
     cam VARCHAR(50),
     cca VARCHAR(50)
	);

CREATE TABLE dioxido_de_azufre (
		so2_id INT AUTO_INCREMENT PRIMARY KEY,
	 fecha_id INT(11) NOT NULL,
     hora TIME,
     aco VARCHAR(50),
     ajm VARCHAR(50),
     ati VARCHAR(50),
     bju VARCHAR(50),
     cam VARCHAR(50),
     cca VARCHAR(50)
	);

CREATE TABLE dioxido_de_nitrogeno (
		no2_id INT AUTO_INCREMENT PRIMARY KEY,
	 fecha_id INT(11) NOT NULL,
     hora TIME,
     aco VARCHAR(50),
     ajm VARCHAR(50),
     ati VARCHAR(50),
     bju VARCHAR(50),
     cam VARCHAR(50),
     cca VARCHAR(50)
	);

CREATE TABLE ozono (
		o3_id INT AUTO_INCREMENT PRIMARY KEY,
	 fecha_id INT(11) NOT NULL,
     hora TIME,
     aco VARCHAR(50),
     ajm VARCHAR(50),
     ati VARCHAR(50),
     bju VARCHAR(50),
     cam VARCHAR(50),
     cca VARCHAR(50)
	);

CREATE TABLE fecha (
		fecha_id INT AUTO_INCREMENT PRIMARY KEY,
	 dia INT, mes VARCHAR(15), año YEAR(4)
	);
drop table estacion;
CREATE TABLE estacion (
		estacion_id INT AUTO_INCREMENT PRIMARY KEY,
	 nombre VARCHAR(50), latitud FLOAT, longitud FLOAT
	);

CREATE TABLE poblacion (
		poblacion_id INT AUTO_INCREMENT PRIMARY KEY,
	 fecha_id INT(11) NOT NULL, genero VARCHAR(15), edad INT(3), numero_habitantes INT
	);

INSERT INTO dioxido_de_azufre (so2_id, fecha_id, hora, aco, ajm, ati, bju, cam, cca) VALUES
(1,1,06,52,52,52,52,52,35),
(2,2,07,4,4,4,8,4,4),
(3,3,08,9,9,9,9,9,56),
(4,4,09,68,68,68,89,68,87),
(5,5,10,58,4,84,9,58,21),
(6,6,11,41,5,41,8,9,36),
(7,7,12,8,14,9,8,8,44),
(8,8,13,41,8,8,41,8,5),
(9,9,14,84,41,5,8,5,5),
(10,10,15,78,78,21,8,4,4),
(11,11,16,8,87,4,84,87,4),
(12,12,17,8,4,58,8,4,69),
(13,13,18,78,8,54,5,5,8),
(14,14,19,8,8,1,84,8,8),
(15,15,20,65,41,65,65,65,5),
(16,16,21,4,84,4,84,4,14),
(17,17,22,8,84,8,84,8,85),
(18,18,23,58,58,58,84,58,5),
(19,19,00,1,1,1,1,1,54),
(20,20,01,30,30,30,30,30,8);


INSERT INTO dioxido_de_nitrogeno (no2_id, fecha_id, hora, aco, ajm, ati, bju, cam, cca) VALUES
(1,1,06,39,85,48,31,51,33), 
(2,2,07,35,23,45,32,44,33), 
(3,3,08,33,56,43,26,38,33),
(4,4,09,31,94,39,27,36,37),
(5,5,10,28,12,27,34,37,36),
(6,6,11,23,47,22,32,35,29),
(9,9,14,19,15,28,41,31,32),
(10,10,15,14,14,38,49,33,41),
(11,11,16,11,18,42,41,41,34),
(12,12,17,9,16,35,24,39,22),
(13,13,18,9,2,14,14,23,18),
(14,14,19,8,4,10,11,19,20),
(15,15,20,6,25,9,8,12,18),
(16,16,21,8,36,7,6,10,15),
(17,17,22,8,5,4,6,8,12),
(18,18,23,12,98,7,8,11,13),
(19,19,00,26,6,17,31,30,18),
(20,20,01,26,6,17,15,30,9);

INSERT INTO ozono (o3_id, fecha_id, hora, aco, ajm, ati, bju, cam, cca) VALUES
(1,1,1,17,1,11,1,10,16),
(2,2,2,20,2,7,1,9,21),
(3,3,3,18,3,9,1,6,20),
(4,4,4,21,2,6,2,4,14),
(5,5,5,20,10,1,2,4,12),
(6,6,6,22,12,1,1,7,10),
(7,7,7,19,7,1,1,11,6),
(9,9,9,17,11,3,8,15,8),
(10,10,10,48,21,25,21,39,34),
(11,11,11,65,35,58,34,68,57),
(12,12,12,69,53,91,54,94,82),
(13,13,1,68,65,107,62,109,89),
(14,14,2,77,69,116,62,128,81),
(15,15,3,108,65,124,55,133,65),
(16,16,4,131,50,113,47,129,69),
(17,17,5,131,40,86,42,102,64),
(18,18,6,109,31,69,37,83,59),
(19,19,7,58,19,43,15,79,41),
(20,20,8,26,13,23,2,71,16);

INSERT INTO monoxido_de_carbono (co_id, fecha_id, hora, aco, ajm, ati, bju, cam, cca) VALUES
(1,1,1,1.25,0.76,1.78,0.92,0.59,1.18),
(2,2,2,1.49,0.86,1.94,0.99,0.48,1.06),
(3,3,3,1.42,0.72,1.2,1.03,0.46,1.01),
(4,4,4,1.38,0.79,1.19,1.14,1.04,0.8),
(5,5,5,0.86,1.17,1.4,1.16,0.75,0.55),
(6,6,6,0.58,1.28,1.42,0.9,1.35,0.69),
(7,7,7,0.67,1.54,1.35,0.71,1.57,0.63),
(8,8,8,0.75,1.57,1.38,0.6,2.65,0.47),
(9,9,9,0.88,1.44,0.88,1.01,1.46,0.44),
(10,10,10,0.83,1.33,0.76,1.27,0.58,0.45),
(11,11,11,0.78,1.09,0.84,1.02,0.41,0.62),
(12,12,12,0.63,0.8,0.9,0.71,0.38,0.71),
(13,13,1,0.32,0.53,0.51,0.57,0.22,0.64),
(14,14,2,0.28,0.42,0.31,0.59,0.14,0.61),
(15,15,3,0.22,0.37,0.12,0.5,0.02,0.53),
(16,16,4,0.13,0.27,0.08,0.43,0.02,0.38),
(17,17,5,0.04,0.14,0.03,0.28,0,0.31),
(18,18,6,0.07,0.14,0.06,0.27,0.26,0.42),
(19,19,7,0.24,0.71,0.48,0.43,0.5,1.1),
(20,20,8,0.28,1.02,0.89,0.5,0.69,1.32);

INSERT INTO estacion (estacion_id, nombre, latitud, longitud) VALUES
(1,'aco',493306.81,2154864.72),
(2,'ajm',500401.60,2148575.86),
(3,'ati',489589.99,2141041.91),
(4,'bju',481258.79,2150827.26),
(5,'cam',477734.49,2155061.47),
(6,'cca',478957.15,2142753.78);

INSERT INTO poblacion (poblacion_id, fecha_id, genero, numero_habitantes) VALUES
(1,1,1,254865),
(2,2,1,456786),
(3,3,1,658707),
(4,4,1,860628),
(5,5,1,1062549),
(6,6,1,1264470),
(7,7,1,1466391),
(8,8,1,1668312),
(9,9,1,1870233),
(10,10,1,2072154),
(11,11,1,2274075),
(13,13,1,2677917),
(14,14,1,2879838),
(15,15,1,3081759),
(16,16,1,3283680),
(17,17,1,3485601),
(18,18,1,3687522),
(19,19,1,3889443),
(21,1,2,214865),
(22,2,2,416786),
(23,3,2,618707),
(24,4,2,820628),
(25,5,2,1022549),
(26,6,2,1224470),
(27,7,2,1426391),
(28,8,2,1628312),
(29,9,2,1830233),
(30,10,2,2032154),
(31,11,2,2234075),
(32,12,2,2435996),
(33,13,2,2637917),
(34,14,2,2839838),
(35,15,2,3041759),
(36,16,2,3243680),
(37,17,2,3445601),
(38,18,2,3647522),
(39,19,2,3849443),
(40,20,2,4051364);

INSERT INTO fecha (fecha_id, dia, mes, año) VALUES
(1,1,'enero',2021),
(2,2,'febrero',2021),
(3,3,'marzo',2021),
(4,4,'abril',2021),
(5,5,'mayo',2021),
(6,6,'junio',2021),
(7,7,'julio',2021),
(8,8,'agosto',2021),
(9,9,'septiembre',2021),
(10,10,'octubre',2021),
(11,11,'noviembre',2021),
(12,12,'diciembre',2021),
(13,13,'enero',2022),
(14,14,'febrero',2022),
(15,15,'marzo',2022),
(16,16,'abril',2022),
(17,17,'mayo',2022),
(18,18,'junio',2022),
(19,19,'julio',2022);