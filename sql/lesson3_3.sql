SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE code = '1001';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE code = '1001' OR code = '1002';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE code IN ('1001','1002');

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE code = '1001' OR name = '八堵';


SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE name = '基隆';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE name LIKE '台_';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE name LIKE '台%';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE name LIKE '%港';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE id <= 10;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE id <= 20 AND id >= 10;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE id <= 20 AND id >= 10;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE id < 10 OR id > 20;


SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE id BETWEEN 10 AND 20;


SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
WHERE id NOT BETWEEN 10 AND 20;


SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
ORDER BY id DESC;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
ORDER BY code DESC; /*數字字串排序*/

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM stations
ORDER BY e_name; /*英文字排序*/



