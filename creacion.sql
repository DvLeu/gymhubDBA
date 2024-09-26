CREATE DATABASE gymhub;

-- Crear el esquema si no existe y establecer el search_path
CREATE SCHEMA IF NOT EXISTS gymhub;
SET search_path TO gymhub;

-- Crear la tabla Suscripcion
CREATE TABLE IF NOT EXISTS Suscripcion (
    id UUID PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion VARCHAR(512),
    status_pago BOOLEAN,
    status BOOLEAN
);

-- Crear la tabla Cliente
CREATE TABLE IF NOT EXISTS Cliente (
    id UUID PRIMARY KEY,
    nombre VARCHAR(255),
    apellido_paterno VARCHAR(255),
    apellido_materno VARCHAR(255),
    fecha_de_nacimiento DATE,
    telefono VARCHAR(50),
    direccion VARCHAR(512),
    suscripcion UUID REFERENCES Suscripcion(id),
    activo BOOLEAN,
    imagen VARCHAR(255),
    imagen_del_contrato VARCHAR(255)
);

-- Crear la tabla Entrenador
CREATE TABLE IF NOT EXISTS Entrenador (
    id UUID PRIMARY KEY,
    nombre VARCHAR(255),
    apellido_paterno VARCHAR(255),
    apellido_materno VARCHAR(255),
    certificado VARCHAR(255)
);

-- Crear la tabla Ejercicio
CREATE TABLE IF NOT EXISTS Ejercicio (
    id UUID PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion VARCHAR(512)  -- corregir el tipo de dato
);

-- Crear la tabla Rutina
CREATE TABLE IF NOT EXISTS Rutina (
    id UUID PRIMARY KEY,
    cliente UUID REFERENCES Cliente(id),
    entrenador UUID REFERENCES Entrenador(id),
    fecha_de_inicio DATE,
    fecha_de_finalizacion DATE,
    tipo VARCHAR(255),
    notas VARCHAR(512)
);

-- Crear la tabla DetalleRutina
CREATE TABLE IF NOT EXISTS DetalleRutina (
    rutina UUID REFERENCES Rutina(id),
    ejercicio UUID REFERENCES Ejercicio(id),
    repeticiones INT,
    notas VARCHAR(512),
    PRIMARY KEY (rutina, ejercicio)  -- corregir nombres en PRIMARY KEY
);

-- Crear la tabla Cita
CREATE TABLE IF NOT EXISTS Cita (
    id UUID PRIMARY KEY,
    entrenador UUID REFERENCES Entrenador(id),
    cliente UUID REFERENCES Cliente(id),
    fecha DATE,
    hora_inicio TIME,
    hora_finalizacion TIME
);
