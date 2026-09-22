CREATE DATABASE if NOT EXISTS case_b;
USE case_b;

DROP TABLE if EXISTS medicine_bills;
DROP TABLE if EXISTS bills;
DROP TABLE if EXISTS payments;
DROP TABLE if EXISTS visits;
DROP TABLE if EXISTS patients;

CREATE TABLE patients (
	pat_id VARCHAR(10) NOT NULL,
	f_name VARCHAR(50) NOT NULL,
	l_name VARCHAR(50) NOT NULL,
	dt_brt DATE NOT NULL, 
	b_type VARCHAR(5) NOT NULL,
	PRIMARY KEY (pat_id)
);

CREATE TABLE visits(
	refr_no VARCHAR(15) NOT NULL,
	pat_id VARCHAR(10) NOT NULL,
	medt_id VARCHAR(10) NOT NULL,
	rom_id VARCHAR(10) DEFAULT NULL,
	vis_en DATETIME NOT NULL,
	vis_ex DATETIME,
	vstat_cd SMALLINT(1) NOT NULL,
	PRIMARY KEY(refr_no),
	FOREIGN KEY(pat_id) REFERENCES patients (pat_id)
);

CREATE TABLE payments (
	refr_no VARCHAR(15) NOT NULL,
	pat_id VARCHAR(10) NOT NULL,
	pmnt_no SMALLINT(1) NOT NULL,
	pmnt_date DATETIME NOT NULL,
	pmnt_amt DECIMAL(15, 2),
	meth_cd SMALLINT(1) NOT NULL,
	pstat_cd SMALLINT(1) NOT NULL,
	PRIMARY KEY (refr_no, pmnt_no),
	FOREIGN KEY (refr_no) REFERENCES visits (refr_no)
);

CREATE TABLE bills (
	refr_no VARCHAR(10) NOT NULL,
	pat_id VARCHAR(10) NOT NULL,
	bill_date DATETIME,
	bill_amt DECIMAL(15, 2),
	bstat_cd SMALLINT(1),
	btype_cd VARCHAR(10),
	PRIMARY KEY (refr_no),
	FOREIGN KEY (refr_no) REFERENCES visits (refr_no)
);

CREATE TABLE medicine_bills (
	refr_no VARCHAR(10) NOT NULL, 
	pat_id VARCHAR(10) NOT NULL,
	bill_date DATETIME NOT NULL,
	bill_amt DECIMAL(15, 2) NOT NULL,
	bstat_cd SMALLINT(1),
	PRIMARY KEY (refr_no),
	FOREIGN KEY (refr_no) REFERENCES visits (refr_no)
);

/* format tgl file: (M/D/YYYY) -> format SQL: (YYYY-MM-DD) */
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE patients;
ALTER TABLE patients MODIFY COLUMN dt_brt VARCHAR(20);
SET FOREIGN_KEY_CHECKS = 1;

UPDATE patients SET dt_brt = STR_TO_DATE(TRIM(dt_brt), '%m/%d/%Y');
ALTER TABLE patients MODIFY COLUMN dt_brt DATE NOT NULL;
