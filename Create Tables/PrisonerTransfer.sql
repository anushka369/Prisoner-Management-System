USE PRISONER_MANAGEMENT;

-- Create PrisonerTransfer table
CREATE TABLE PrisonerTransfer 
(
    transfer_id INT AUTO_INCREMENT PRIMARY KEY,
    prisoner_id INT,
    from_cell_id INT,
    to_cell_id INT,
    transfer_date DATE NOT NULL,
    reason TEXT,
    FOREIGN KEY (prisoner_id) REFERENCES Prisoner(prisoner_id),
    FOREIGN KEY (from_cell_id) REFERENCES Cell(cell_id),
    FOREIGN KEY (to_cell_id) REFERENCES Cell(cell_id)
);