USE PRISONER_MANAGEMENT;

-- Create VisitLog table
CREATE TABLE VisitLog 
(
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    visitor_id INT,
    prisoner_id INT,
    visit_date DATE NOT NULL,
    visit_time TIME NOT NULL,
    remarks TEXT,
    FOREIGN KEY (visitor_id) REFERENCES Visitor(visitor_id),
    FOREIGN KEY (prisoner_id) REFERENCES Prisoner(prisoner_id)
);
