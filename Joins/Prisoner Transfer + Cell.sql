USE PRISONER_MANAGEMENT;

-- Join prisoner transfers with cell numbers
SELECT 
    pt.transfer_id,
    p.first_name,
    p.last_name,
    c1.cell_number AS from_cell,
    c2.cell_number AS to_cell,
    pt.transfer_date,
    pt.reason
FROM PrisonerTransfer pt
JOIN Prisoner p ON pt.prisoner_id = p.prisoner_id
JOIN Cell c1 ON pt.from_cell_id = c1.cell_id
JOIN Cell c2 ON pt.to_cell_id = c2.cell_id;
