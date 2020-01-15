create table posts (
	id serial primary key,
	title text not null,
	body text default '...',
	"creatorId" int references users(id) not null
);
drop table posts;

insert into posts (title, "creatorId") values ('third post', 1);
insert into posts (title, "creatorId") values ('sixth post ya', 4);

select * from posts;

-- fails below due to forgin key 
delete from users where id = 1; 
delete from posts where "creatorId"=4;	

select u.id uid, p.id pid, first_name, p.title from users u inner join posts p on u.id = p."creatorId";
select u.id, p.id, first_name, p.title from users u left join posts p on u.id = p."creatorId";

select u.id uid, p.id pid, first_name, p.title 
from users u 
inner join posts p on u.id = p."creatorId" 
where p.title like '%third%';

select u.id uid, p.id pid, first_name, p.title 
from users u 
inner join posts p on u.id = p."creatorId" 
where p.title ilike '%ya';

