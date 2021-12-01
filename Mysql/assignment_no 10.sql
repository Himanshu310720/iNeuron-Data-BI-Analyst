use org;
#Q1.
select Salary from Worker W1 where 4 = ( select count( distinct(W2.salary )) from Worker W2 where W2.Salary >= W1.Salary);

#Q2.
select distinct W.WORKER_ID, W.FIRST_NAME, W.Salary from Worker W, Worker W1 where W.Salary = W1.Salary and W.WORKER_ID != W1.WORKER_ID