create table users (
	id serial primary key,
	first_name varchar(255) not null,
	last_name text,
	age int,
	email text unique not null
);

drop table users;

alter table users drop column age;
alter table users add column age int default 20;

insert into users (first_name, last_name, age, email) values ('carlton', 'joseph', 19, 'carltonj2002@gmail.com');
insert into users (first_name, last_name, email) values ('carlton', 'joseph', 'carltonj2003@gmail.com');
insert into users (first_name, last_name, age, email) values ('carlton1', 'joseph', 19, 'carltonj2001@gmail.com');

select * from users;
select first_name, last_name from users;
select * from users where id = 3 or id = 4;
select * from users where id in (2, 4);
select * from users where age > 10;
select * from users where coalesce(age, 15) > 10;
select * from users where age is null;
select * from users where age is not null;

update users set age = age + 1, last_name=last_name || 'Tom' where id = 1;
update users set age = age + 1;

delete from users where id=3;
delete from users where last_name is null;