-- Esta sentencia llama al procedimiento almacenado sp_reporte_mantenimientos_vehiculoy le pasa el valor 1 como argumento 
-- id_vehiculo. El procedimiento almacenado se ejecuta y muestra el informe con el nombre del vehículo y el total de 
-- mantenimientos preventivos para el vehículo con vehiculo_id = 1.

DELIMITER //

CREATE PROCEDURE sp_reporte_mantenimientos_vehiculo(IN id_vehiculo INT)
BEGIN
    -- Declaración de variables
    DECLARE nombre_vehiculo VARCHAR(255);
    DECLARE total_mantenimientos INT;

    -- Obtener el nombre del vehículo
    SELECT CONCAT(marca, ' ', modelo) INTO nombre_vehiculo
    FROM Vehiculos
    WHERE vehiculo_id = id_vehiculo;

    -- Obtener el total de mantenimientos preventivos
    SELECT COUNT(*) INTO total_mantenimientos
    FROM Mantenimiento_Preventivo
    WHERE vehiculo_id = id_vehiculo;

    -- Mostrar los resultados
    SELECT nombre_vehiculo AS "Vehículo", total_mantenimientos AS "Total Mantenimientos Preventivos";
END //

DELIMITER ;

CALL sp_reporte_mantenimientos_vehiculo(1);

-- Esta sentencia llama al procedimiento almacenado sp_obtener_nombre_clientey le pasa el valor 1 como argumento 
-- id_cliente. El procedimiento almacenado se ejecuta y muestra el nombre del cliente con cliente_id = 1.

DELIMITER //

CREATE PROCEDURE sp_obtener_nombre_cliente(IN id_cliente INT)
BEGIN
    -- Declaración de variables
    DECLARE nombre_cliente VARCHAR(255);

    -- Obtener el nombre del cliente
    SELECT nombre_razon_social INTO nombre_cliente
    FROM Clientes
    WHERE cliente_id = id_cliente;

    -- Mostrar el nombre del cliente
    SELECT nombre_cliente AS "Nombre del Cliente";
END //

DELIMITER ;

CALL sp_obtener_nombre_cliente(1);