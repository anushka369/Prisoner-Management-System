USE PRISONER_MANAGEMENT;

-- Trigger to auto update prisoner status
DELIMITER //
CREATE TRIGGER update_status_after_parole AFTER UPDATE ON Parole
FOR EACH ROW
BEGIN
    IF NEW.parole_status = 'Approved' THEN
        UPDATE Prisoner
        SET status = 'Paroled'
        WHERE prisoner_id = NEW.prisoner_id;
    END IF;
END;
//
DELIMITER ;
