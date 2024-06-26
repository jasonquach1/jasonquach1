CREATE TABLE Babies(
	ID INT PRIMARY KEY,
	FIRST TEXT,
	LAST TEXT,
	HAIR TEXT,
	EYES TEXT
);

INSERT INTO Babies(ID,FIRST,LAST,HAIR,EYES) VALUES (10,"MICHAEL","JACKSON","BLONDE","BLUE");
INSERT INTO Babies(ID,FIRST,LAST,HAIR,EYES) VALUES (12,"MICHAEL","BOLTON","BLONDE","BLUE");
INSERT INTO Babies(ID,FIRST,LAST,HAIR,EYES) VALUES (8,"MILES","PROWER","ORANGE","BLUE");

CREATE TABLE Attendance(
	ID INT PRIMARY KEY,
	DATE INT,
	BABY_ID INT
);

INSERT INTO Attendance(ID,DATE,BABY_ID) VALUES (26,"3/16/23",10);
INSERT INTO Attendance(ID,DATE,BABY_ID) VALUES (29,"3/17/23",12);
INSERT INTO Attendance(ID,DATE,BABY_ID) VALUES (2,"3/17/23",8);

CREATE TABLE DaycareEmployees(
	ID INT PRIMARY KEY,
	FIRST TEXT,
	LAST TEXT
);

INSERT INTO DaycareEmployees(ID,FIRST,LAST) VALUES (22,"JANINE","LONGBOTTOM");
INSERT INTO DaycareEmployees(ID,FIRST,LAST) VALUES (80,"JANINE","STEVENS");
INSERT INTO DaycareEmployees(ID,FIRST,LAST) VALUES (101,"MIGUEL","JOHNSON");
INSERT INTO DaycareEmployees(ID,FIRST,LAST) VALUES (111,"SONIC","HEDGEHOG");

CREATE TABLE Interviews(
	ID INT PRIMARY KEY,
	EMP_ID INT,
	CRIME_TYPE TEXT,
	INTERVIEW TEXT,
	DATE INT,
	FOREIGN KEY(EMP_ID) REFERENCES DaycareEmployees(ID)
);

INSERT INTO Interviews(ID,EMP_ID,CRIME_TYPE,INTERVIEW,DATE) VALUES (5,22,"COOKIE","BLUE EYED MIKE DID IT","3/17/23");
INSERT INTO Interviews(ID,EMP_ID,CRIME_TYPE,INTERVIEW,DATE) VALUES (10,80,"MILK SPILL","MELVYN DID IT","3/17/23");
INSERT INTO Interviews(ID,EMP_ID,CRIME_TYPE,INTERVIEW,DATE) VALUES (10,101,"COOKIE","MELVYN DID IT","3/17/23");
INSERT INTO Interviews(ID,EMP_ID,CRIME_TYPE,INTERVIEW,DATE) VALUES (15,111,"COOKIE","SHADOW DID IT","3/17/23");