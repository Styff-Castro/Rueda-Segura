DELIMITER //

CREATE FUNCTION obtener_datos_telematicos(id_vehiculo INT)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
  DECLARE kilometraje INT;
  DECLARE consumo_combustible DECIMAL(10, 2);
  DECLARE fallos_mecanicos VARCHAR(255);

  -- Obtener el kilometraje actual del vehículo
  SELECT kilometraje_actual INTO kilometraje
  FROM Vehiculos
  WHERE vehiculo_id = id_vehiculo;

  -- Manejar el caso en que no se encuentra el vehículo
  IF kilometraje IS NULL THEN
    RETURN 'Vehículo no encontrado';
  END IF;

  -- Simular el consumo de combustible (puedes usar datos reales si los tienes)
  SET consumo_combustible = kilometraje * 0.1; -- Asumiendo un consumo de 10 litros por cada 100 km

  -- Simular fallos mecánicos (puedes usar datos reales de un sistema de diagnóstico)
  IF kilometraje > 100000 THEN
    SET fallos_mecanicos = 'Revisión de motor necesaria';
  ELSE
    SET fallos_mecanicos = 'Sin fallos detectados';
  END IF;

  -- Construir el mensaje con los datos telemáticos
  RETURN CONCAT(
    'Kilometraje: ', kilometraje, ' km, ',
    'Consumo de combustible: ', consumo_combustible, ' litros, ',
    'Fallos mecánicos: ', fallos_mecanicos
  );
END //

DELIMITER ;

-- ----------------------------------------------------Consulta-----------------------------------------------------------------

select rueda_segura.obtener_datos_telematicos(3);


