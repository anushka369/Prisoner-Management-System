-- Create Parole Table
CREATE TABLE Parole 
(
    parole_id INT AUTO_INCREMENT PRIMARY KEY,
    prisoner_id INT,
    parole_date DATE NOT NULL,
    parole_status ENUM('Approved', 'Denied', 'Pending') NOT NULL,
    FOREIGN KEY (prisoner_id) REFERENCES Prisoner(prisoner_id)
);