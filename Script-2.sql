create table comments (
	id serial primary key,
	message text not null,
	post_id int references posts(id) not null,
	creator_id int references users(id) not null
);

insert into comments (message, post_id, creator_id) values ('ho', 2, 4);

select * from comments;
select * from comments;

select u.id uid, p.id pid, c.id cid, c.message, p.title, u.first_name pname, u2.first_name cname from comments c
inner join posts p on c.post_id = p.id
inner join users u on p."creatorId" = u.id
inner join users u2 on c.creator_id = u2.id;
