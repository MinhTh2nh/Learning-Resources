/* CREATE_P_V.SQL                                    	*/
/* Introduction to SQL 					*/
/* Script file for MySQL DBMS			*/
/* This script file creates the following tables:	*/
/* V  - default vendor table data			*/
/* P  - default product table data			*/
/* and loads the default data rows			*/

BEGIN;

DROP TABLE IF EXISTS P;
DROP TABLE IF EXISTS V;

CREATE TABLE V ( 
V_CODE 		INTEGER PRIMARY KEY, 
V_NAME 		VARCHAR(35) NOT NULL, 
V_CONTACT 	VARCHAR(15) NOT NULL, 
V_AREACODE 	CHAR(3) NOT NULL, 
V_PHONE 	CHAR(8) NOT NULL, 
V_STATE 	CHAR(2) NOT NULL, 
V_ORDER 	CHAR(1) NOT NULL);


CREATE TABLE P (
P_CODE 		VARCHAR(10) PRIMARY KEY,
P_DESCRIPT 	VARCHAR(35) NOT NULL,
P_INDATE 	DATETIME NOT NULL,
P_QOH 	        INT NOT NULL,
P_MIN 		INT NOT NULL,
P_PRICE 	NUMERIC(8,2) NOT NULL,
P_DISCOUNT 	NUMERIC(4,2) NOT NULL,
V_CODE 		INT);


/* Loading data rows					*/


//* V rows						*/
INSERT INTO V VALUES(21225,'Bryson, Inc.'    ,'Smithson','615','223-3234','TN','Y');
INSERT INTO V VALUES(21226,'SuperLoo, Inc.'  ,'Flushing','904','215-8995','FL','N');
INSERT INTO V VALUES(21231,'D&E Supply'      ,'Singh'   ,'615','228-3245','TN','Y');
INSERT INTO V VALUES(21344,'Gomez Bros.'     ,'Ortega'  ,'615','889-2546','KY','N');
INSERT INTO V VALUES(22567,'Dome Supply'     ,'Smith'   ,'901','678-1419','GA','N');
INSERT INTO V VALUES(23119,'Randsets Ltd.'   ,'Anderson','901','678-3998','GA','Y');
INSERT INTO V VALUES(24004,'Brackman Bros.'  ,'Browning','615','228-1410','TN','N');
INSERT INTO V VALUES(24288,'ORDVA, Inc.'     ,'Hakford' ,'615','898-1234','TN','Y');
INSERT INTO V VALUES(25443,'B&K, Inc.'       ,'Smith'   ,'904','227-0093','FL','N');
INSERT INTO V VALUES(25501,'Damal Supplies'  ,'Smythe'  ,'615','890-3529','TN','N');
INSERT INTO V VALUES(25595,'Rubicon Systems' ,'Orton'   ,'904','456-0092','FL','Y');

/* P rows						*/
INSERT INTO P VALUES('11QER/31','Power painter, 15 psi., 3-nozzle'     ,'2015-11-03',  8,  5,109.99,0.00,25595);
INSERT INTO P VALUES('13-Q2/P2','7.25-in. pwr. saw blade'              ,'2015-12-13', 32, 15, 14.99,0.05,21344);
INSERT INTO P VALUES('14-Q1/L3','9.00-in. pwr. saw blade'              ,'2015-11-13', 18, 12, 17.49,0.00,21344);
INSERT INTO P VALUES('1546-QQ2','Hrd. cloth, 1/4-in., 2x50'            ,'2016-01-15', 15,  8, 39.95,0.00,23119);
INSERT INTO P VALUES('1558-QW1','Hrd. cloth, 1/2-in., 3x50'            ,'2016-01-15', 23,  5, 43.99,0.00,23119);
INSERT INTO P VALUES('2232/QTY','B&D jigsaw, 12-in. blade'             ,'2015-12-30',  8,  5,109.92,0.05,24288);
INSERT INTO P VALUES('2232/QWE','B&D jigsaw, 8-in. blade'              ,'2015-12-24',  6,  5, 99.87,0.05,24288);
INSERT INTO P VALUES('2238/QPD','B&D cordless drill, 1/2-in.'          ,'2016-01-20', 12,  5, 38.95,0.05,25595);
INSERT INTO P VALUES('23109-HB','Claw hammer'                          ,'2016-01-20', 23, 10,  9.95,0.10,21225);
INSERT INTO P VALUES('23114-AA','Sledge hammer, 12 lb.'                ,'2016-01-02',  8,  5, 14.40,0.05,NULL);
INSERT INTO P VALUES('54778-2T','Rat-tail file, 1/8-in. fine'          ,'2015-12-15', 43, 20,  4.99,0.00,21344);
INSERT INTO P VALUES('89-WRE-Q','Hicut chain saw, 16 in.'              ,'2016-02-07', 11,  5,256.99,0.05,24288);
INSERT INTO P VALUES('PVC23DRT','PVC pipe, 3.5-in., 8-ft'              ,'2016-02-20',188, 75,  5.87,0.00,NULL);
INSERT INTO P VALUES('SM-18277','1.25-in. metal screw, 25'             ,'2016-03-01',172, 75,  6.99,0.00,21225);
INSERT INTO P VALUES('SW-23116','2.5-in. wd. screw, 50'                ,'2016-02-24',237,100,  8.45,0.00,21231);
INSERT INTO P VALUES('WR3/TT3' ,'Steel matting, 4''x8''x1/6", .5" mesh','2016-01-17', 18,  5,119.95,0.10,25595);