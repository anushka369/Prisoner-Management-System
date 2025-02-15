-- Create RehabilitationProgram table
CREATE TABLE RehabilitationProgram 
(
    program_id INT AUTO_INCREMENT PRIMARY KEY,
    prisoner_id INT,
    program_name VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status ENUM('Enrolled', 'Completed', 'Dropped') NOT NULL DEFAULT 'Enrolled',
    FOREIGN KEY (prisoner_id) REFERENCES Prisoner(prisoner_id)
);