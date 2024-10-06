CREATE TABLE IF NOT EXISTS student(
	student_id SERIAL,
	name VARCHAR(20),
	major VARCHAR(20),
	score INT,
	PRIMARY KEY (student_id)
);

INSERT INTO student VALUES(1, '小白','英語',50);
INSERT INTO student VALUES(2, '小黃','生物',90);
INSERT INTO student VALUES(3, '小綠','歷史',70);
INSERT INTO student VALUES(4, '小藍','英語',80);
INSERT INTO student VALUES(5, '小黑','化學',20);

INSERT INTO student
VALUES (1, '小白','英語',50),
	   (2, '小黃','生物',90),
	   (3, '小綠','歷史',70),
	   (4, '小藍','英語',80),
	   (5, '小黑','化學',20)
RETURNING *;

SELECT *
FROM student;

DROP TABLE IF EXISTS student;

DELETE FROM student; /*資料全部刪除*/

DELETE FROM student
WHERE name = '小白';

DELETE FROM student
WHERE name LIKE '小%';

/*UPDATE SET WHERE*/
UPDATE student
SET major = '英語文學'
WHERE major = '英語'
RETURNING *

UPDATE student
SET  major = '生化'
WHERE major = '生物' OR major = '化學'
RETURNING *

