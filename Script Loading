/* 1. Import patients.csv */
LOAD DATA LOCAL INFILE 'C:\Users\immba\Downloads\patients.csv'
INTO TABLE patients
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Skrip pembersihan format tanggal patients.csv (M/D/YYYY -> YYYY-MM-DD)
SET FOREIGN KEY CHECKS = 0;
ALTER TABLE patients MODIFY COLUMN dt_brt VARCHAR(20);
UPDATE patients SET dt_brt = STR_TO_DATE(TRIM(dt_brt), '%m/%d/%Y');
ALTER TABLE patients MODIFY COLUMN dt_brt DATE NOT NULL;
SET FOREIGN KEY CHECKS = 1;

/* 2. Import visits.csv */
LOAD DATA LOCAL INFILE 'C:\Users\immba\Downloads\visits.csv'
INTO TABLE visits
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

/* 3. Import payments.csv */
LOAD DATA LOCAL INFILE 'C:\Users\immba\Downloads\/payments.csv'
INTO TABLE payments
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

/* 4. Import bills.csv */
LOAD DATA LOCAL INFILE 'C:\Users\immba\Downloads\/bills.csv'
INTO TABLE bills
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

/* 5. Import medicine_bills.csv */
LOAD DATA LOCAL INFILE 'C:\Users\immba\Downloads\/medicine_bills.csv'
INTO TABLE medicine_bills
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
