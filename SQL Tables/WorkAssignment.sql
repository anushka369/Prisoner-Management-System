-- Create WorkAssignment table
CREATE TABLE WorkAssignment 
(
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    prisoner_id INT,
    task_description TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    status ENUM('Ongoing', 'Completed') NOT NULL DEFAULT 'Ongoing',
    FOREIGN KEY (prisoner_id) REFERENCES Prisoner(prisoner_id)
);
