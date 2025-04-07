USE PRISONER_MANAGEMENT;

-- View for Incident Report
CREATE VIEW IncidentReportsView AS
SELECT 
  ir.report_id, 
  p.first_name AS prisoner_name, 
  s.first_name AS staff_name, 
  ir.incident_description, 
  ir.incident_date
FROM IncidentReport ir
JOIN Prisoner p ON ir.prisoner_id = p.prisoner_id
JOIN Staff s ON ir.staff_id = s.staff_id;
