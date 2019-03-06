create table Register(
    ID int,
    Student_Name varchar(50),
    Student_family varchar(50),
    Entrance_year int,
    field varchar(50)
)

insert into Register(ID,Student_Name,Student_family,Entrance_year,field)
values
    (1,'majid','sham',94,'CE'),
    (2,'ali','jef',94,'CE'),
    (3,'mamad','ahal',96,'math'),
    (4,'sina','khan',95,'phys');

update Register
set Entrance_year = (select Entrance_year from register
where id = 1) + 10
where id = 1

update Register
set Entrance_year = (select Entrance_year from register
where id = 2) + 10
where id = 2

update Register
set Entrance_year = (select Entrance_year from register
where id = 3) + 10
where id = 3

update Register
set id = (select MAX(Entrance_year)
from Register) + id

create temp table TempRegister(
    ID int,
    Student_Name varchar(50),
    Student_family varchar(50),
    pre_field varchar(50),
    new_field varchar(50)
)

insert into TempRegister(ID,Student_Name,Student_family,pre_field)
select id , Student_Name,Student_family,field
from Register

update Register
set field = 'math'
where id = 1 and id = 2 and id = 3

insert into TempRegister(new_field)
select field
from register
where id = 1 and id = 2 and id = 3

delete from Register
where Entrance_year > 107

delete from Register
where id>2 and id <5

