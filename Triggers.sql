-- Antes de insertar un nuevo vehículo, verifique que la matrícula no existe ya en la base de datos.
DELIMITER //

CREATE TRIGGER tr_vehiculos_before_insert
BEFORE INSERT ON Vehiculos
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM Vehiculos WHERE matricula = NEW.matricula) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: La matrícula ya existe en la base de datos.';
    END IF;
END //

DELIMITER ;

-- Llamado al trigger (intenta insertar un vehículo con una matrícula existente)
INSERT INTO Vehiculos (
matricula, marca, modelo, seguro_id, tipo_vehiculo_id, fabricacion, kilometraje_actual, fecha_ultima_revision, historial_de_mantenimiento, ITV)
VALUES ('ABC-123', 'Seat', 'León', 1, 1, 2020, 50000, '2024-01-15', 'Revisiones periódicas', '2025-01-15');

-- Antes de actualizar un vehículo, verifique que la nueva matrícula no existe ya en la base de datos 
-- (si es diferente a la matrícula actual).
DELIMITER //

CREATE TRIGGER tr_vehiculos_before_update
BEFORE UPDATE ON Vehiculos
FOR EACH ROW
BEGIN
    IF NEW.matricula <> OLD.matricula AND EXISTS (SELECT 1 FROM Vehiculos WHERE matricula = NEW.matricula) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: La matrícula ya existe en la base de datos.';
    END IF;
END //

DELIMITER ;

-- Llamado al trigger (intenta modificar la matrícula de un vehículo a una existente)
UPDATE Vehiculos
SET matricula = 'XYZ-789'
WHERE vehiculo_id = 1;


