use org;

#Q1.
select substring(FIRST_NAME,1,3) from Worker;

#Q2.
select instr(FIRST_NAME,binary'a') from Worker where FIRST_NAME ='Amitabh';

#Q3.
select FIRST_NAME,LAST_NAME,DEPARTMENT,MAX(SALARY) from Worker group by DEPARTMENT;