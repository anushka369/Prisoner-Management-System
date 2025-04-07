USE PRISONER_MANAGEMENT;

-- Trigger to validate crime record
DELIMITER //
CREATE TRIGGER validate_crime_record BEFORE INSERT ON CrimeRecord
FOR EACH ROW
BEGIN
    DECLARE prisoner_exists INT;
    DECLARE prisoner_status ENUM('Incarcerated', 'Released', 'Paroled');

    SELECT COUNT(*), status INTO prisoner_exists, prisoner_status
    FROM Prisoner
    WHERE prisoner_id = NEW.prisoner_id;

    IF prisoner_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Prisoner ID does not exist.';
    END IF;

    IF prisoner_status != 'Incarcerated' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot add crime record for a non-incarcerated prisoner.';
    END IF;
END;
//
DELIMITER ;
