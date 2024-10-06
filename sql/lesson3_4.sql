CREATE TABLE student(
	student_id SERIAL,
	name VARCHAR(20),
	major VARCHAR(20),
	PRIMARY KEY(student_id)
);

SELECT *
FROM student;

/*新增資料*/
INSERT INTO student(name,major)
VALUES('小白','歷史');

INSERT INTO student(major,name)
VALUES('生物','小黑');

INSERT INTO student(major,name)
VALUES(NULL,'小藍');

/*新增多筆*/
INSERT INTO student(major,name)
VALUES('國文','小線'),('數學','小綠');

/*傳回新增的資訊*/
INSERT INTO student(major,name)
VALUES('生物','小線'),('歷史','小綠')
RETURNING *;

