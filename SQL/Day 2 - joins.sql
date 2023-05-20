show DATABASES; 
use ineuron;
show tables;
 
 -- JOINS HERE--
 
 -- INNER JOIN--
select * from emp e inner join dep d on e.depid = d.depid;
select * from dep d join emp e on e.depid = d.depid;  -- join and inner join are same --

-- LEFT JOIN --
select * from emp e left join dep d on d.depid = e.depid;
select * from dep d left join emp e on d.depid = e.depid;

-- RIGHT JOIN --
select * from emp e right join dep d on d.depid = e.depid;
select * from dep d right join emp e on d.depid = e.depid;

-- FULL JOIN --
select * from emp e full join dep d on d.depid = e.depid; -- won't work as full join is not supported --
select * from emp e left join dep d on d.depid = e.depid union select * from emp e right join dep d on d.depid = e.depid;

-- SELF JOIN --
select * from dep d cross join emp e on d.depid = e.depid;