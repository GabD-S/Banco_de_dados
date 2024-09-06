(select city_name,population from cities
order by population desc limit 1 OFFSET 1)
union (select city_name,population from cities 
order by population asc limit 1 OFFSET 1)
order by city_name desc;