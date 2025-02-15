-- Create GuardDutySchedule table
CREATE TABLE GuardDutySchedule 
(
    duty_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT,
    shift_start TIME NOT NULL,
    shift_end TIME NOT NULL,
    duty_date DATE NOT NULL,
    location VARCHAR(50) NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);
