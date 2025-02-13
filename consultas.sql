-- Suscripciones activas
SELECT *
FROM gymhub.Suscripcion
WHERE status = TRUE;
-- Obtener todos los clientes que tienen una suscripción
-- específica (por nombre de suscripción):
SELECT gymhub.Cliente.nombre, gymhub.Cliente.apellido_paterno, gymhub.Cliente.apellido_materno
FROM gymhub.Cliente
JOIN gymhub.Suscripcion ON Cliente.suscripcion = Suscripcion.id
WHERE Suscripcion.nombre = 'VIP';

-- Verificar los clientes que no están activos:
SELECT *
FROM gymhub.Cliente
WHERE activo = FALSE;

--Rutinas asignadas por un entrenador en especifico
SELECT *
FROM gymhub.Rutina
WHERE entrenador = 'e2222222-2222-2222-2222-222222222222';
-- Listar todas las citas de un cliente en un rango de fechas:
SELECT *
FROM gymhub.Cita
WHERE cliente = 'a3333333-3333-3333-3333-333333333333'
  AND fecha BETWEEN '2024-09-23' AND '2024-09-30';
--Listar todas las citas de un cliente en un rango de fechas:
SELECT *
FROM gymhub.Entrenador
WHERE nombre = 'Luis' AND apellido_paterno = 'Rodríguez' AND apellido_materno = 'Torres';
-- Pagos pendientes
SELECT *
FROM gymhub.Suscripcion
WHERE status_Pago = FALSE;

-- Obtener la lista de ejercicios asignados a un cliente específico a través de todas sus rutinas
SELECT DISTINCT gymhub.Ejercicio.nombre, gymhub.DetalleRutina.repeticiones
FROM gymhub.Rutina
JOIN gymhub.DetalleRutina ON Rutina.id = DetalleRutina.rutina
JOIN gymhub.Ejercicio ON DetalleRutina.ejercicio = Ejercicio.id
WHERE Rutina.cliente = 'a1111111-1111-1111-1111-111111111111';

-- Obtener todos los detalles de contacto de clientes que tienen un entrenador específico
SELECT gymhub.Cliente.nombre, gymhub.Cliente.telefono, gymhub.Cliente.direccion
FROM gymhub.Rutina
JOIN gymhub.Cliente ON Rutina.cliente = Cliente.id
WHERE Rutina.entrenador = 'e3333333-3333-3333-3333-333333333333';

-- Verificar todas las rutinas de un cliente que comenzaron en un mes específico
SELECT *
FROM gymhub.Rutina
WHERE cliente = 'a4444444-4444-4444-4444-444444444444'
  AND EXTRACT(MONTH FROM fecha_de_inicio) = 9;

-- Obtener todas las citas de un cliente con un entrenador específico
SELECT *
FROM gymhub.Cita
WHERE cliente = 'a5555555-5555-5555-5555-555555555555'
  AND entrenador = 'e4444444-4444-4444-4444-444444444444';

-- Ver los entrenadores con la mayor cantidad de rutinas asignadas
SELECT gymhub.Entrenador.nombre, gymhub.Entrenador.apellido_paterno, COUNT(gymhub.Rutina.id) AS total_rutinas
FROM gymhub.Rutina
JOIN gymhub.Entrenador ON Rutina.entrenador = Entrenador.id
GROUP BY gymhub.Entrenador.nombre, gymhub.Entrenador.apellido_paterno
ORDER BY total_rutinas DESC;

-- Consultar las suscripciones que no están activas
SELECT *
FROM gymhub.Suscripcion
WHERE status = FALSE;

-- Obtener el número total de clientes en cada tipo de suscripción
SELECT gymhub.Suscripcion.nombre, COUNT(gymhub.Cliente.id) AS total_clientes
FROM gymhub.Cliente
JOIN gymhub.Suscripcion ON Cliente.suscripcion = Suscripcion.id
GROUP BY gymhub.Suscripcion.nombre;

-- Listar todos los clientes que cumplen años en el mes actual
SELECT *
FROM gymhub.Cliente
WHERE EXTRACT(MONTH FROM fecha_de_nacimiento) = EXTRACT(MONTH FROM CURRENT_DATE);

-- Obtener la duración total de todas las citas de un entrenador en un día específico
SELECT SUM(EXTRACT(EPOCH FROM (hora_finalizacion - hora_inicio)) / 3600) AS total_horas
FROM gymhub.Cita
WHERE entrenador = 'e5555555-5555-5555-5555-555555555555'
  AND fecha = '2024-09-23';

-- Obtener la lista de entrenadores con clientes inactivos
SELECT DISTINCT gymhub.Entrenador.nombre, gymhub.Entrenador.apellido_paterno, gymhub.Entrenador.apellido_materno
FROM gymhub.Rutina
JOIN gymhub.Cliente ON Rutina.cliente = Cliente.id
JOIN gymhub.Entrenador ON Rutina.entrenador = Entrenador.id
WHERE Cliente.activo = FALSE;

-- Consultar todas las citas programadas en un rango de tiempo específico
SELECT *
FROM gymhub.Cita
WHERE hora_inicio >= '09:00:00' AND hora_finalizacion <= '12:00:00';

-- Listar todos los ejercicios con una descripción específica
SELECT *
FROM gymhub.Ejercicio
WHERE descripcion LIKE '%fortalecer%';

-- KEVIN


SELECT *
FROM gymhub.Cliente
WHERE activo = TRUE;


SELECT *
FROM gymhub.Rutina
WHERE cliente = 'a1111111-1111-1111-1111-111111111111';


SELECT *
FROM gymhub.Cita
WHERE entrenador = 'e1111111-1111-1111-1111-111111111111'
  AND fecha = '2024-09-23';


SELECT Ejercicio.nombre, gymhub.DetalleRutina.repeticiones, gymhub.DetalleRutina.notas
FROM gymhub.DetalleRutina
JOIN gymhub.Ejercicio ON gymhub.DetalleRutina.ejercicio = Ejercicio.id
WHERE DetalleRutina.rutina = '11111111-1111-1111-1111-111111111111';


SELECT *
FROM gymhub.Suscripcion
WHERE nombre = 'Premium';

SELECT *
FROM gymhub.cliente;

SELECT DISTINCT Entrenador.nombre, Entrenador.apellido_paterno, Entrenador.apellido_materno
FROM gymhub.Rutina
JOIN gymhub.Entrenador ON Rutina.entrenador = Entrenador.id
WHERE gymhub.Rutina.cliente = 'a1111111-1111-1111-1111-111111111111';


SELECT
    Rutina.tipo AS nombre_rutina,
    Ejercicio.nombre AS nombre_ejercicio,
    DetalleRutina.repeticiones,
    DetalleRutina.notas
FROM
    gymhub.Rutina
JOIN
    gymhub.DetalleRutina ON Rutina.id = DetalleRutina.rutina
JOIN
    gymhub.Ejercicio ON DetalleRutina.ejercicio = Ejercicio.id
WHERE
    Rutina.id = '11111111-1111-1111-1111-111111111111';
