1.- Esquema entidad-relacion

Contaminacion_ambiental(_id_, _id-fecha_, _id-estacion-de-monitoreo_)

Fecha(_id_, dia, mes, año, _id-estacion-de-monitoreo_, _id-Contaminante_)

Contaminante(_id_, _id-estacion-de-monitoreo_, monoxido_de_carbono, dioxido_de_azufre, dioxido_de_nitrogeno, ozono, PM10, PM2-5)

Estacion_monitoreo (_id_, latitud, longitud)

Poblacion(_id_, _id-fecha_, edad_rango )

2.-Diagrama

erDiagram
    CAR ||--o{ NAMED-DRIVER : allows
    CAR {
        string registrationNumber
        string make
        string model
    }
    PERSON ||--o{ NAMED-DRIVER : is
    PERSON {
        string firstName
        string lastName
        int age
    