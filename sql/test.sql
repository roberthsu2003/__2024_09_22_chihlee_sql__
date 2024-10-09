CREATE TABLE IF NOT EXISTS stations(
	id Serial PRIMARY KEY,
	stationCode VARCHAR(5) UNIQUE NOTNULL, /*一定要,因為是foreign的parent*/
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
	PRIMARY KEY (date,staCode),
	FOREIGN KEY (staCode) /*可設可不設,有設可以保持資料的完整性*/
	REFERENCES stations(stationcode)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

DROP TABLE IF EXISTS station_in_out; 