CREATE TABLE IF NOT EXISTS 市場(
	name VARCHAR(20),
	country VARCHAR(20),
	PRIMARY KEY(name)
);

CREATE TABLE IF NOT EXISTS 股市(
	stock_id SERIAL,
	date DATE,
	open NUMERIC(17,10),
	high NUMERIC(17,10),
	low NUMERIC(17,10),
	close NUMERIC(17,10),
	adj_close NUMERIC(17,10),
	volume BIGINT DEFAULT 0,
	name VARCHAR(20),
	PRIMARY KEY(stock_id),
	FOREIGN KEY(name) REFERENCES 市場(name) 
	ON DELETE NO ACTION
	ON UPDATE CASCADE
);

/*有發生限制衝突,不做任何事的語法*/
INSERT INTO 市場 values ('^TWII','台灣')
ON CONFLICT DO NOTHING;

SELECT * FROM 市場;

/*股市資料*/
INSERT INTO 股市(date,open,high,low,close,adj_close,volume,name) 
values('1997-07-08',9094.26953125,9124.2998046875,8988.1298828125,8996.7197265625,8996.6865234375,0,'^TWII')

SELECT * FROM 股市
WHERE name = '^HSI'


