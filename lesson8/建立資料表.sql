CREATE TABLE IF NOT EXISTS 市場(
	name VARCHAR(20),
	country VARCHAR(20),
	PRIMARY KEY(name),
	UNIQUE(name,country) /*不可以有重覆的資料*/
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
	UNIQUE(date,name),
	FOREIGN KEY(name) REFERENCES 市場(name)
	ON DELETE NO ACTION
	ON UPDATE CASCADE
);