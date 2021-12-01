use org;
#Q1.
select * from Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;

#Q2.
select  WORKER_TITLE,AFFECTED_FROM, count(*) from Title group by WORKER_TITLE,AFFECTED_FROM having count(*) > 1;

#Q3.
