# Universidad Autonoma de Nuevo León
# Facultad de Ciencias Fisico Matematicas
# Bases de Datos Relacionables
## Tarea 5

### [4 puntos] Crea tu base de datos y tablas correspondientes a partir de tus tareas de los modelos e-r y relacional

debido a que problemas con la base de datos, se empleara una base de datos de ejercicio, correspondiente a informacion de una biblioteca.

#### Usar funciones de agregación para calcular:

##### [1 punto] conteo de frecuencias o media

        SELECT codigoeditorial,precio,
        COUNT(*)FROM libros l 
        INNER JOIN editorial e 
        ON l.codigoeditorial=e.codigo_editorial
        GROUP BY codigoeditorial,precio;

##### [1 punto] mínimos o máximos

        /* se calcula el precio maximo y minimo de los libros en venta*/

        SELECT MAX(precio) FROM libros;
                /* resultando en 850.00*/
        SELECT MIN(precio) FROM libros
                /* resultando en 15.00 */

##### [4 puntos] cuantil cuyo resultado sea distinto a la mediana

##### [4 puntos] moda


##### [2 puntos] reporta hallazgos, dificultades, implementación de soluciones encontradas en línea, etc...

#### Haz al menos un ejemplo de cada una de estas consultas de estadísticos

#### Escribe un reporte en Markdown o PDF y súbelo a tu repositorio

#### Sube el link de tu tarea a Nexus