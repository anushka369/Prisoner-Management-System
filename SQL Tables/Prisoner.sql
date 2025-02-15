-- Create Prisoner Table
CREATE TABLE Prisoner 
(
    prisoner_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    date_of_birth DATE NOT NULL,
    date_of_incarceration DATE NOT NULL,
    date_of_release DATE,
    crime_committed TEXT NOT NULL,
    status ENUM('Incarcerated', 'Released', 'Paroled') NOT NULL,
    cell_id INT,
    FOREIGN KEY (cell_id) REFERENCES Cell(cell_id)
);