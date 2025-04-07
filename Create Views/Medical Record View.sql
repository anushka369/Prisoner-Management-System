USE PRISONER_MANAGEMENT;

-- View to display all medical records with doctor details
CREATE VIEW MedicalRecordView AS
SELECT mr.medical_id, p.first_name AS prisoner_name, s.first_name AS doctor_name, mr.diagnosis, mr.treatment, mr.date_of_examination
FROM MedicalRecord mr
JOIN Prisoner p ON mr.prisoner_id = p.prisoner_id
JOIN Staff s ON mr.doctor_id = s.staff_id;