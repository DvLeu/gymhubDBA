CREATE DATABASE Gym_hub;

CREATE TABLE Suscripcion (
    UUID UUID PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT,
    Status_Pago BOOLEAN,
    Status BOOLEAN
);

CREATE TABLE Cliente (
    UUID UUID PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido_paterno VARCHAR(255),
    Apellido_materno VARCHAR(255),
    Fecha_de_nacimiento DATE,
    Telefono VARCHAR(50),
    Direccion TEXT,
    Suscripcion UUID REFERENCES Suscripcion(UUID),
    Activo BOOLEAN,
    Imagen VARCHAR(255),
    Imagen_del_contrato VARCHAR(255)
);

CREATE TABLE Entrenador (
    UUID UUID PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido_paterno VARCHAR(255),
    Apellido_materno VARCHAR(255),
    Certificado VARCHAR(255)
);

CREATE TABLE Ejercicio (
    UUID UUID PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT
);

CREATE TABLE Rutina (
    UUID UUID PRIMARY KEY,
    Cliente UUID REFERENCES Cliente(UUID),
    Entrenador UUID REFERENCES Entrenador(UUID),
    Fecha_de_inicio DATE,
    Fecha_de_finalizacion DATE,
    Tipo VARCHAR(255),
    Notas TEXT
);

CREATE TABLE DetalleRutina (
    Rutina UUID REFERENCES Rutina(UUID),
    Ejercicio UUID REFERENCES Ejercicio(UUID),
    Repeticiones INT,
    Notas TEXT,
    PRIMARY KEY (Rutina, Ejercicio)
);

CREATE TABLE Cita (
    UUID UUID PRIMARY KEY,
    Entrenador UUID REFERENCES Entrenador(UUID),
    Cliente INT REFERENCES Cliente(Id),
    Fecha DATE,
    HoraInicio TIME,
    HoraFinalizacion TIME
);