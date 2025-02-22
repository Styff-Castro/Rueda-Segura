DELIMITER //

CREATE FUNCTION gestionar_neumaticos(
    accion VARCHAR(50), -- 'registrar', 'modificar', 'eliminar'
    id_neumatico INT,
    vehiculo_id INT,
    marca_neumatico_id INT,
    modelo_neumatico_id INT,
    fecha_instalacion DATE,
    kilometraje_instalacion INT,
    estado_neumatico VARCHAR(50),
    observaciones TEXT
)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE mensaje VARCHAR(255);

    -- Validar que los IDs existan en las tablas correspondientes
    IF vehiculo_id NOT IN (SELECT vehiculo_id FROM Vehiculos) THEN
        RETURN 'Error: ID de vehículo no válido.';
    END IF;

    IF marca_neumatico_id NOT IN (SELECT marca_neumatico_id FROM Marca_Neumatico) THEN
        RETURN 'Error: ID de marca de neumático no válido.';
    END IF;

    IF modelo_neumatico_id NOT IN (SELECT modelo_neumatico_id FROM Modelo_Neumatico) THEN
        RETURN 'Error: ID de modelo de neumático no válido.';
    END IF;

    CASE accion
        WHEN 'registrar' THEN
            -- Insertar nuevo neumático
            INSERT INTO Neumaticos (vehiculo_id, marca_neumatico_id, modelo_neumatico_id, fecha_instalacion, kilometraje_instalacion, estado_neumatico, observaciones)
            VALUES (vehiculo_id, marca_neumatico_id, modelo_neumatico_id, fecha_instalacion, kilometraje_instalacion, estado_neumatico, observaciones);
            SET mensaje = 'Neumático registrado correctamente.';

        WHEN 'modificar' THEN
            -- Actualizar neumático existente
            UPDATE Neumaticos
            SET vehiculo_id = vehiculo_id, marca_neumatico_id = marca_neumatico_id, modelo_neumatico_id = modelo_neumatico_id, fecha_instalacion = fecha_instalacion, kilometraje_instalacion = kilometraje_instalacion, estado_neumatico = estado_neumatico, observaciones = observaciones
            WHERE neumatico_id = id_neumatico;
            SET mensaje = 'Neumático modificado correctamente.';

        WHEN 'eliminar' THEN
            -- Eliminar neumático
            DELETE FROM Neumaticos WHERE neumatico_id = id_neumatico;
            SET mensaje = 'Neumático eliminado correctamente.';

        ELSE
            SET mensaje = 'Acción no válida.';
    END CASE;

    RETURN mensaje;
END //

DELIMITER ;

-- ------------------------------------Consulta-----------------------------------------------------------------------------------

-- Registrar un nuevo neumático
SELECT gestionar_neumaticos(
    'registrar', NULL, 1, 1, 1, '2024-07-22', 50000, 'Nuevo', 'Neumático delantero izquierdo'
);

-- Modificar un neumático existente
SELECT gestionar_neumaticos(
    'modificar', 1, 1, 2, 2, '2024-07-22', 50000, 'Usado', 'Neumático delantero derecho'
);

-- Eliminar un neumático
SELECT gestionar_neumaticos(
    'eliminar', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);