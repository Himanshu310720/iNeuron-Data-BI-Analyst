#Q1.
select replace(FIRST_NAME,'a','A') from Worker;

#Q2.
select * from Worker order by FIRST_NAME asc,DEPARTMENT desc;

#Q3.
select FIRST_NAME,SALARY from Worker where SALARY=(select max(SALARY) from Worker);