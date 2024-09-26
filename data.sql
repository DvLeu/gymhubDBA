-- SUSCRIPCION
INSERT INTO gymhub.Suscripcion (id, nombre, descripcion, status_Pago, status) VALUES
('11111111-1111-1111-1111-111111111111', 'Premium', 'Acceso a todas las instalaciones', TRUE, TRUE),
('22222222-2222-2222-2222-222222222222', 'Básico', 'Acceso a gimnasio y áreas comunes', TRUE, TRUE),
('33333333-3333-3333-3333-333333333333', 'VIP', 'Acceso completo y sesiones de entrenamiento personalizadas', TRUE, FALSE);

-- CLIENTE
INSERT INTO gymhub.Cliente (id, nombre, apellido_paterno, apellido_materno, fecha_de_nacimiento, telefono, direccion, suscripcion, activo, imagen, imagen_del_contrato) VALUES
('a1111111-1111-1111-1111-111111111111', 'Juan', 'Pérez', 'González', '1990-05-15', '555-1234', 'Av. Principal 123', '11111111-1111-1111-1111-111111111111', TRUE, 'juan.jpg', 'contrato_juan.jpg'),
('a2222222-2222-2222-2222-222222222222', 'María', 'López', 'Martínez', '1985-08-20', '555-5678', 'Calle Secundaria 456', '22222222-2222-2222-2222-222222222222', TRUE, 'maria.jpg', 'contrato_maria.jpg'),
('a3333333-3333-3333-3333-333333333333', 'Carlos', 'Hernández', 'Ramírez', '1992-12-10', '555-9012', 'Boulevard Tercero 789', '11111111-1111-1111-1111-111111111111', FALSE, 'carlos.jpg', NULL),
('a4444444-4444-4444-4444-444444444444', 'Laura', 'García', 'Mendoza', '1988-02-25', '555-3344', 'Calle Principal 101', '33333333-3333-3333-3333-333333333333', TRUE, 'laura.jpg', 'contrato_laura.jpg'),
('a5555555-5555-5555-5555-555555555555', 'David', 'Sánchez', 'Jiménez', '1995-06-12', '555-7788', 'Av. Reforma 202', '11111111-1111-1111-1111-111111111111', TRUE, 'david.jpg', 'contrato_david.jpg'),
('a6666666-6666-6666-6666-666666666666', 'Elena', 'Castillo', 'Vargas', '1999-11-03', '555-1122', 'Paseo de los Pinos 303', '22222222-2222-2222-2222-222222222222', FALSE, 'elena.jpg', 'contrato_elena.jpg'),
('a7777777-7777-7777-7777-777777777777', 'Francisco', 'Ortega', 'Navarro', '1993-04-18', '555-5566', 'Blvd. del Sol 404', '33333333-3333-3333-3333-333333333333', TRUE, 'francisco.jpg', 'contrato_francisco.jpg'),
('a8888888-8888-8888-8888-888888888888', 'Paola', 'Vega', 'Ruiz', '1980-07-21', '555-9988', 'Calle Luna 505', '11111111-1111-1111-1111-111111111111', TRUE, 'paola.jpg', 'contrato_paola.jpg'),
('a9999999-9999-9999-9999-999999999999', 'Luis', 'Mendoza', 'Castillo', '1987-11-11', '555-7777', 'Av. Centro 666', '33333333-3333-3333-3333-333333333333', TRUE, 'luis.jpg', 'contrato_luis.jpg'),
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Sofía', 'Núñez', 'Ramírez', '1994-03-03', '555-2222', 'Calle Sur 101', '22222222-2222-2222-2222-222222222222', TRUE, 'sofia.jpg', 'contrato_sofia.jpg');

-- Entrenador
INSERT INTO gymhub.Entrenador (id, nombre, apellido_paterno, apellido_materno, certificado) VALUES
('e1111111-1111-1111-1111-111111111111', 'Pedro', 'Fernández', 'García', 'Certificado de Entrenamiento Personal'),
('e2222222-2222-2222-2222-222222222222', 'Ana', 'Gómez', 'Sánchez', 'Certificación en Fitness y Salud'),
('e3333333-3333-3333-3333-333333333333', 'Luis', 'Rodríguez', 'Torres', 'Especialista en Nutrición Deportiva'),
('e4444444-4444-4444-4444-444444444444', 'Carlos', 'Martínez', 'López', 'Certificación en Entrenamiento Funcional'),
('e5555555-5555-5555-5555-555555555555', 'Sofía', 'Rivera', 'Núñez', 'Certificado en Pilates y Yoga'),
('e6666666-6666-6666-6666-666666666666', 'Miguel', 'Domínguez', 'Castro', 'Especialista en Rehabilitación Deportiva'),
('e7777777-7777-7777-7777-777777777777', 'Andrea', 'Cruz', 'Flores', 'Certificado de Entrenador Avanzado'),
('e8888888-8888-8888-8888-888888888888', 'Javier', 'Silva', 'Pérez', 'Especialista en Preparación Física para Competencias'),
('e9999999-9999-9999-9999-999999999999', 'Alberto', 'López', 'Hernández', 'Entrenador de Alto Rendimiento'),
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'Gabriela', 'Méndez', 'Ortiz', 'Certificado en Entrenamiento Funcional y Cardiovascular');

-- Ejercicio
INSERT INTO gymhub.Ejercicio (id, nombre, descripcion) VALUES
('e1111111-1111-1111-1111-111111111111', 'Sentadilla', 'Ejercicio para fortalecer piernas'),
('e2222222-2222-2222-2222-222222222222', 'Press de banca', 'Ejercicio para fortalecer el pecho'),
('e3333333-3333-3333-3333-333333333333', 'Dominadas', 'Ejercicio para fortalecer la espalda y brazos'),
('e4444444-4444-4444-4444-444444444444', 'Press militar', 'Ejercicio para fortalecer hombros y brazos'),
('e5555555-5555-5555-5555-555555555555', 'Peso muerto', 'Ejercicio para fortalecer la espalda y glúteos'),
('e6666666-6666-6666-6666-666666666666', 'Curl de bíceps', 'Ejercicio para fortalecer los bíceps'),
('e7777777-7777-7777-7777-777777777777', 'Extensiones de pierna', 'Ejercicio para fortalecer los cuadriceps'),
('e8888888-8888-8888-8888-888888888888', 'Plancha abdominal', 'Ejercicio para fortalecer el core'),
('e9999999-9999-9999-9999-999999999999', 'Hip Thrust', 'Ejercicio para fortalecer los glúteos'),
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'Remo con barra', 'Ejercicio para fortalecer la espalda y trapecios');

-- Rutina
INSERT INTO gymhub.Rutina (id, cliente, entrenador, fecha_de_inicio, fecha_de_finalizacion, tipo, notas) VALUES
('11111111-1111-1111-1111-111111111111', 'a1111111-1111-1111-1111-111111111111', 'e1111111-1111-1111-1111-111111111111', '2024-09-01', '2024-09-30', 'Fuerza', 'Rutina para aumentar fuerza en la parte inferior del cuerpo.'),
('22222222-2222-2222-2222-222222222222', 'a1111111-1111-1111-1111-111111111111', 'e2222222-2222-2222-2222-222222222222', '2024-10-01', '2024-10-31', 'Resistencia', 'Rutina de resistencia cardiovascular y muscular.'),
('33333333-3333-3333-3333-333333333333', 'a2222222-2222-2222-2222-222222222222', 'e3333333-3333-3333-3333-333333333333', '2024-09-15', '2024-10-15', 'Cardio', 'Rutina enfocada en mejorar la capacidad aeróbica.'),
('44444444-4444-4444-4444-444444444444', 'a4444444-4444-4444-4444-444444444444', 'e4444444-4444-4444-4444-444444444444', '2024-09-05', '2024-10-05', 'Fuerza', 'Enfocada en fortalecer la parte superior del cuerpo.'),
('55555555-5555-5555-5555-555555555555', 'a5555555-5555-5555-5555-555555555555', 'e5555555-5555-5555-5555-555555555555', '2024-09-10', '2024-10-10', 'Hipertrofia', 'Rutina para ganar masa muscular.'),
('66666666-6666-6666-6666-666666666666', 'a6666666-6666-6666-6666-666666666666', 'e6666666-6666-6666-6666-666666666666', '2024-09-15', '2024-10-15', 'Flexibilidad', 'Rutina enfocada en mejorar la flexibilidad y movilidad.'),
('77777777-7777-7777-7777-777777777777', 'a7777777-7777-7777-7777-777777777777', 'e7777777-7777-7777-7777-777777777777', '2024-09-20', '2024-10-20', 'Resistencia', 'Rutina para mejorar la resistencia cardiovascular.'),
('88888888-8888-8888-8888-888888888888', 'a8888888-8888-8888-8888-888888888888', 'e8888888-8888-8888-8888-888888888888', '2024-09-25', '2024-10-25', 'Fuerza', 'Rutina para fortalecer la parte superior del cuerpo.'),
('99999999-9999-9999-9999-999999999999', 'a9999999-9999-9999-9999-999999999999', 'e9999999-9999-9999-9999-999999999999', '2024-09-30', '2024-10-30', 'Hipertrofia', 'Rutina para ganar masa muscular en las piernas.'),
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', '2024-10-01', '2024-11-01', 'Cardio', 'Rutina enfocada en quemar grasa.');

-- Cita
INSERT INTO gymhub.Cita (id, entrenador, cliente, fecha, hora_inicio, hora_finalizacion) VALUES
('11111111-1111-1111-1111-111111111111', 'e1111111-1111-1111-1111-111111111111', 'a1111111-1111-1111-1111-111111111111', '2024-09-23', '09:00:00', '10:00:00'),
('22222222-2222-2222-2222-222222222222', 'e1111111-1111-1111-1111-111111111111', 'a1111111-1111-1111-1111-111111111111', '2024-09-23', '10:30:00', '11:30:00'),
('33333333-3333-3333-3333-333333333333', 'e2222222-2222-2222-2222-222222222222', 'a2222222-2222-2222-2222-222222222222', '2024-09-23', '12:00:00', '13:00:00'),
('44444444-4444-4444-4444-444444444444', 'e4444444-4444-4444-4444-444444444444', 'a4444444-4444-4444-4444-444444444444', '2024-09-24', '14:00:00', '15:00:00'),
('55555555-5555-5555-5555-555555555555', 'e5555555-5555-5555-5555-555555555555', 'a5555555-5555-5555-5555-555555555555', '2024-09-24', '15:30:00', '16:30:00'),
('66666666-6666-6666-6666-666666666666', 'e6666666-6666-6666-6666-666666666666', 'a6666666-6666-6666-6666-666666666666', '2024-09-24', '17:00:00', '18:00:00'),
('77777777-7777-7777-7777-777777777777', 'e7777777-7777-7777-7777-777777777777', 'a7777777-7777-7777-7777-777777777777', '2024-09-25', '09:00:00', '10:00:00'),
('88888888-8888-8888-8888-888888888888', 'e8888888-8888-8888-8888-888888888888', 'a8888888-8888-8888-8888-888888888888', '2024-09-25', '10:30:00', '11:30:00'),
('99999999-9999-9999-9999-999999999999', 'e1111111-1111-1111-1111-111111111111', 'a3333333-3333-3333-3333-333333333333', '2024-09-26', '11:00:00', '12:00:00'),
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'e2222222-2222-2222-2222-222222222222', 'a4444444-4444-4444-4444-444444444444', '2024-09-26', '13:00:00', '14:00:00');

-- Detalle Rutina
INSERT INTO gymhub.DetalleRutina (rutina, ejercicio, repeticiones, notas) VALUES
('11111111-1111-1111-1111-111111111111', 'e1111111-1111-1111-1111-111111111111', 12, 'Realizar con buena forma.'),
('11111111-1111-1111-1111-111111111111', 'e2222222-2222-2222-2222-222222222222', 10, 'Cuidar la alineación del cuerpo.'),
('22222222-2222-2222-2222-222222222222', 'e3333333-3333-3333-3333-333333333333', 8, 'Aumentar intensidad progresivamente.'),
('33333333-3333-3333-3333-333333333333', 'e4444444-4444-4444-4444-444444444444', 15, 'Mantener control durante todo el movimiento.'),
('33333333-3333-3333-3333-333333333333', 'e5555555-5555-5555-5555-555555555555', 20, 'Descansar 1 minuto entre series.'),
('44444444-4444-4444-4444-444444444444', 'e6666666-6666-6666-6666-666666666666', 10, 'Mantener la espalda recta.'),
('44444444-4444-4444-4444-444444444444', 'e7777777-7777-7777-7777-777777777777', 12, 'Asegurarse de realizar la técnica correctamente.'),
('11111111-1111-1111-1111-111111111111', 'e8888888-8888-8888-8888-888888888888', 30, 'Realizar de manera controlada.'),
('44444444-4444-4444-4444-444444444444', 'e9999999-9999-9999-9999-999999999999', 25, 'Tener cuidado con la respiración.'),
('11111111-1111-1111-1111-111111111111', 'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 20, 'Evitar sobrecargar peso en la primera serie.');
