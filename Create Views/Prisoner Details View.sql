USE PRISONER_MANAGEMENT;

-- View for Prisoner Details
CREATE VIEW PrisonerDetailsView AS
SELECT 
  p.prisoner_id, 
  p.first_name, 
  p.last_name, 
  p.gender, 
  p.date_of_birth, 
  c.cell_number, 
  c.block_number, 
  p.status
FROM Prisoner p
JOIN Cell c ON p.cell_id = c.cell_id;
