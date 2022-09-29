# Universidad Autonoma de Nuevo León
# Facultad de Ciencias Fisico Matematicas
# Bases de Datos Relacionables
## Tarea 1
1.- Crear una repositori publico de Github: 

    Se a creado el siguiente repositorio llamado tareas, donde se subiran los codigos y avances correspondientes al curso de Bases de Datos Relacionables.:

        https://github.com/JuanJT117

2.- Compartir el repositorio en el Teams correspondiente: 

3.- Describir una base de datos y sus relaciones de manera no estructurada (puede ser un párrafo, lista, esquema…) con la que trabajar durante el semestre. Agrega el tipo de dato que supones tendrá cada uno de tus atributos.

opcion 1

    Se requiere crear una una pagina web donde se almasenen datos de clientes, como son nombre, Empresa, telefono direccion, ubicacion, numero de cotizaciones relacionadas al cliente, control de pagos y pedidos, integrando un calendario donde se registrara los tiempos de avance del proyecto del cliente ( es decir tiempos de ejecucion de gabainete, exploracion, ejeccucion, procesado de informacion y redaccion de informde), asimismo el operador que realice el trabajo de levantamiento podra respaldar en tiempo real los datos capturados en campo, ya sena capturas de pantalla de libretas de campo, archivos excel, txt y se pueda consultar en todo momento por los usuarios, estosarchivos solo podran ser vistos y consultados internamente, se debera guardar un recor de los trabajos los archivos las ubicaciones de los trabajos y evdencia fotografica del mismo en esta base de datos. al igual que los valores de medicion de la declinacion magnetica del sitio en caso  de requerir levantamiento magnetico.

opcion dos 
    Se empleara MySQL como DBMS para el trabajo de la materia.

4.-Investigar diferentes SGBD (DBMS), elegir alguno y describirlo. Citar adecuadamente. Plagio invalida tarea.

    los Database Management System (DBMS / SGBD) son herramientas que nos permiten crear, gestinar, organizar, manipular, optenr reportes, proteger, respaldar bases de datos (entre otras aplicaciones), es comun su uso como herramienta de gestion de informacion en empresas, y paginas web, dodne se requiera trabajar con ellas y pobtener consultas especificas de las mismas.

    Una caracteristica remarcable es la capasidad que presentan para gestionar el acceso a los datos a los usuarios finales, ya que ellos no logran persivir los gestores, sin embargo se encuentran limitados por los mismos, entendiando esto como el accesos especificops deacuerdo al usuario; asi como elacceso remoto y la escalabilidad de las mismas, entendisndo esto, exiten multiples Database Management System que se ajustan a las necesidades o alcances de cada proyeto o empresa.
    
    Deacuerdo con la pagina Bantugroup.com (27/05/20) los DBMS se clasifican deacuerdo a distintos parametros, como son: la cantidad de informacion que manejan, la informacion que administran, cantidfad de herramientas que integran, cantidad de usuarios que interactuan en la BBDD, el modelo de datos, su distribucion, clasificando los DBMS de la siguiente forma:
        
        1.- Con base en los modelos de datos, ya sean Sistemas Jerarquicos, es decir en sitemas de arbol relacionandose por medio de correspondencias, Sistemas de Red sindo redes mas complejas, rastrenadose desde distintos caminos, Sistema Relacional

        2.- Cantidad de usuarios, son DBMS que estan especializados en permitir una unica consulta, asi como aquellos que permiten realizar multiples consultas desde distintos usuarios en distintas ubicaciones.

        3.- Aquellos con base en su distribucion, es decir gestionan datos centralizados almacernando y operando desde un unico sitio o de forma distrubuida estando conectados mediante red las BBDD y los gestores.
    
    DE igual forma es posible clasificarlos deacuerdo al tipo de gestion de DBMS, es dicir, pueden clasificarse segun la forma en que administran las bases de batos, sea local, remoto, escalable etc., estas de claseifican como: 

         1.-Relacionales (SQL), son bases de datos que almacenan y proporcionan datos relacionados entre si, cada fina en una tabla es un registro de una ID unica llamada llave, la estructura de datos se encuentra separadas de las estructuras de almacenamiento fisico, accediendo a ellos como estructura logica, este sistema es ideal para mantener la uniformidad de los datos y garantizar que todas las instancias de una base de datos tengan los mismos datos en todo momento, garantizando, atomicidad, uniformidad, aislamiento y durabilidad.

         MySQL:
            es un sitema de gestion dque se basa en SQL y en la arquitectura Cliente -servidor, teiene un uso muy amplio debido a su soporte en todas las plataformas, tambien es compatible con C, C++, Java, Perl, PHP, Python y Ruby.

         PostgreSQL:
            es un sisitema de gestion de base de datos empresarial, empleada por desarrolladores, administradores de aplicaciones, permite mantener la integridad de los datos y lo suficientemente fuerte para evitar errores,

         MongoDB: 
            realiza recopilacion de datos en colecciones y documentos, es un software libre de licencia publica, funciona con muchos lenguajes de programacion y en todos los sistemas operativos,emplea el formato JSON en formato de archivo Binario.

         Microsoft SQL Server: 
            Desarrollado por microsoft, presentando aplicaciones empresariales, dedicado a inteligencia empresarial y al analisis de entornos corporativos, presenta facilidad de uso, cifrado de datos consuderado como uno de los mas seguyros, 

         2.-No relacionables (NoSQL), son utilixzadas cuando las BD crecen muy rapidamente, por arriba del Terabyte de información, cuando la escalabilidad sepera los mlimites viables y de costo del los DBMS del tpo relacional, cuando se presentan un elevado numero de consultas por parte de usuarios, con incersion de datos no homogenea (), distintos campos; Algunos de los DBMS NoSQL
            Casandra:
                empleado por Facebook, Twitter, es un DBMS de codigo abierto, pensado en la escalabilidad horizontal, en arquitecturas distribuidas y con endoque flexible, permite analizar y organizar mas rapido, datos dispares y de gran volumen, asi como la escalabilidad en la nube.

            Redis:
                empleado por Instagram, Github, flickr. se considera como un repositorio de estructuras de datos, puede ejecutar operaciones atomicas, segun el uso trabaja con conjuntos de datos en memoria, permite escalabilidad horizontal. 

            MongoDB:
                 empleado por FourSquare, CERN, SourceForge, etc, orientada a documentos, escquemas libres, se caracteriza por ser muy rapido al ejecutar operaciones y tener un codigo muy confiable.




5.-Subir esta descripción en un archivo markdown o PDF nombrado claramente (tarea 1 o algo por el estilo).

referencias:

Acens. (28 de fecbrero de 2014). Bases de datos NoSQL que sopn y tipos que nos podemos enontrar. acens.com. https://www.acens.com/wp-content/images/2014/02/bbdd-nosql-wp-acens.pdf

Bantu Group. (27 de abril de 2020). Sistemas de gestiín de bases de datos: tipos, alcances y funciones. bantugroup.com. https://www.bantugroup.com/blog/tipos-de-sistemas-de-gestion-de-base-de-datos#:~:text=Sistema%20Relacional%3A%20Almacena%20datos%20en,imagen%2C%20sonido%20y%20texto).

Darias Pérez Sergio. (o9 de septiembre de 2021). gestores de bases de datos. intelequia.com. https://intelequia.com/blog/post/2949/gestor-de-base-de-datos-qu%C3%A9-es-funcionalidades-y-ejemplos

The Apache Software Foundation. (02 de enero de 2022). Cassandra Basics. https://cassandra.apache.org/_/cassandra-basics.html.

Redis.Ltd. (12 de mayo de 2022). Introduction to Redis. https://redis.io/docs/about/

oracle. (29 de julio de 2022). ¿que es una base de datos relacional (sistema de gestion de bases de datos relacionales)?. https://www.oracle.com/mx/database/what-is-a-relational-database/.


### curso impartido por Maestro Jose Alberto Benavides
### Ing Juan Jesus Torres Solano

