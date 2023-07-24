create table Emp(id int primary key identity, sname varchar(50),city varchar(50), salary int);

insert into Emp values('Naila','Karachai',210000);
insert into Emp values('Laiba','Hyderabad',220000);
insert into Emp values('Tabiya','sukhar',229000);
insert into Emp values('Javeriya','Karachai',270000);
insert into Emp values('Ali','Karachai',250000);
insert into Emp values('Ahmed','Larkana',240000);


select *from Emp;

select id as Employ_id from Emp;

select sname as Employ_Name from Emp;

select sum(salary) from Emp;

select count(id) from Emp;

select min(salary) from Emp;

select max(salary) from Emp;

select avg(salary) from Emp;

select distinct city from Emp;
select *from Emp where salary between 110000 and 250000;
select salary from Emp where city in ('sukhar');
select salary from Emp where city  not in ('sukhar');
select  top 2 * from Emp


Declare @var int;
Declare @var2 int;
set @var = 2;
set @var2 = 2;
print @var + @var2;

Declare @th1 int = 4 ,@th2 int = 5;
select @th1 + @th2;

select city, sum(salary) from Emp as total_salary
group by city
having city not in ('Larkana'); 


select city, sum(salary) from Emp as total_salary
where city in ('Larkana')
group by city


