-- Create Visitor Table
CREATE TABLE Visitor 
(
    visitor_id INT AUTO_INCREMENT PRIMARY KEY,
    prisoner_id INT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    relationship VARCHAR(50) NOT NULL,
    visit_date DATE NOT NULL,
    visit_time TIME NOT NULL,
    FOREIGN KEY (prisoner_id) REFERENCES Prisoner(prisoner_id)
);
