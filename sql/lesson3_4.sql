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

