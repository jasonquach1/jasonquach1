CREATE TABLE SEGA(
	sonic_id varchar(50),
	rank_id varchar(50),
	PRIMARY KEY(sonic_id, rank_id)
);

CREATE TABLE SEGA2(
	sonic_id varchar(50),
	rank_id varchar(50),
	rankings varchar(20),
	PRIMARY KEY(sonic_id, rank_id)
	FOREIGN KEY(rankings) REFERENCES SEGA(rank_id)
);

INSERT INTO SEGA(sonic_id,rank_id) VALUES ("SONIC 1",3);
INSERT INTO SEGA(sonic_id,rank_id) VALUES ("SONIC 2",1);
INSERT INTO SEGA(sonic_id,rank_id) VALUES ("SONIC 3",2);

INSERT INTO SEGA2(sonic_id,rank_id,rankings) VALUES ("SONIC Mania",5,2);
INSERT INTO SEGA2(sonic_id,rank_id,rankings) VALUES ("SONIC Forces",6,3);
INSERT INTO SEGA2(sonic_id,rank_id,rankings) VALUES ("SONIC Frontiers",4,1);