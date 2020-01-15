-- following done after inserting the data generated at the link below 
-- https://postgres-fake-data.netlify.com/

select 
	p.created_at, 
	p.title, 
	substr(p.body, 1, 30),
	u.first_name 
from posts p
inner join users u on p."creatorId"=u.id
order by created_at desc
offset 20
limit 20;

select 
	p.created_at, 
	p.title, 
	substr(p.body, 1, 30),
	u.first_name 
from posts p
inner join users u on p."creatorId"=u.id
where created_at < '2019-12-27'
order by created_at desc
limit 20;

select p.title, u.first_name, c.message, u2.first_name commentor from posts p
inner join users u on p."creatorId" = u.id
inner join comments c on p.id = c.post_id
inner join users u2 on u2.id = c.id
where p.id=7;

select * from comments c
inner join users u2 on u2.id = c.creator_id
where post_id = 7;

select count(*) from comments c
inner join users u2 on u2.id = c.creator_id
where post_id = 7;

select p.title, u.first_name, c.message, u2.first_name commentor, f.user_id is not null hasfavorited from posts p
inner join users u on p."creatorId" = u.id
inner join comments c on p.id = c.post_id
inner join users u2 on u2.id = c.id
left join favorites f on f.post_id = p.id and f.user_id = 74
where p.id=7;