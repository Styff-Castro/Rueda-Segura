-- Índice en la tabla Vehiculos
CREATE INDEX idx_matricula ON Vehiculos (matricula); -- ref de la columna matricula en la tabla vehiculo
CREATE INDEX idx_seguro_id ON Vehiculos (seguro_id); -- ref de la columna seguro en la tabla vehiculo
CREATE INDEX idx_tipo_vehiculo_id ON Vehiculos (tipo_vehiculo_id); -- ref de la columna tipo de vehiculo en la tabla vehiculo

-- Índice en la tabla Seguro
CREATE INDEX idx_numero_de_poliza ON Seguro (numero_de_poliza); -- ref de la columna numero de poliza en la tabla seguro

