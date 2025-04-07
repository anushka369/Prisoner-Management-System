USE PRISONER_MANAGEMENT;

-- View to display all prisoners with their cell information
CREATE VIEW PrisonerCellView AS
SELECT p.prisoner_id, p.first_name, p.last_name, c.cell_number, c.block_number
FROM Prisoner p
JOIN Cell c ON p.cell_id = c.cell_id;