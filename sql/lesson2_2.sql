DROP TABLE IF EXISTS hospital;

CREATE TABLE IF NOT EXISTS hospital (
    id SERIAL PRIMARY KEY,
    state VARCHAR(5) NOT NULL,
	name VARCHAR(30) NOT NULL UNIQUE,
	phone VARCHAR(15),
	ext VARCHAR(7),
	contact VARCHAR(7),
	address VARCHAR(50)
);

/*城市,啟始時間,結束時間,最高溫度,最低溫度,感覺*/

CREATE TABLE IF NOT EXISTS weather(
    id SERIAL PRIMARY KEY,
	city VARCHAR(20) NOT NULL,
    startDate timestamp,
	endDate timestamp,
	hight real,
	low real,
	status VARCHAR(20)
);