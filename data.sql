-- Base de datos y esquema
CREATE DATABASE gymhub;
CREATE SCHEMA IF NOT EXISTS gymhub;
SET search_path to gymhub;

-- Tabla de Suscripciones
CREATE TABLE IF NOT EXISTS Suscripcion(
    id UUID PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT,
    status_Pago BOOLEAN,
    status BOOLEAN
);

-- Tabla de Clientes
CREATE TABLE IF NOT EXISTS Cliente(
    id UUID PRIMARY KEY,
    nombre VARCHAR(255),
    apellido_paterno VARCHAR(255),
    apellido_materno VARCHAR(255),
    fecha_de_nacimiento DATE,
    telefono VARCHAR(50),
    direccion TEXT,
    suscripcion UUID REFERENCES Suscripcion(id),
    activo BOOLEAN,
    imagen VARCHAR(255),
    imagen_del_contrato VARCHAR(255)
);

-- Tabla de Entrenadores
CREATE TABLE IF NOT EXISTS Entrenador(
    id UUID PRIMARY KEY,
    nombre VARCHAR(255),
    apellido_paterno VARCHAR(255),
    apellido_materno VARCHAR(255),
    certificado VARCHAR(255)
);

-- Tabla de Ejercicios
CREATE TABLE IF NOT EXISTS Ejercicio(
    id UUID PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT
);

-- Tabla de Rutinas
CREATE TABLE IF NOT EXISTS Rutina(
    id UUID PRIMARY KEY,
    cliente UUID REFERENCES Cliente(id),
    entrenador UUID REFERENCES Entrenador(id),
    fecha_de_inicio DATE,
    fecha_de_finalizacion DATE,
    tipo VARCHAR(255),
    notas TEXT
);

-- Tabla de Detalle de Rutinas
CREATE TABLE IF NOT EXISTS DetalleRutina(
    rutina UUID REFERENCES Rutina(id),
    ejercicio UUID REFERENCES Ejercicio(id),
    repeticiones INT,
    notas TEXT,
    PRIMARY KEY (Rutina, Ejercicio)
);

-- Tabla de Citas
CREATE TABLE IF NOT EXISTS Cita(
    id UUID PRIMARY KEY,
    entrenador UUID REFERENCES Entrenador(id),
    cliente UUID REFERENCES Cliente(id),
    fecha DATE,
    hora_inicio TIME,
    hora_finalizacion TIME
);

-- Datos de ejemplo para la tabla Suscripcion
INSERT INTO Suscripcion (id, nombre, descripcion, status_Pago, status) VALUES
('11111111-1111-1111-1111-111111111111', 'Premium', 'Acceso a todas las instalaciones', TRUE, TRUE),
('22222222-2222-2222-2222-222222222222', 'Básico', 'Acceso a gimnasio y áreas comunes', TRUE, TRUE),
('33333333-3333-3333-3333-333333333333', 'VIP', 'Acceso completo y sesiones de entrenamiento personalizadas', TRUE, FALSE);

-- Datos de ejemplo para la tabla Cliente
INSERT INTO Cliente (id, nombre, apellido_paterno, apellido_materno, fecha_de_nacimiento, telefono, direccion, suscripcion, activo, imagen, imagen_del_contrato) VALUES
('a1111111-1111-1111-1111-111111111111', 'Juan', 'Pérez', 'González', '1990-05-15', '555-1234', 'Av. Principal 123', '11111111-1111-1111-1111-111111111111', TRUE, 'juan.jpg', 'contrato_juan.jpg'),
('a2222222-2222-2222-2222-222222222222', 'María', 'López', 'Martínez', '1985-08-20', '555-5678', 'Calle Secundaria 456', '22222222-2222-2222-2222-222222222222', TRUE, 'maria.jpg', 'contrato_maria.jpg'),
('a3333333-3333-3333-3333-333333333333', 'Carlos', 'Hernández', 'Ramírez', '1992-12-10', '555-9012', 'Boulevard Tercero 789', '11111111-1111-1111-1111-111111111111', FALSE, 'carlos.jpg', NULL);

-- Datos de ejemplo para la tabla Entrenador
INSERT INTO Entrenador (id, nombre, apellido_paterno, apellido_materno, certificado) VALUES
('e1111111-1111-1111-1111-111111111111', 'Pedro', 'Fernández', 'García', 'Certificado de Entrenamiento Personal'),
('e2222222-2222-2222-2222-222222222222', 'Ana', 'Gómez', 'Sánchez', 'Certificación en Fitness y Salud'),
('e3333333-3333-3333-3333-333333333333', 'Luis', 'Rodríguez', 'Torres', 'Especialista en Nutrición Deportiva');

-- Datos de ejemplo para la tabla Ejercicio
INSERT INTO Ejercicio (id, nombre, descripcion) VALUES
('e1111111-1111-1111-1111-111111111111', 'Sentadilla', 'Ejercicio para fortalecer piernas'),
('e2222222-2222-2222-2222-222222222222', 'Press de banca', 'Ejercicio para fortalecer el pecho'),
('e3333333-3333-3333-3333-333333333333', 'Dominadas', 'Ejercicio para fortalecer la espalda y brazos');

-- Datos de ejemplo para la tabla Rutina
INSERT INTO Rutina (id, cliente, entrenador, fecha_de_inicio, fecha_de_finalizacion, tipo, notas) VALUES
('11111111-1111-1111-1111-111111111111', 'a1111111-1111-1111-1111-111111111111', 'e1111111-1111-1111-1111-111111111111', '2024-09-01', '2024-09-30', 'Fuerza', 'Rutina para aumentar fuerza en la parte inferior del cuerpo.'),
('22222222-2222-2222-2222-222222222222', 'a1111111-1111-1111-1111-111111111111', 'e2222222-2222-2222-2222-222222222222', '2024-10-01', '2024-10-31', 'Resistencia', 'Rutina de resistencia cardiovascular y muscular.'),
('33333333-3333-3333-3333-333333333333', 'a2222222-2222-2222-2222-222222222222', 'e3333333-3333-3333-3333-333333333333', '2024-09-15', '2024-10-15', 'Cardio', 'Rutina enfocada en mejorar la capacidad aeróbica.');

-- Datos de ejemplo para la tabla DetalleRutina
INSERT INTO DetalleRutina (rutina, ejercicio, repeticiones, notas) VALUES
('11111111-1111-1111-1111-111111111111', 'e1111111-1111-1111-1111-111111111111', 12, 'Realizar con buena forma.'),
('11111111-1111-1111-1111-111111111111', 'e2222222-2222-2222-2222-222222222222', 10, 'Cuidar la alineación del cuerpo.'),
('22222222-2222-2222-2222-222222222222', 'e3333333-3333-3333-3333-333333333333', 8, 'Aumentar intensidad progresivamente.');

-- Datos de ejemplo para la tabla Cita
INSERT INTO Cita (id, entrenador, cliente, fecha, hora_inicio, hora_finalizacion) VALUES
('11111111-1111-1111-1111-111111111111', 'e1111111-1111-1111-1111-111111111111', 'a1111111-1111-1111-1111-111111111111', '2024-09-23', '09:00:00', '10:00:00'),
('22222222-2222-2222-2222-222222222222', 'e1111111-1111-1111-1111-111111111111', 'a1111111-1111-1111-1111-111111111111', '2024-09-23', '10:30:00', '11:30:00'),
('33333333-3333-3333-3333-333333333333', 'e2222222-2222-2222-2222-222222222222', 'a2222222-2222-2222-2222-222222222222', '2024-09-23', '12:00:00', '13:00:00');
