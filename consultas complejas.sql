-- 1
SELECT v.matricula, COUNT(mp.mantenimiento_preventivo_id) AS total_mantenimientos_preventivos
FROM Vehiculos AS v
LEFT JOIN Mantenimiento_Preventivo AS mp ON v.vehiculo_id = mp.vehiculo_id
GROUP BY v.matricula
ORDER BY total_mantenimientos_preventivos DESC;
-- Esta consulta muestra la matrícula de los vehículos y la cantidad de mantenimientos preventivos que se han realizado, 
-- ordenados de mayor a menor cantidad de mantenimientos.

-- 2 
SELECT m.nombre, m.apellido, COUNT(mc.mantenimiento_correctivo_id) AS total_reparaciones_costosas
FROM Mecanico AS m
LEFT JOIN Mantenimiento_Correctivo AS mc ON m.mecanico_id = mc.mecanico_id
WHERE mc.costo_reparacion > 500  -- Puedes ajustar el valor del costo
GROUP BY m.nombre, m.apellido
ORDER BY total_reparaciones_costosas DESC;
-- Esta consulta identifica al mecánico que ha realizado más reparaciones con un costo superior a $500 
-- (puedes ajustar este valor).

-- 3 
SELECT r.descripcion, COUNT(mr.repuesto_id) AS total_repuestos_utilizados
FROM Repuesto AS r
LEFT JOIN Mantenimiento_Repuesto AS mr ON r.repuesto_id = mr.repuesto_id
GROUP BY r.descripcion
ORDER BY total_repuestos_utilizados DESC;
-- Esta consulta muestra los repuestos que se han utilizado con mayor frecuencia en los mantenimientos correctivos.

-- 4
SELECT c.nombre_razon_social
FROM Clientes AS c
INNER JOIN Contratos AS con ON c.cliente_id = con.cliente_id
INNER JOIN Tipo_de_Contrato AS tc ON con.tipo_de_contrato_id = tc.tipo_de_contrato_id
WHERE tc.nombre = 'Mantenimiento Completo' AND c.numero_de_vehiculos_flota > 5;
-- Esta consulta identifica a los clientes que tienen contratos de mantenimiento completo y
--  que además poseen más de 5 vehículos en su flota.

-- 5 
SELECT v.matricula
FROM Vehiculos AS v
INNER JOIN Mantenimiento_Preventivo AS mp ON v.vehiculo_id = mp.vehiculo_id
INNER JOIN Mantenimiento_Correctivo AS mc ON v.vehiculo_id = mc.vehiculo_id
WHERE MONTH(mp.fecha_realizada) = MONTH(mc.fecha_fin_reparacion) AND YEAR(mp.fecha_realizada) = YEAR(mc.fecha_fin_reparacion);
-- Esta consulta encuentra vehículos que han tenido tanto mantenimientos preventivos como correctivos en el mismo mes.

-- 6
SELECT tv.nombre_tipo, SUM(mc.costo_reparacion) AS costo_total_reparaciones
FROM Tipo_Vehiculo AS tv
LEFT JOIN Vehiculos AS v ON tv.tipo_vehiculo_id = v.tipo_vehiculo_id
LEFT JOIN Mantenimiento_Correctivo AS mc ON v.vehiculo_id = mc.vehiculo_id
GROUP BY tv.nombre_tipo;
-- Esta consulta calcula el costo total de las reparaciones para cada tipo de vehículo.

-- 7
SELECT marca, modelo, COUNT(*) AS cantidad_vehiculos
FROM Vehiculos
GROUP BY marca, modelo
ORDER BY marca, modelo;
-- Esta consulta muestra la cantidad de vehículos para cada combinación de marca y modelo.

-- 8
SELECT v.matricula, COUNT(mp.mantenimiento_preventivo_id) AS mantenimientos_pendientes
FROM Vehiculos AS v
LEFT JOIN Mantenimiento_Preventivo AS mp ON v.vehiculo_id = mp.vehiculo_id
WHERE mp.fecha_programada > CURDATE()
GROUP BY v.matricula;
-- Esta consulta muestra la cantidad de mantenimientos preventivos que aún están pendientes para cada vehículo.

-- 9
SELECT r.codigo_repuesto, r.descripcion, r.cantidad_stock
FROM Repuesto AS r
WHERE r.cantidad_stock < (r.stock_minimo * 1.2); -- Punto de pedido: 120% del stock mínimo
-- Esta consulta identifica los repuestos cuyo stock actual está por debajo del "punto de pedido" 
-- (en este caso, se ha definido como el 120% del stock mínimo).

-- 10
SELECT c.nombre_razon_social, SUM(f.importe) AS facturacion_total
FROM Clientes AS c
LEFT JOIN Facturas AS f ON c.cliente_id = f.cliente_id
GROUP BY c.nombre_razon_social;
-- Esta consulta calcula la facturación total para cada cliente.


