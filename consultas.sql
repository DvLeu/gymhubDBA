SELECT *
FROM gymhub.Cliente
WHERE activo = TRUE;

-- Listar todas las rutinas asignadas a un cliente específico por su ID
SELECT *
FROM gymhub.Rutina
WHERE cliente = 'a1111111-1111-1111-1111-111111111111';

-- Obtener todas las citas de un entrenador en un día específico
SELECT *
FROM gymhub.Cita
WHERE entrenador = 'e1111111-1111-1111-1111-111111111111'
  AND fecha = '2024-09-23';

-- Ver todos los ejercicios de una rutina específica
SELECT gymhub.Ejercicio.nombre, gymhub.DetalleRutina.repeticiones, gymhub.DetalleRutina.notas
FROM gymhub.DetalleRutina
JOIN gymhub.Ejercicio ON DetalleRutina.ejercicio = Ejercicio.id
WHERE DetalleRutina.rutina = '11111111-1111-1111-1111-111111111111';

-- Consultar los detalles de una suscripción por nombre
SELECT *
FROM gymhub.Suscripcion
WHERE nombre = 'Premium';

-- Obtener el historial de entrenadores que han trabajado con un cliente específico
SELECT DISTINCT gymhub.entrenador.nombre, gymhub.entrenador.apellido_paterno, gymhub.entrenador.apellido_materno
FROM gymhub.Rutina
JOIN gymhub.Entrenador ON Rutina.entrenador = Entrenador.id
WHERE Rutina.cliente = 'a1111111-1111-1111-1111-111111111111';