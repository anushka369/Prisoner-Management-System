CREATE TABLE PRISONER
(
    -> SNO INT AUTO_INCREMENT PRIMARY KEY, 
    -> NAME VARCHAR(100), 
    -> CELLNO INT, 
    -> ADMISSIONDATE DATE, 
    -> SENTENCEPERIOD INT, 
    -> RELEASEDATE DATE, 
    -> MEDICALDETAILS VARCHAR(100), 
    -> FOOD VARCHAR(100), 
    -> VISITINGPRIVILEGES VARCHAR(100) 
);

ALTER TABLE PRISONER ADD UNIQUE(CELLNO);
ALTER TABLE PRISONER ADD CRIME VARCHAR(100);
