-- Create DisciplinaryAction table
CREATE TABLE DisciplinaryAction
(
    action_id INT AUTO_INCREMENT PRIMARY KEY,
    prisoner_id INT,
    action_taken TEXT NOT NULL,
    action_date DATE NOT NULL,
    severity ENUM('Warning', 'Medium', 'Severe') NOT NULL,
    staff_id INT,
    FOREIGN KEY (prisoner_id) REFERENCES Prisoner(prisoner_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);
