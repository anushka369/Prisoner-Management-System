USE PRISONER_MANAGEMENT;

-- View for Visitor Log
CREATE VIEW VisitorLogView AS
SELECT 
    v.visitor_id,
    v.first_name AS visitor_first_name,
    v.last_name AS visitor_last_name,
    v.relationship,
    v.visit_date,
    v.visit_time,
    p.first_name AS prisoner_first_name,
    p.last_name AS prisoner_last_name
FROM Visitor v
JOIN Prisoner p ON v.prisoner_id = p.prisoner_id;