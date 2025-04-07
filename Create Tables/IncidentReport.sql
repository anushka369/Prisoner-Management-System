USE PRISONER_MANAGEMENT;

-- Create IncidentReport table
CREATE TABLE IncidentReport 
(
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    prisoner_id INT,
    staff_id INT,
    incident_description TEXT NOT NULL,
    incident_date DATE NOT NULL,
    FOREIGN KEY (prisoner_id) REFERENCES Prisoner(prisoner_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);
