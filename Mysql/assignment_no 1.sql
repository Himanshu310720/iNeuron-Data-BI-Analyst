create database org;
show databases;
use org;


create table Worker(
         WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
         FIRST_NAME CHAR(25),
         LAST_NAME CHAR(25),
         SALARY INT,
         JOINING_DATE DATETIME,
         DEPARTMENT CHAR(25)
);

INSERT INTO Worker VALUES(001,'Monika','Arora',100000,'14-02-20 09.00.00','HR');
INSERT INTO Worker VALUES(002,'Niharika','Verma',80000,'14-02-20 09.00.00','Admin');
INSERT INTO Worker VALUES(003,'Vishal','Singhal',300000,'14-02-20 09.00.00','HR');
INSERT INTO Worker VALUES(004,'amitabh','Singh',500000,'14-02-20 09.00.00','Admin');
INSERT INTO Worker VALUES(005,'Vivek','Bhati',500000,'14-02-20 09.00.00','Admin');
INSERT INTO Worker VALUES(006,'Vipul','Diwan',200000,'14-02-20 09.00.00','Account');
INSERT INTO Worker VALUES(007,'Satish','Kumar',75000,'14-02-20 09.00.00','Account');
INSERT INTO Worker VALUES(008,'Geetika','Chauhan',90000,'14-02-20 09.00.00','Admin');

CREATE TABLE Bonus(
        WORKER_REF_ID INT,
        BONUS_AMOUNT INT,
        BONUS_DATE DATETIME,
        FOREIGN KEY (WORKER_REF_ID)
				REFERENCES Worker(WORKER_ID)
		ON DELETE CASCADE
);

INSERT INTO Bonus VALUES(001,5000,'16-02-20');
INSERT INTO Bonus VALUES(002,3000,'16-06-11');
INSERT INTO Bonus VALUES(003,4000,'16-02-20');
INSERT INTO Bonus VALUES(001,4500,'16-02-20');
INSERT INTO Bonus VALUES(002,3500,'16-06-11');

select * from Worker;
delete from Bonus where  WORKER_REF_ID=3; 

CREATE TABLE Title(
        WORKER_REF_ID INT,
        WORKER_TITLE CHAR(25),
        AFFECTED_FROM DATETIME,
        FOREIGN KEY (WORKER_REF_ID)
				REFERENCES Worker(WORKER_ID)
		ON DELETE CASCADE
);

INSERT INTO Title VALUES(001,'Manager','2016-02-20 00:00:00');
INSERT INTO Title VALUES(002,'Executive','2016-06-11 00:00:00');
INSERT INTO Title VALUES(008,'Executive','2016-06-11 00:00:00');
INSERT INTO Title VALUES(005,'Manager','2016-06-11 00:00:00');
INSERT INTO Title VALUES(004,'Asst. Manager','2016-06-11 00:00:00');
INSERT INTO Title VALUES(007,'Executive','2016-06-11 00:00:00');
INSERT INTO Title VALUES(006,'Lead','2016-06-11 00:00:00');
INSERT INTO Title VALUES(003,'Lead','2016-02-20 00:00:00');

select * from Title;
select * from Bonus;
select * from Worker;

# Q1.
select FIRST_NAME as WORKER_NAME from Worker;

#Q2.
select distinct DEPARTMENT from Worker;

#Q3.
select * from Worker order by WORKER_ID desc limit 5;
