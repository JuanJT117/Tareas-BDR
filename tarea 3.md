# Universidad Autonoma de Nuevo León
# Facultad de Ciencias Fisico Matematicas
# Bases de Datos Relacionables
## Tarea 3

### 1.- Esquema entidad-relacion

Fecha (_id_, dia, mes, año)

Contaminante (_id_, monoxido_de_carbono, dioxido_de_azufre, dioxido_de_nitrogeno, ozono, pm10, pm2-5)

estacion (_id_, nombre, latitud, longitud)

Poblacion (_id_, edad, genero, n° habitantes)

Contaminante-detectado_fecha_estacion_contaminante (_id-fecha_, _id-estacion_, _id-contaminante_)

Contingencia_fecha_poblacion_estacion_contaminante(_id-fecha_, _id-poblacion_, _id-estacion_, _id-contaminante_)

### 2.-Diagrama

<br/><br/>

![TAREAS-BDR](BD-RAMA-diagramaentdad relacion.png)

<br/><br/>    