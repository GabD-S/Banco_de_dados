select life_registry.name,
       round((life_registry.omega * 1.618), 3) as "The N Factor"
from life_registry
inner join dimensions on life_registry.dimensions_id = dimensions.id
where dimensions.name in ('C875', 'C774')
  and lower(life_registry.name) like 'richard%'
order by life_registry.omega;
