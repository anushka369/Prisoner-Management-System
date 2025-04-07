USE PRISONER_MANAGEMENT;

-- View for Work Assignment
CREATE VIEW WorkAssignmentsView AS
SELECT 
  wa.assignment_id, 
  p.first_name AS prisoner_name, 
  wa.task_description, 
  wa.start_date, 
  wa.end_date, 
  wa.status
FROM WorkAssignment wa
JOIN Prisoner p ON wa.prisoner_id = p.prisoner_id;
