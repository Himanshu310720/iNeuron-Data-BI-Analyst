use org;
#Q1.
select * from Worker where MOD (WORKER_ID, 2) <> 0;

#Q2.
create table WorkerClone like Worker;