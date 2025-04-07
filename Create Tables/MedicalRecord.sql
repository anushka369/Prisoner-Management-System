USE PRISONER_MANAGEMENT;

-- Create MedicalRecord Table
CREATE TABLE MedicalRecord 
(
    medical_id INT AUTO_INCREMENT PRIMARY KEY,
    prisoner_id INT,
    diagnosis TEXT NOT NULL,
    treatment TEXT NOT NULL,
    date_of_examination DATE NOT NULL,
    doctor_id INT,
    FOREIGN KEY (prisoner_id) REFERENCES Prisoner(prisoner_id),
    FOREIGN KEY (doctor_id) REFERENCES Staff(staff_id)
);
