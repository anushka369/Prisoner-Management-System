USE PRISONER_MANAGEMENT;

-- Create Cell Table
CREATE TABLE Cell 
(
    cell_id INT AUTO_INCREMENT PRIMARY KEY,
    cell_number VARCHAR(10) NOT NULL UNIQUE,
    capacity INT NOT NULL,
    current_occupancy INT DEFAULT 0,
    block_number VARCHAR(10) NOT NULL
);