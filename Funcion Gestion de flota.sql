DELIMITER //

CREATE FUNCTION gestionar_flota_simple(
    accion VARCHAR(50), -- 'registrar', 'modificar', 'eliminar'
    id_vehiculo INT,
    matricula VARCHAR(50),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    seguro_id INT,
    tipo_vehiculo_id INT,
    fabricacion INT,
    kilometraje_actual INT,
    fecha_ultima_revision DATE,
    historial_de_mantenimiento TEXT,
    ITV DATE
)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE mensaje VARCHAR(255);

    -- Validar que los IDs existan en las tablas correspondientes
    IF seguro_id NOT IN (SELECT seguro_id FROM Seguro) THEN
        RETURN 'Error: ID de seguro no válido.';
    END IF;

    IF tipo_vehiculo_id NOT IN (SELECT tipo_vehiculo_id FROM Tipo_Vehiculo) THEN
        RETURN 'Error: ID de tipo de vehículo no válido.';
    END IF;

    CASE accion
        WHEN 'registrar' THEN
            -- Insertar nuevo vehículo
            INSERT INTO Vehiculos (matricula, marca, modelo, seguro_id, tipo_vehiculo_id, fabricacion, kilometraje_actual, fecha_ultima_revision, historial_de_mantenimiento, ITV)
            VALUES (matricula, marca, modelo, seguro_id, tipo_vehiculo_id, fabricacion, kilometraje_actual, fecha_ultima_revision, historial_de_mantenimiento, ITV);
            SET mensaje = 'Vehículo registrado correctamente.';

        WHEN 'modificar' THEN
            -- Actualizar vehículo existente
            UPDATE Vehiculos
            SET matricula = matricula, marca = marca, modelo = modelo, seguro_id = seguro_id, tipo_vehiculo_id = tipo_vehiculo_id, fabricacion = fabricacion, kilometraje_actual = kilometraje_actual, fecha_ultima_revision = fecha_ultima_revision, historial_de_mantenimiento = historial_de_mantenimiento, ITV = ITV
            WHERE vehiculo_id = id_vehiculo;
            SET mensaje = 'Vehículo modificado correctamente.';

        WHEN 'eliminar' THEN
            -- Eliminar vehículo
            DELETE FROM Vehiculos WHERE vehiculo_id = id_vehiculo;
            SET mensaje = 'Vehículo eliminado correctamente.';

        ELSE
            SET mensaje = 'Acción no válida.';
    END CASE;

    RETURN mensaje;
END //

DELIMITER ;


--   -- -------------------------------------Consulta----------------------------------------------------------------------------
-- Registrar un nuevo vehículo
SELECT gestionar_flota_simple(
    'registrar', NULL, 'ABC-123', 'Seat', 'León', 1, 1, 2020, 50000, '2024-01-15', 'Revisiones periódicas', '2025-01-15'
);

-- Modificar un vehículo existente
SELECT gestionar_flota_simple(
    'modificar', 1, 'XYZ-789', 'Ford', 'Fiesta', 2, 1, 2018, 120000, '2024-06-30', 'Mantenimiento al día', '2025-06-30'
);

-- Eliminar un vehículo
SELECT gestionar_flota_simple(
    'eliminar', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);