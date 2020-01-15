-- who has the most friends

select 
	f.user_id1,
	max(u.first_name),
	array_agg(user_id2),
	count(user_id2) 
from friends f
inner join users u on u.id = f.user_id1
group by user_id1
order by count(*) desc;

select * from users u 
inner join friends f on f.user_id1 = u.id;

select max(p.title), post_id, count(*) 
from favorites f
inner join posts p on f.post_id = p.id
group by post_id
order by count(*) desc;

-- no friends and no posts

select * from users u 
left join friends f 
on f.user_id1 = u.id or f.user_id2 = u.id
where f.user_id1 is null;

select * from users u
left join posts p
on u.id = p."creatorId"
where p."creatorId" is null;

select count(distinct "creatorId") from posts;

-- posts related to friends

select * from posts p 
inner join friends f 
on f.user_id1 = p."creatorId"
or f.user_id2 = p."creatorId";

select * from users u where u.id = 1;

select * from posts p 
inner join friends f
on (f.user_id1 = p."creatorId"
or f.user_id2 = p."creatorId")
and (f.user_id1 = 1 or f.user_id2 = 1)
where "creatorId" != 1;


select * from posts p 
left join friends f
  on (f.user_id1 = p."creatorId"
  or f.user_id2 = p."creatorId")
  and (f.user_id1 = 1 or f.user_id2 = 1)
left join favorites f2 on f2.post_id = p.id
left join friends f3 
  on (f3.user_id1 = f2.user_id 
  or f3.user_id2 = f2.user_id)
  and (f3.user_id1 = 1 or f3.user_id2 = 1)
where "creatorId" != 1
  and (
  	f.user_id1 is not null
  	or f3.user_id1 is not null
 );


