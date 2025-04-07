USE PRISONER_MANAGEMENT;

-- Trigger to update prisoner table after releasing
DELIMITER //
CREATE TRIGGER release_prisoner AFTER UPDATE ON Prisoner
FOR EACH ROW
BEGIN
    IF NEW.status = 'Released' THEN
        UPDATE Cell
        SET current_occupancy = current_occupancy - 1
        WHERE cell_id = OLD.cell_id;
        
        -- Mark work assignments and rehabilitation programs as completed
        UPDATE WorkAssignment
        SET status = 'Completed', end_date = CURDATE()
        WHERE prisoner_id = OLD.prisoner_id AND status = 'Ongoing';
        
        UPDATE RehabilitationProgram
        SET status = 'Completed'
        WHERE prisoner_id = OLD.prisoner_id AND status = 'Enrolled';
    END IF;
END //
DELIMITER ;