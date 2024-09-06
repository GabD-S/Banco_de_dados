select amount from value_table
group by amount
order by count(*) desc
limit 1 ;