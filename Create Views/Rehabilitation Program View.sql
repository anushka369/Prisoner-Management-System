USE PRISONER_MANAGEMENT;

-- View for Rehabilitation Program
CREATE VIEW RehabilitationProgramsView AS
SELECT rp.program_id, p.first_name AS prisoner_name, rp.program_name, rp.start_date, rp.end_date, rp.status
FROM RehabilitationProgram rp
JOIN Prisoner p ON rp.prisoner_id = p.prisoner_id;