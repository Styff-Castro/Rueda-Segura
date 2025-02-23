-- Muestra información de los clientes con su número de vehículos en flota.
CREATE VIEW vista_clientes_flota AS
SELECT cliente_id, nombre_razon_social, numero_de_vehiculos_flota
FROM Clientes;

SELECT * FROM rueda_segura.vista_clientes_flota;

-- Muestra información de contacto de los clientes.
CREATE VIEW vista_contacto_clientes AS
SELECT cliente_id, nombre_razon_social, direccion, telefono, email
FROM Clientes;

SELECT * FROM rueda_segura.vista_contacto_clientes;

--  Muestra información de vehículos con datos de su seguro.
CREATE VIEW vista_vehiculos_seguro AS
SELECT v.vehiculo_id, v.matricula, v.marca, v.modelo, s.nombre AS nombre_seguro, s.numero_de_poliza
FROM Vehiculos AS v
INNER JOIN Seguro AS s ON v.seguro_id = s.seguro_id;

SELECT * FROM rueda_segura.vista_vehiculos_seguro;

-- Muestra vehículos con su historial de mantenimiento preventivo.
CREATE VIEW vista_vehiculos_mantenimiento AS
SELECT v.vehiculo_id, v.matricula, mp.fecha_realizada, tm.nombre_de_mantenimiento
FROM Vehiculos AS v
LEFT JOIN Mantenimiento_Preventivo AS mp ON v.vehiculo_id = mp.vehiculo_id
LEFT JOIN Tipo_de_Mantenimiento AS tm ON mp.tipo_de_mantenimiento_id = tm.tipo_de_mantenimiento_id;

SELECT * FROM rueda_segura.vista_vehiculos_seguro;

-- Muestra mantenimientos correctivos con costo superior a un valor dado.
CREATE VIEW vista_mantenimientos_costosos AS
SELECT mc.mantenimiento_correctivo_id, v.matricula, m.nombre AS mecanico, mc.costo_reparacion
FROM Mantenimiento_Correctivo AS mc
INNER JOIN Vehiculos AS v ON mc.vehiculo_id = v.vehiculo_id
INNER JOIN Mecanico AS m ON mc.mecanico_id = m.mecanico_id
WHERE mc.costo_reparacion > 500; -- Puedes ajustar el valor

SELECT * FROM rueda_segura.vista_mantenimientos_costosos;

-- Muestra repuestos utilizados en mantenimientos correctivos.
CREATE VIEW vista_repuestos_utilizados AS
SELECT mr.mantenimiento_correctivo_id, r.descripcion, mr.cantidad
FROM Mantenimiento_Repuesto AS mr
INNER JOIN Repuesto AS r ON mr.repuesto_id = r.repuesto_id;

SELECT * FROM rueda_segura.vista_repuestos_utilizados;




