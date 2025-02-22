DELIMITER //

CREATE FUNCTION gestionar_app_movil(
    accion VARCHAR(50), -- 'historial_mantenimiento', 'solicitar_cita', 'comunicar'
    cliente_id INT,
    vehiculo_id INT,
    fecha_cita DATE,
    tipo_de_mantenimiento_id INT,
    mensaje TEXT
)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE mensaje VARCHAR(255);

    -- Validar que los IDs existan en las tablas correspondientes
    IF cliente_id NOT IN (SELECT cliente_id FROM Clientes) THEN
        RETURN 'Error: ID de cliente no válido.';
    END IF;

    IF vehiculo_id NOT IN (SELECT vehiculo_id FROM Vehiculos) THEN
        RETURN 'Error: ID de vehículo no válido.';
    END IF;

    IF tipo_de_mantenimiento_id NOT IN (SELECT tipo_de_mantenimiento_id FROM Tipo_de_Mantenimiento) THEN
        RETURN 'Error: ID de tipo de mantenimiento no válido.';
    END IF;

    CASE accion
        WHEN 'historial_mantenimiento' THEN
            -- Obtener historial de mantenimiento del vehículo
            SELECT GROUP_CONCAT(CONCAT(mp.fecha_realizada, ': ', tm.nombre_de_mantenimiento) SEPARATOR '\n') INTO mensaje
            FROM Mantenimiento_Preventivo AS mp
            INNER JOIN Tipo_de_Mantenimiento AS tm ON mp.tipo_de_mantenimiento_id = tm.tipo_de_mantenimiento_id
            WHERE mp.vehiculo_id = vehiculo_id;

            -- Si no hay historial, mostrar mensaje informativo
            IF mensaje IS NULL THEN
                SET mensaje = 'No hay historial de mantenimiento para este vehículo.';
            END IF;

        WHEN 'solicitar_cita' THEN
            -- Insertar nueva cita
            INSERT INTO Citas (cliente_id, vehiculo_id, fecha_cita, tipo_de_mantenimiento_id)
            VALUES (cliente_id, vehiculo_id, fecha_cita, tipo_de_mantenimiento_id);
            SET mensaje = 'Cita solicitada correctamente.';

        WHEN 'comunicar' THEN
            -- Insertar nuevo mensaje
            INSERT INTO Comunicacion (cliente_id, vehiculo_id, tipo_comunicacion, mensaje, fecha_comunicacion)
            VALUES (cliente_id, vehiculo_id, 'App Móvil', mensaje, CURDATE());
            SET mensaje = 'Mensaje enviado correctamente.';

        ELSE
            SET mensaje = 'Acción no válida.';
    END CASE;

    RETURN mensaje;
END //

DELIMITER ;

-- ------------------------------------Consulta----------------------------------------------------------------------------
-- Solicitar cita
SELECT gestionar_app_movil(
    'solicitar_cita', 1, 1, '2024-08-15', 1, NULL
);