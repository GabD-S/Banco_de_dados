select concat('podium: ', team) as name
from league
where position <= 3

union all

select concat('demoted: ', team) as name
from league
where position in (
    select position
    from league
    order by position desc
    limit 2
);
