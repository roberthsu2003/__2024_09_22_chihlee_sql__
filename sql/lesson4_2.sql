CREATE TABLE IF NOT EXISTS stations(
	stations_id SERIAL PRIMARY KEY,
	stationCode VARCHAR(5) UNIQUE NOT NULL,
	stationName VARCHAR(20) NOT NULL,
	name VARCHAR(20),
	stationAddrTw VARCHAR(50),
	stationTel VARCHAR(20),
	gps VARCHAR(30),
	haveBike BOOLEAN
);

SELECT *
FROM stations;

CREATE TABLE IF NOT EXISTS station_in_out(
	date DATE,
	staCode VARCHAR(5) NOT NULL,
	gateInComingCnt INTEGER,
	gateOutGoingCnt INTEGER,
	PRIMARY KEY (date,staCode),
	FOREIGN KEY (staCode) REFERENCES stations(stationCode)
	ON DELETE SET NULL
	ON UPDATE CASCADE
);

SELECT date AS 日期,
	   gateincomingcnt AS 進站人數,
	   gateoutgoingcnt AS 出站人數,
	   stationname AS 站名,
	   stationaddrtw AS 站址,
	   stationtel AS 電話
FROM station_in_out in_out JOIN stations s ON in_out.stacode = s.stationcode
WHERE stationname = '基隆';

