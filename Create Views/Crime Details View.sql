USE PRISONER_MANAGEMENT;

-- View for Crime Details
CREATE VIEW CrimeDetailsView AS
SELECT 
    c.crime_id,
    p.first_name,
    p.last_name,
    c.crime_description,
    c.crime_date,
    c.location,
    c.severity
FROM CrimeRecord c
JOIN Prisoner p ON c.prisoner_id = p.prisoner_id;