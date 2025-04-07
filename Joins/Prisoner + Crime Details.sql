USE PRISONER_MANAGEMENT;

-- Join all prisoners and crime details
SELECT 
    p.prisoner_id,
    p.first_name,
    p.last_name,
    c.crime_description,
    c.crime_date,
    c.severity
FROM Prisoner p
LEFT JOIN CrimeRecord c ON p.prisoner_id = c.prisoner_id;
