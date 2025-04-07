USE PRISONER_MANAGEMENT;

-- Trigger to update cell occupancy on transfer
DELIMITER //
CREATE TRIGGER transfer_update_cell AFTER INSERT ON PrisonerTransfer
FOR EACH ROW
BEGIN
    -- Decrease from_cell occupancy
    UPDATE Cell
    SET current_occupancy = current_occupancy - 1
    WHERE cell_id = NEW.from_cell_id;

    -- Increase to_cell occupancy
    UPDATE Cell
    SET current_occupancy = current_occupancy + 1
    WHERE cell_id = NEW.to_cell_id;

    -- Also update prisoner's cell_id to new cell
    UPDATE Prisoner
    SET cell_id = NEW.to_cell_id
    WHERE prisoner_id = NEW.prisoner_id;
END;
//
DELIMITER ;
