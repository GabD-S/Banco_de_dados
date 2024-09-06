select c1.queue as "queue",c1.id as "left",c2.id as "right"  

from chairs c1
    join chairs c2 on c1.queue = c2.queue and c1.id + 1 = c2.id
where
    c1.available = true and c2.available = true
order by c1.queue, c1.id;