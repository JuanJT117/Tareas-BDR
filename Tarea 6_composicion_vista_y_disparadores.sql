-- ** CREAR VIASTAS (VIEW SOBRE SOBRE SONSULTAS SIGNIFICATIVOS, RECURRENTES, ETC..

-- USAREMOS LA SIGUIENTE BASE DE DATOS, DE LA RED AUTOMATICA DE MONITOREO AMBIENTAL (RAMA)
USE bd_rama;

-- INCLUYE EL CATALOGO DE LAS ESTACIONES, FEHCAS DE OPERACION, PERSONAL DE TECNICO RESPONSABLE DE LOS EQUIPOS DE MANTENIMIENTO Y UNIDADES DE MANTENIMIENTO.
SELECT * FROM estacion; --  >  CONTENT COLUMNS(id_estacion, nombre, lon, lat) < --
SELECT * FROM fecha_hora; -- >  CONTENT COLUMNS(id_fecha_hora, fecha, hora) < --
SELECT * FROM mantenimiento; -- >  CONTENT COLUMNS(id_mantenimiento, id_estacion, is_fecha_hora, nombre, telefono, direccion, id_unidad, observacion) < --
SELECT * FROM unidad; -- >  CONTENT COLUMNS(id_unidad, unidad, placa, observacion) < --

-- DATOS DE LECTURA DE LA RAMA
SELECT * FROM no; -- >  CONTENT COLUMNS(id_no, id_fecha_hora, id_estacion, valor) < --
SELECT * FROM nox; -- >  CONTENT COLUMNS(id_nox, id_fecha_hora, id_estacion, valor)< --
SELECT * FROM no2; -- >  CONTENT COLUMNS(id_no2, id_fecha_hora, id_estacion, valor)< --
SELECT * FROM co; -- >  CONTENT COLUMNS(id_co, id_fecha_hora, id_estacion, valor)< --
SELECT * FROM o3; -- >  CONTENT COLUMNS(id_o3, id_fecha_hora, id_estacion, valor)< --


-- * A).- generamos una viasta que incluya un JOIN, referente a las estaciones que ab recibido mantenimiento y del equipo de manteniumiento relacionado

-- DROP VIEW estaciones_con_mantenimiento;
CREATE VIEW estaciones_con_mantenimiento 
AS SELECT estacion.id_estacion, estacion.nombre AS nom_estacion, estacion.lat, estacion.lon, mantenimiento.nombre,
			mantenimiento.direccion, mantenimiento.id_uniad AS codigo_veiculo
FROM estacion
INNER JOIN mantenimiento
ON estacion.id_estacion = mantenimiento.id_estacion;

SELECT * FROM estaciones_con_mantenimiento;


-- * B).- generamos una viasta que incluya un RIGHT JOIN, en este caso conicide con la vista anterior ya que corresponderia a las coninciddencias entre las estaciones y los tecnicos responsables del mantenimiento

-- DROP VIEW mantenimiento_de_estaciones;
CREATE VIEW mantenimiento_de_estaciones
AS SELECT estacion.id_estacion, estacion.nombre AS nom_estacion, estacion.lat, estacion.lon, mantenimiento.nombre,
			mantenimiento.direccion, mantenimiento.id_uniad AS codigo_veiculo
FROM estacion
RIGHT JOIN mantenimiento
ON estacion.id_estacion = mantenimiento.id_estacion;

SELECT * FROM mantenimiento_de_estaciones;

-- * C).- generamos una viasta que incluya un LEFT JOIN, en esta vista podemos observar la totalidad del calendario de mantenimientos y los mantenimientos realizados por los tecnicos

-- DROP VIEW mantenimiento_de_estaciones;
CREATE VIEW fecha_de_mantenimiento_de_estaciones
AS SELECT fecha_hora.id_fecha_hora, fecha_hora.fecha, fecha_hora.hora, mantenimiento.nombre, mantenimiento.direccion, mantenimiento.telefono, mantenimiento.observacion
FROM fecha_hora 
LEFT JOIN mantenimiento
ON fecha_hora.id_fecha_hora = mantenimiento.id_fecha_hora;

SELECT * FROM fecha_de_mantenimiento_de_estaciones;


-- * D).- generamos una viasta que incluya un SUBconsulta, donde contamos el numero de estaciones donde se repite el mismo valor de medicion de monoxido de carbono.

-- DROP VIEW valores_altos_de_monoxido_de_carbono;
CREATE VIEW valores_altos_de_monoxido_de_carbono 
AS 
SELECT COUNT(id_estacion), valor FROM co GROUP BY valor;

SELECT * FROM valores_altos_de_monoxido_de_carbono;

-- 2.- ** CREAR UN DISPARADOR (TRIGGER) DE INCERCION, ACTUALIZACION O ELIMINACION, en este caso, en caso de agregar un valor por debajo de 0.0001 nos mostrara un error personalizado sobre la condicion que establecemos

DROP TRIGGER falla_estacion;

DELIMITER //
CREATE TRIGGER falla_estacion
AFTER UPDATE ON co
FOR EACH ROW 
BEGIN
	IF NEW.valor < 0.001 THEN
		SIGNAL SQLSTATE 'HY000'
        SET MESSAGE_TEXT='ESTACION FUERA DE FUNCIONAMIENTO';
    END IF;
END //
DELIMITER ;

UPDATE co
set valor=.00001
WHERE id_co <=3;