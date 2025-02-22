-- Insercion de datos Tabla Seguro
INSERT INTO Seguro (seguro_id, nombre, numero_de_poliza, tipo_seguro, fecha_de_vencimiento)
VALUES
(null,'Aseguradora del Este', 123456789, 'Todo Riesgo', '2024-12-31'),
(null,'Seguros La Unión', 987654321, 'Responsabilidad Civil', '2024-06-30'),
(null,'Protección Total', 555555555, 'Terceros Ampliado', '2025-03-15'),
(null,'Seguridad al Volante', 112233444, 'Todo Riesgo con Franquicia', '2024-09-30'),
(null,'Confianza Segura', 998877665, 'Responsabilidad Civil Ampliada', '2025-01-15');
select * from Seguro;

-- Insercion de datos tabla Tipo de vehiculo
INSERT INTO Tipo_Vehiculo (tipo_vehiculo_id, nombre_tipo) VALUES
(null,'Coche'),
(null,'Furgoneta'),
(null,'Camión'),
(null,'Autobús');
select * from Tipo_Vehiculo;

-- insersion de datos taba vehiculos
INSERT INTO Vehiculos (vehiculo_id, matricula, marca, modelo, seguro_id, tipo_vehiculo_id, fabricacion, kilometraje_actual, fecha_ultima_revision, historial_de_mantenimiento, ITV) VALUES
(null,'1234ABC', 'Seat', 'León', 1, 1, 2020, 50000, '2024-01-15', 'Revisiones periódicas y cambio de aceite', '2024-06-30'),
(null,'5678DEF', 'Ford', 'Transit', 2, 2, 2018, 120000, '2023-11-20', 'Mantenimiento de frenos y neumáticos', '2024-03-15'),
(null,'9012GHI', 'Volvo', 'FH', 3, 3, 2022, 80000, '2024-05-10', 'Cambio de filtros y aceite', '2024-09-30'),
(null,'3456JKL', 'Renault', 'Clio', 4, 1, 2019, 35000, '2024-02-28', 'Revisión general y cambio de correa de distribución', '2024-07-15'),
(null,'7890MNO', 'Mercedes-Benz', 'Sprinter', 5, 2, 2021, 95000, '2023-12-05', 'Mantenimiento de la suspensión y dirección', '2024-04-30'),
(null,'1122PQR', 'Scania', 'R500', 1, 3, 2023, 25000, '2024-07-20', 'Revisión de motor y sistema de refrigeración', '2025-01-15'),
(null,'3344STU', 'Peugeot', 'Partner', 2, 2, 2017, 150000, '2024-03-05', 'Mantenimiento de la transmisión y embrague', '2024-08-31'),
(null,'5566VWX', 'MAN', 'TGX', 3, 3, 2020, 110000, '2023-10-18', 'Cambio de neumáticos y revisión de frenos', '2024-06-10'),
(null,'7788YZ0', 'Citroën', 'Berlingo', 4, 2, 2019, 60000, '2024-05-25', 'Revisión de dirección y suspensión', '2024-12-05'),
(null,'9900ABC', 'Iveco', 'Stralis', 5, 3, 2022, 90000, '2024-01-12', 'Mantenimiento general y cambio de aceite', '2024-07-20');
select * from Vehiculos;

-- Insercion de datos Tabla Clientes
INSERT INTO Clientes (cliente_id, nombre_razon_social, direccion, telefono, email, persona_de_contacto, numero_de_vehiculos_flota) VALUES
(null,'Distribuidora El Sol', 'Calle Principal, 123', '555-123-4567', 'info@distribuidoraelsol.com', 'Ana Pérez', 10),
(null,'Logística Avanzada SA', 'Avenida Industrial, 456', '555-987-6543', 'contacto@logisticaavanzada.com', 'Carlos Gómez', 5),
(null,'Transportes Unidos SRL', 'Carretera Nacional, km 789', '555-555-5555', 'admin@transportesunidos.com', 'María Rodríguez', 15),
(null,'Servicios Integrales de Flota', 'Calle del Comercio, 101', '555-111-2222', 'clientes@serviciosflota.com', 'Juan López', 8),
(null,'Soluciones Logísticas Integrales', 'Polígono Empresarial, nave 234', '555-999-8888', 'info@solucioneslogísticas.com', 'Pedro Martínez', 12);
select * from Clientes;

-- insercion de datos tabla contrato
INSERT INTO Tipo_de_Contrato (tipo_de_contrato_id, nombre) VALUES
(null,'Mantenimiento Completo'),
(null,'Mantenimiento Preventivo'),
(null,'Mantenimiento Correctivo'),
(null,'Mantenimiento por Kilometraje'),
(null,'Mantenimiento a Demanda');
select * from Tipo_de_Contrato;

-- insercion de datos de la tabla contratos
INSERT INTO Contratos (contratos_id, cliente_id, tipo_de_contrato_id, fecha_inicio, fecha_fin, condiciones_contrato, vehiculos_incluidos) VALUES
(null,1, 1, '2024-01-01', '2025-01-01', 'Mantenimiento integral de la flota', 'Todos los vehículos'),
(null,2, 2, '2024-02-15', '2025-02-15', 'Mantenimiento preventivo según programa', 'Furgonetas'),
(null,3, 3, '2024-03-01', '2025-03-01', 'Mantenimiento correctivo para averías', 'Camiones'),
(null,4, 4, '2024-04-10', '2025-04-10', 'Mantenimiento por kilometraje recorrido', 'Motocicletas'),
(null,5, 1, '2024-05-01', '2025-05-01', 'Mantenimiento completo con cobertura ampliada', 'Todos los vehículos'),
(null,1, 2, '2024-06-15', '2025-06-15', 'Mantenimiento preventivo con revisiones trimestrales', 'Coches y furgonetas'),
(null,2, 3, '2024-07-01', '2025-07-01', 'Mantenimiento correctivo para reparaciones mayores', 'Camiones y autobuses'),
(null,3, 4, '2024-08-20', '2025-08-20', 'Mantenimiento por kilometraje con descuentos por volumen', 'Todos los vehículos');
select * from Contratos;

-- insercion de datos de la tabla tipo de mantenimiento
INSERT INTO Tipo_de_Mantenimiento (tipo_de_mantenimiento_id, nombre_de_mantenimiento) VALUES
(null,'Cambio de aceite'),
(null,'Revisión de frenos'),
(null,'Cambio de neumáticos'),
(null,'Mantenimiento de motor'),
(null,'Revisión de luces'),
(null,'Alineación y balanceo'),
(null,'Revisión de suspensión'),
(null,'Mantenimiento de la caja');
select * from Tipo_de_Mantenimiento;

-- insercion de datos de la tabla mantenimiento preventivo
INSERT INTO Mantenimiento_Preventivo (mantenimiento_preventivo_id, vehiculo_id, tipo_de_mantenimiento_id, fecha_programada, fecha_realizada, kilometraje_mantenimiento, observaciones) VALUES
(null,1, 1, '2024-02-15', '2024-02-15', 55000, 'Cambio de aceite y filtro'),
(null,2, 2, '2024-03-01', '2024-03-01', 125000, 'Revisión y ajuste de frenos'),
(null,3, 3, '2024-04-10', '2024-04-10', 85000, 'Cambio de neumáticos'),
(null,4, 1, '2024-05-01', '2024-05-01', 38000, 'Cambio de aceite y filtro'),
(null,5, 2, '2024-06-15', '2024-06-15', 100000, 'Revisión y ajuste de frenos'),
(null,6, 4, '2024-07-20', '2024-07-20', 28000, 'Mantenimiento de motor y revisión de niveles'),
(null,7, 5, '2024-08-05', '2024-08-05', 155000, 'Revisión de luces y sistema eléctrico'),
(null,8, 3, '2024-09-12', '2024-09-12', 112000, 'Cambio de neumáticos y alineación'),
(null,9, 1, '2024-10-25', '2024-10-25', 62000, 'Cambio de aceite y filtro'),
(null,10, 2, '2024-11-08', '2024-11-08', 98000, 'Revisión y ajuste de frenos');
select * from Mantenimiento_Preventivo;

-- insercion de datos de la tabla Mecanico
INSERT INTO Mecanico (mecanico_id, nombre, apellido, especialidad, turno) VALUES
(null,'Juan', 'Pérez', 'Mecánica general', 'Mañana'),
(null,'Ana', 'García', 'Electricidad del automóvil', 'Tarde'),
(null,'Carlos', 'López', 'Mecánica de camiones', 'Mañana'),
(null,'María', 'Martínez', 'Mecánica de autobuses', 'Tarde'),
(null,'Luis', 'González', 'Todas las especialidades', 'Completo');
select * from Mecanico;

-- insercion de datos de la tabla Mantenimiento Correctivo
INSERT INTO Mantenimiento_Correctivo (mantenimiento_correctivo_id, vehiculo_id, mecanico_id, fecha_averia, descripcion_averia, fecha_inicio_reparacion, fecha_fin_reparacion, respuestos_utilizados, costo_reparacion, causa_averia, prioridad) VALUES
(null,1, 1, '2024-02-20', 'Fallo en el motor', '2024-02-20', '2024-02-22', 'Bujías, filtro de aire', 250.00, 'Desgaste de bujías', 'Alta'),
(null,2, 2, '2024-03-05', 'Fallo en el sistema eléctrico', '2024-03-05', '2024-03-07', 'Cableado, batería', 180.00, 'Cortocircuito', 'Media'),
(null,3, 3, '2024-04-15', 'Avería en la caja de cambios', '2024-04-15', '2024-04-20', 'Engranajes, aceite', 500.00, 'Desgaste de engranajes', 'Alta'),
(null,4, 4, '2024-05-05', 'Neumático pinchado', '2024-05-05', '2024-05-05', 'Neumático nuevo', 80.00, 'Clavo en la carretera', 'Baja'),
(null,5, 5, '2024-06-20', 'Fallo en el sistema de frenos', '2024-06-20', '2024-06-22', 'Pastillas de freno, líquido de frenos', 300.00, 'Desgaste de pastillas', 'Media'),
(null,6, 1, '2024-07-10', 'Fallo en el sistema de dirección', '2024-07-10', '2024-07-12', 'Rotulas, terminales de dirección', 200.00, 'Desgaste de rótulas', 'Media'),
(null,7, 2, '2024-08-01', 'Fallo en el sistema de suspensión', '2024-08-01', '2024-08-03', 'Amortiguadores, muelles', 350.00, 'Desgaste de amortiguadores', 'Alta'),
(null,8, 3, '2024-09-18', 'Fallo en el sistema de refrigeración', '2024-09-18', '2024-09-20', 'Radiador, termostato', 280.00, 'Fallo del termostato', 'Media');
select * from Mantenimiento_Correctivo;

-- insercion de datos de la tabla Proveedor
INSERT INTO Proveedor (proveedor_id, nombre, direccion, email, telefono) VALUES
(null,'Repuestos El Triángulo', 'Calle del Motor, 123', 'repuestos@triangulo.com', '555-123-4567'),
(null,'Neumáticos La Rueda', 'Avenida de la Industria, 456', 'neumaticos@larueda.com', '555-987-6543'),
(null,'Lubricantes El Aceite', 'Polígono Industrial, nave 789', 'lubricantes@elaceite.com', '555-555-5555'),
(null,'Frenos Seguros', 'Calle del Freno, 101', 'frenos@seguros.com', '555-111-2222'),
(null,'Recambios Express', 'Avenida del Recambio, 234', 'recambios@express.com', '555-999-8888'),
(null,'Distribuidora de Autopartes', 'Carretera Nacional, km 10', 'autopartes@distribuidora.com', '555-222-3333'),
(null,'Proveedora de Herramientas', 'Calle de la Herramienta, 567', 'herramientas@proveedora.com', '555-444-5555'),
(null,'Equipos de Taller', 'Avenida del Taller, 890', 'equipos@taller.com', '555-666-7777'),
(null,'Suministros Industriales', 'Polígono Empresarial, nave 12', 'suministros@industriales.com', '555-777-8888'),
(null,'Importadora de Repuestos', 'Calle de la Importación, 345', 'importadora@repuestos.com', '555-888-9999');
select * from Proveedor;

-- insersionde datos de la tabla repuesto
INSERT INTO Repuesto (repuesto_id, codigo_repuesto, descripcion, marca, modelo, cantidad_stock, precio_unitario, proveedor_id, ubicacion_almacen, stock_minimo) VALUES
(null,'F0123', 'Filtro de aceite', 'Mann', 'W 712/80', 100, 15.50, 1, 'Estante A1', 20),
(null,'B4567', 'Bujía de encendido', 'Bosch', 'Super Plus', 50, 5.25, 1, 'Estante A2', 10),
(null,'P7890', 'Pastillas de freno', 'Brembo', 'P 50 098', 80, 45.00, 4, 'Estante B1', 15),
(null,'N1234', 'Neumático', 'Michelin', 'Energy Saver', 30, 85.00, 2, 'Estante C1', 5),
(null,'A5678', 'Amortiguador', 'Monroe', 'Reflex', 40, 60.00, 3, 'Estante B2', 10),
(null,'R9012', 'Radiador', 'Valeo', '247098', 20, 120.00, 5, 'Estante D1', 5),
(null,'T3456', 'Termostato', 'Wahler', '4107.88D', 60, 25.00, 5, 'Estante D2', 15),
(null,'F7890', 'Filtro de aire', 'Mahle', 'LX 1822', 90, 12.75, 1, 'Estante A3', 20),
(null,'C1234', 'Cable de embrague', 'Sachs', '3074 000 029', 70, 30.00, 1, 'Estante E1', 10),
(null,'B5678', 'Bomba de agua', 'SKF', 'VKPC 81707', 40, 80.00, 5, 'Estante E2', 5),
(null,'E9012', 'Electroventilador', 'Valeo', '696564', 30, 95.00, 5, 'Estante F1', 5),
(null,'M3456', 'Manguera de refrigeración', 'Gates', '05-2717', 80, 18.50, 1, 'Estante F2', 15);
select * from Repuesto;

-- insercion de datos de la tabla mantenimiento del repuesto
INSERT INTO Mantenimiento_Repuesto (mantenimiento_repuesto_id, mantenimiento_correctivo_id, repuesto_id, cantidad) VALUES
(null,1, 3, 2),
(null,1, 7, 1), 
(null,1, 11, 1),
(null,2, 1, 3), 
(null,2, 5, 2),
(null,3, 2, 1), 
(null,3, 8, 2), 
(null,3, 12, 1),
(null,4, 4, 1),
(null,5, 6, 2), 
(null,5, 9, 1),
(null,6, 10, 1),
(null,7, 1, 2), 
(null,7, 4, 1),
(null,8, 5, 1);
select * from Mantenimiento_Repuesto;

-- insercion de datos de la tabla Ordenes de trabajo
INSERT INTO Oredenes_de_Trabajo (ordenes_de_trabajo_id, vehiculo_id, tipo_de_mantenimiento_id, mecanico_id, fecha_inicio, fecha_fin, descripcion_del_trabajo, respuestos_utilizados, costo_total, estado_de_la_orden) VALUES
(null,1, 1, 1, '2024-02-20', '2024-02-22', 'Cambio de aceite y filtro', 'Filtro de aceite, aceite de motor', 150.00, 'Completada'),
(null,2, 2, 2, '2024-03-05', '2024-03-07', 'Revisión y ajuste de frenos', 'Pastillas de freno, líquido de frenos', 200.00, 'Completada'),
(null,3, 3, 3, '2024-04-15', '2024-04-20', 'Sustitución de neumáticos', 'Neumáticos nuevos', 400.00, 'En curso'),
(null,4, 1, 4, '2024-05-05', '2024-05-05', 'Revisión de luces', 'Bombillas', 50.00, 'Completada'),
(null,5, 2, 1, '2024-06-20', '2024-06-22', 'Mantenimiento de la suspensión', 'Amortiguadores', 300.00, 'Pendiente'),
(null,6, 3, 2, '2024-07-10', '2024-07-12', 'Alineación y balanceo', 'Ninguno', 100.00, 'Completada'),
(null,7, 1, 3, '2024-08-01', '2024-08-03', 'Revisión del sistema de refrigeración', 'Líquido refrigerante', 250.00, 'En curso'),
(null,8, 2, 4, '2024-09-18', '2024-09-20', 'Diagnóstico y reparación eléctrica', 'Fusibles, cableado', 180.00, 'Pendiente');
select * from Oredenes_de_Trabajo;

-- insercion de datos de la tabla Factura
INSERT INTO Facturas (factura_id, cliente_id, contratos_id, fecha_de_factura, importe, estado_de_factura) VALUES
(null,1, 1, '2024-02-28', 500.00, 'Pagada'),
(null,2, 2, '2024-03-15', 350.00, 'Pendiente'),
(null,3, 3, '2024-04-30', 700.00, 'Pagada'),
(null,4, 1, '2024-05-10', 200.00, 'Pendiente'),
(null,5, 2, '2024-06-25', 450.00, 'Pagada'),
(null,1, 3, '2024-07-05', 600.00, 'Pendiente'),
(null,2, 1, '2024-08-20', 800.00, 'Pagada'),
(null,3, 2, '2024-09-12', 250.00, 'Pendiente'),
(null,4, 3, '2024-10-28', 900.00, 'Pagada'),
(null,5, 1, '2024-11-08', 150.00, 'Pendiente'),
(null,1, 2, '2024-12-15', 550.00, 'Pagada'),
(null,2, 3, '2025-01-30', 750.00, 'Pendiente'),
(null,3, 1, '2025-02-10', 300.00, 'Pagada'),
(null,4, 2, '2025-03-25', 400.00, 'Pendiente'),
(null,5, 3, '2025-04-05', 650.00, 'Pagada'),
(null,1, 1, '2025-05-20', 850.00, 'Pendiente'),
(null,2, 2, '2025-06-12', 200.00, 'Pagada'),
(null,3, 3, '2025-07-28', 950.00, 'Pendiente'),
(null,4, 1, '2025-08-08', 100.00, 'Pagada'),
(null,5, 2, '2025-09-15', 500.00, 'Pendiente');
select * from Facturas;

-- insercion de datos de la tabla Comunicacion
INSERT INTO Comunicacion (comunicacion_id, cliente_id, vehiculo_id, tipo_comunicacion, mensaje, fecha_comunicacion) VALUES
(null,1, 1, 'Email', 'Recordatorio de cita para mantenimiento', '2024-02-15'),
(null,2, 2, 'Teléfono', 'Aviso de avería detectada', '2024-03-01'),
(null,3, 3, 'Email', 'Confirmación de reparación', '2024-04-10'),
(null,4, 1, 'Teléfono', 'Seguimiento de satisfacción', '2024-05-01'),
(null,5, 2, 'Email', 'Oferta de mantenimiento preventivo', '2024-06-15'),
(null,1, 3, 'Teléfono', 'Consulta sobre neumáticos', '2024-07-20'),
(null,2, 1, 'Email', 'Información sobre garantía', '2024-08-05'),
(null,3, 2, 'Teléfono', 'Solicitud de asistencia en carretera', '2024-09-12');
select * from Comunicacion;

-- insercion de datos de la tabla informes
INSERT INTO Informes_Estadisticos (informe_estadistico_id, tipo_informe, datos_informe) VALUES
(null,'Mantenimiento', '{"fecha": "2024-01-01", "total_mantenimientos": 150, "promedio_costo": 250.50}'),
(null,'Ventas', '{"fecha": "2024-01-01", "total_ventas": 50, "ingresos_totales": 150000.00}'),
(null,'Mantenimiento', '{"fecha": "2024-02-01", "total_mantenimientos": 180, "promedio_costo": 280.75}'),
(null,'Ventas', '{"fecha": "2024-02-01", "total_ventas": 60, "ingresos_totales": 180000.00}'),
(null,'Mantenimiento', '{"fecha": "2024-03-01", "total_mantenimientos": 200, "promedio_costo": 300.20}'),
(null,'Ventas', '{"fecha": "2024-03-01", "total_ventas": 70, "ingresos_totales": 210000.00}');
select * from Informes_EStadisticos;

-- insercion de datos de la tabla marca de neumatico
INSERT INTO Marca_Neumatico (marca_neumatico_id, marca) VALUES
(null,'Michelin'),
(null,'Bridgestone'),
(null,'Pirelli'),
(null,'Goodyear');
select * from Marca_Neumatico;

-- insercion de datos de la tabla modelo neumatico
INSERT INTO Modelo_Neumatico (modelo_neumatico_id, modelo) VALUES
(null,'Energy Saver'),
(null,'Pilot Sport 4'),
(null,'Scorpion ATR'),
(null,'Latitude Cross'),
(null,'Kinergy Eco2'),
(null,'EfficientGrip Performance');
select * from Modelo_Neumatico;

-- insercion de datos de la tabla Neumaticos
INSERT INTO Neumaticos (neumatico_id, vehiculo_id, marca_neumatico_id, modelo_neumatico_id, fecha_instalacion, kilometraje_instalacion, estado_neumatico, observaciones) VALUES
(null,1, 1, 1, '2024-02-20', 50000, 'Nuevo', 'Neumáticos delanteros'),
(null,2, 2, 2, '2024-03-05', 75000, 'Usado', 'Neumáticos traseros'),
(null,3, 3, 3, '2024-04-15', 100000, 'Reemplazado', 'Juego completo'),
(null,4, 1, 4, '2024-05-05', 25000, 'Nuevo', 'Neumático de repuesto'),
(null,5, 2, 5, '2024-06-20', 90000, 'Usado', 'Neumáticos delanteros'),
(null,1, 3, 6, '2024-07-10', 60000, 'Nuevo', 'Neumáticos traseros'),
(null,2, 1, 1, '2024-08-01', 80000, 'Reemplazado', 'Juego completo'),
(null,3, 2, 2, '2024-09-18', 110000, 'Usado', 'Neumáticos delanteros'),
(null,4, 3, 3, '2024-10-05', 30000, 'Nuevo', 'Neumático de repuesto'),
(null,5, 1, 4, '2024-11-20', 95000, 'Usado', 'Neumáticos traseros'),
(null,1, 2, 5, '2024-12-12', 65000, 'Nuevo', 'Neumáticos delanteros'),
(null,2, 3, 6, '2025-01-25', 85000, 'Usado', 'Neumáticos traseros'),
(null,3, 1, 1, '2025-02-08', 120000, 'Reemplazado', 'Juego completo');
select * from Neumaticos;

-- Insercion de datos tabla cita
INSERT INTO Citas (cliente_id, vehiculo_id, fecha_cita, tipo_de_mantenimiento_id) VALUES 
(1, 1, '2024-08-15', 1),
(2, 3, '2024-08-22', 2),
(3, 2, '2024-08-29', 3);
select * from Citas;

-- Insercion de datos tabla comunicacion
INSERT INTO Comunicacion (cliente_id, vehiculo_id, tipo_comunicacion, mensaje, fecha_comunicacion) VALUES 
(1, 1, 'App Móvil', 'Hola, necesito información sobre el cambio de neumáticos.', '2024-07-22'),
(2, 3, 'Email', 'Quisiera saber si tienen disponibilidad para un cambio de aceite la próxima semana.', '2024-07-22'),
(3, 2, 'Teléfono', 'Llamé para confirmar mi cita del 29 de agosto.', '2024-07-22');
select * from Comunicacion;