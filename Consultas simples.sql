-- 1 
SELECT * FROM Vehiculos;
-- Esta consulta mostrará todos los vehículos registrados en la tabla Vehiculos, 
-- incluyendo su matrícula, marca, modelo, seguro, tipo, año de fabricación, kilometraje, 
-- fecha de última revisión, historial de mantenimiento e ITV.

-- 2
SELECT * FROM Vehiculos WHERE vehiculo_id = 1;
-- Reemplace el 1 con vehiculo_i del vehículo que desea consultar. 
-- Esta consulta mostrará todos los detalles del vehículo especificado.

-- 3
SELECT * FROM Vehiculos WHERE marca = 'Seat';
-- Reemplaza 'Seat'con la marca de vehículos que deseas consultar. 
-- Esta consulta mostrará todos los vehículos de la marca especificada.

-- 4
SELECT * FROM Clientes WHERE numero_de_vehiculos_flota > 10;
-- Esta consulta mostrará todos los clientes que tengan más de 10 vehículos registrados en su flota.

-- 5
SELECT * FROM Contratos WHERE fecha_fin > CURDATE();
-- Esta consulta mostrará todos los contratos que aún están vigentes, 
-- es decir, cuya fecha de finalización es posterior a la fecha actual.

-- 6 
SELECT * FROM Mantenimiento_Preventivo WHERE vehiculo_id = 1;
-- Reemplace el 1con vehiculo_idel vehículo que desea consultar. Esta consulta mostrará todos los mantenimientos preventivos 
-- que se han realizado en el vehículo especificado.

-- 7 
SELECT * FROM Mantenimiento_Correctivo WHERE costo_reparacion > 300;
-- Esta consulta mostrará todos los mantenimientos correctivos cuyo costo de reparación haya sido superior a $300.

-- 8
SELECT * FROM Repuesto WHERE cantidad_stock < stock_minimo;
-- Esta consulta mostrará todos los repuestos cuyo stock actual sea inferior al stock mínimo establecido.

-- 9
SELECT * FROM Oredenes_de_Trabajo WHERE estado_de_la_orden = 'Pendiente';
-- Esta consulta mostrará todas las órdenes de trabajo que aún están pendientes de ser completadas.

-- 10 
SELECT * FROM Facturas WHERE estado_de_factura = 'Pendiente';
-- Esta consulta mostrará todas las facturas que aún no han sido pagadas.
