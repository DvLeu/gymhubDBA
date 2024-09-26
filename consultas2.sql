-- Suscripciones activas
SELECT *
FROM gymhub.Suscripcion
WHERE status = TRUE;

-- Obtener todos los clientes que tienen una suscripción específica (por nombre de suscripción)
SELECT gymhub.Cliente.nombre, gymhub.Cliente.apellido_paterno, gymhub.Cliente.apellido_materno
FROM gymhub.Cliente
JOIN gymhub.Suscripcion ON gymhub.Cliente.suscripcion = gymhub.Suscripcion.id
WHERE gymhub.Suscripcion.nombre = 'VIP';

-- Verificar los clientes que no están activos
SELECT *
FROM gymhub.Cliente
WHERE activo = FALSE;

-- Rutinas asignadas por un entrenador en específico
SELECT *
FROM gymhub.Rutina
WHERE entrenador = 'e2222222-2222-2222-2222-222222222222';

-- Listar todas las citas de un cliente en un rango de fechas
SELECT *
FROM gymhub.Cita
WHERE cliente = 'a3333333-3333-3333-3333-333333333333'
  AND fecha BETWEEN '2024-09-23' AND '2024-09-30';

-- Obtener detalles de un entrenador específico
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
JOIN gymhub.DetalleRutina ON gymhub.Rutina.id = gymhub.DetalleRutina.rutina
JOIN gymhub.Ejercicio ON gymhub.DetalleRutina.ejercicio = gymhub.Ejercicio.id
WHERE gymhub.Rutina.cliente = 'a1111111-1111-1111-1111-111111111111';

-- Obtener todos los detalles de contacto de clientes que tienen un entrenador específico
SELECT gymhub.Cliente.nombre, gymhub.Cliente.telefono, gymhub.Cliente.direccion
FROM gymhub.Rutina
JOIN gymhub.Cliente ON gymhub.Rutina.cliente = gymhub.Cliente.id
WHERE gymhub.Rutina.entrenador = 'e3333333-3333-3333-3333-333333333333';

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
JOIN gymhub.Entrenador ON gymhub.Rutina.entrenador = gymhub.Entrenador.id
GROUP BY gymhub.Entrenador.nombre, gymhub.Entrenador.apellido_paterno
ORDER BY total_rutinas DESC;

-- Consultar las suscripciones que no están activas
SELECT *
FROM gymhub.Suscripcion
WHERE status = FALSE;

-- Obtener el número total de clientes en cada tipo de suscripción
SELECT gymhub.Suscripcion.nombre, COUNT(gymhub.Cliente.id) AS total_clientes
FROM gymhub.Cliente
JOIN gymhub.Suscripcion ON gymhub.Cliente.suscripcion = gymhub.Suscripcion.id
GROUP BY gymhub.Suscripcion.nombre;


-- Obtener la duración total de todas las citas de un entrenador en un día específico
SELECT SUM(EXTRACT(EPOCH FROM (hora_finalizacion - hora_inicio)) / 3600) AS total_horas
FROM gymhub.Cita
WHERE entrenador = 'e5555555-5555-5555-5555-555555555555'
  AND fecha = '2024-09-23';

-- Obtener la lista de entrenadores con clientes inactivos
SELECT DISTINCT gymhub.Entrenador.nombre, gymhub.Entrenador.apellido_paterno, gymhub.Entrenador.apellido_materno
FROM gymhub.Rutina
JOIN gymhub.Cliente ON gymhub.Rutina.cliente = gymhub.Cliente.id
JOIN gymhub.Entrenador ON gymhub.Rutina.entrenador = gymhub.Entrenador.id
WHERE gymhub.Cliente.activo = FALSE;

-- Consultar todas las citas programadas en un rango de tiempo específico
SELECT *
FROM gymhub.Cita
WHERE hora_inicio >= '09:00:00' AND hora_finalizacion <= '12:00:00';

-- Listar todos los ejercicios con una descripción específica
SELECT *
FROM gymhub.Ejercicio
WHERE descripcion LIKE '%fortalecer%';

-- Obtener todas las citas que se realizaron fuera del horario laboral (antes de 8:00 am o después de 6:00 pm)
SELECT *
FROM gymhub.Cita
WHERE EXTRACT(HOUR FROM hora_inicio) < 8
   OR EXTRACT(HOUR FROM hora_finalizacion) > 18;

-- KEVIN: Consultas adicionales

-- Clientes activos
SELECT *
FROM gymhub.Cliente
WHERE activo = TRUE;

-- Rutinas de un cliente específico
SELECT *
FROM gymhub.Rutina
WHERE cliente = 'id-del-cliente';

SELECT * FROM gymhub.entrenador;

-- Citas de un entrenador en una fecha específica
SELECT *
FROM gymhub.Cita
WHERE entrenador = 'e1111111-1111-1111-1111-111111111111'
  AND fecha = '2024-09-23';

SELECT * FROM gymhub.rutina;
SELECT * FROM gymhub.detallerutina;

-- Detalles de ejercicios en una rutina específica
SELECT Ejercicio.nombre, DetalleRutina.repeticiones, DetalleRutina.notas
FROM gymhub.DetalleRutina
JOIN gymhub.Ejercicio ON gymhub.DetalleRutina.ejercicio = gymhub.Ejercicio.id
WHERE gymhub.DetalleRutina.rutina = '11111111-1111-1111-1111-111111111111';

-- Suscripción Premium
SELECT *
FROM gymhub.Suscripcion
WHERE nombre = 'Premium';

-- Todos los clientes
SELECT *
FROM gymhub.Cliente;

-- Entrenadores de un cliente específico
SELECT DISTINCT gymhub.Entrenador.nombre, gymhub.Entrenador.apellido_paterno, gymhub.Entrenador.apellido_materno
FROM gymhub.Rutina
JOIN gymhub.Entrenador ON gymhub.Rutina.entrenador = gymhub.Entrenador.id
WHERE gymhub.Rutina.cliente = 'a1111111-1111-1111-1111-111111111111';
