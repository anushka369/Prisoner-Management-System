USE PRISONER_MANAGEMENT;

-- Trigger to validate parole for incarcerated prisoners
DELIMITER //
CREATE TRIGGER validate_parole BEFORE INSERT ON Parole
FOR EACH ROW
BEGIN
    DECLARE prisoner_status ENUM('Incarcerated', 'Released', 'Paroled');

    SELECT status INTO prisoner_status
    FROM Prisoner
    WHERE prisoner_id = NEW.prisoner_id;

    IF prisoner_status != 'Incarcerated' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Only incarcerated prisoners can be considered for parole.';
    END IF;
END;
//
DELIMITER ;
