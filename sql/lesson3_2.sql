SELECT code,name
FROM stations;

SELECT *
FROM stations;

SELECT code as 代碼
FROM stations;

SELECT code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations;

SELECT code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE name = '基隆';