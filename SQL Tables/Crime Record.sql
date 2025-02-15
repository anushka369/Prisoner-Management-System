-- Create CrimeRecord Table
CREATE TABLE CrimeRecord 
(
    crime_id INT AUTO_INCREMENT PRIMARY KEY,
    prisoner_id INT,
    crime_description TEXT NOT NULL,
    crime_date DATE NOT NULL,
    location VARCHAR(100),
    severity ENUM('Low', 'Medium', 'High') NOT NULL,
    FOREIGN KEY (prisoner_id) REFERENCES Prisoner(prisoner_id)
);
