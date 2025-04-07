USE PRISONER_MANAGEMENT;

-- Create SecurityIncident table
CREATE TABLE SecurityIncident 
(
    incident_id INT AUTO_INCREMENT PRIMARY KEY,
    incident_date DATE NOT NULL,
    location VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    severity ENUM('Low', 'Medium', 'High') NOT NULL,
    staff_id INT,
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);
