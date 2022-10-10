# Universidad Autonoma de Nuevo León
# Facultad de Ciencias Fisico Matematicas
# Bases de Datos Relacionables
## Tarea 4

### [4 puntos] Crea tu base de datos y tablas correspondientes a partir de tus tareas de los modelos e-r y relacional

#### se elimina base de datos con mismo nombre, de existir         ####

drop database if exists contaminacion_ambiental_y_poblacion;

#### se crea la Base de datos                                      ####
create database contaminacion_ambiental_y_poblacion;
use contaminacion_ambiental_y_poblacion;

#### se crean las tablas que integraran la base de datos           ####

/*se modifica la tabla de contaminante por cada una del los 
ademas se considerara la fecha dentro de cada toma de muestra de 
cada contamianante asi como la estacion de la que se extrajo la
muestra
);*/

#### se crean las tablas ####

create table monoxido_de_carbono (id_co int auto_increment primary key,
 fecha date, hora time, aco int, ajdioxido_de_azufrem int, ati int, bju int, cam int, cca int,
 cho int, cua int, cut int, fac int, far int, hgm int, inn int,
 izt int, lla int, lpr int, mer int, mgh int, mon int, mpa int,
 nez int, ped int, sac int, sag int, sfe int, sja int, tah int,
 tla int, tli int, aux int, uiz int, vif int, xal int
);

create table dioxido_de_azufre (id_so2 int auto_increment primary key,
 fecha date, hora time, aco int, ajm int, ati int, bju int, cam int, cca int,
 cho int, cua int, cut int, fac int, far int, hgm int, inn int,
 izt int, lla int, lpr int, mer int, mgh int, mon int, mpa int,
 nez int, ped int, sac int, sag int, sfe int, sja int, tah int,
 tla int, tli int, aux int, uiz int, vif int, xal int
);

create table dioxido_de_nitrogeno (id_no2 int auto_increment primary key,
 fecha date, hora time, aco int, ajm int, ati int, bju int, cam int, cca int,
 cho int, cua int, cut int, fac int, far int, hgm int, inn int,
 izt int, lla int, lpr int, mer int, mgh int, mon int, mpa int,
 nez int, ped int, sac int, sag int, sfe int, sja int, tah int,
 tla int, tli int, aux int, uiz int, vif int, xal int
);

create table ozono (id_o3 int auto_increment primary key,
 fecha date, hora time, aco int, ajm int, ati int, bju int, cam int, cca int,
 cho int, cua int, cut int, fac int, far int, hgm int, inn int,
 izt int, lla int, lpr int, mer int, mgh int, mon int, mpa int,
 nez int, ped int, sac int, sag int, sfe int, sja int, tah int,
 tla int, tli int, aux int, uiz int, vif int, xal int
);

create table fecha (id_fecha int auto_increment primary key,
 dia int, mes varchar(15), año year(4)
);

create table estacion (id_estacion int auto_increment primary key,
 nombre varchar(50), latitud float(6,2), longitud float(6,2)
);

create table poblacion (id_poblacion int auto_increment primary key,
 fecha date, genero varchar(15), edad int(3), numero_habitantes int
);
 

### [4 puntos] Incluye al menos 20 registros en tu base de datos, Sube tu archivo de creación de base de datos a tu repositorio con un nombre claro




### [2 puntos] Tu archivo se ejecuta completamente y sin ningún error en su SGBD correspondiente durante la siguiente sesión en vivo
