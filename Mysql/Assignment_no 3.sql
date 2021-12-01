use org;
#Q1.
select rtrim(FIRST_NAME) from Worker;

#Q2.
select distinct length(DEPARTMENT) from Worker;

#Q3.
select SALARY from Worker order by SALARY desc limit 5,1;