use org;
#Q1.
select * from Worker INTERSECT (select * from WorkerColne);

#Q2.
select * from Worker
MINUS
select * from Title;