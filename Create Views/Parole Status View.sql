USE PRISONER_MANAGEMENT;

-- View for Parole Status
CREATE VIEW ParoleStatusView AS
SELECT 
    pr.parole_id,
    p.first_name,
    p.last_name,
    pr.parole_date,
    pr.parole_status
FROM Parole pr
JOIN Prisoner p ON pr.prisoner_id = p.prisoner_id;