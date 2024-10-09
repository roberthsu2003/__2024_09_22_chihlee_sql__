CREATE TABLE IF NOT EXISTS stations(
	id Serial PRIMARY KEY,
	stationCode VARCHAR(5),
	stationName VARCHAR(20) NOT NULL,
	name VARCHAR(20),
	stationAddrTw VARCHAR(50),
	stationTel VARCHAR(20),
	gps VARCHAR(30),
	haveBike BOOLEAN
);

DROP TABLE IF EXISTS stations;

SELECT *
FROM stations;

CREATE TABLE IF NOT EXISTS station_in_out(
	date TIMESTAMP,
	staCode VARCHAR(5) NOT NULL,
	gateInComingCnt INTEGER,
	gateOutGoingCnt INTEGER,
	PRIMARY KEY (date,staCode)
);

DROP TABLE IF EXISTS station_in_out; 