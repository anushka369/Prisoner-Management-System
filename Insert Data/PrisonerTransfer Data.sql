-- Insert sample data into PrisonerTransfer
INSERT INTO PrisonerTransfer (prisoner_id, from_cell_id, to_cell_id, transfer_date, reason)
VALUES 
(1, 1, 2, '2023-09-01', 'Security reasons'),
(2, 2, 3, '2023-09-10', 'Overcrowding in previous cell');