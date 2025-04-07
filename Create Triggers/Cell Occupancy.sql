USE PRISONER_MANAGEMENT;

-- Trigger to update the cell occupancy
DELIMITER //
CREATE TRIGGER update_cell_occupancy AFTER INSERT ON Prisoner
FOR EACH ROW
BEGIN
    UPDATE Cell
    SET current_occupancy = current_occupancy + 1
    WHERE cell_id = NEW.cell_id;
    
    -- Log assignment to WorkAssignment
    INSERT INTO WorkAssignment (prisoner_id, task_description, start_date)
    VALUES (NEW.prisoner_id, 'General Maintenance', CURDATE());
END //
DELIMITER ;