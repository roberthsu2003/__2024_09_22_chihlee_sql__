SELECT *
FROM stations;

SELECT *
FROM station_in_out;
/*全省各站點2022年進站總人數*/
SELECT stationname as 站名
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2022;


