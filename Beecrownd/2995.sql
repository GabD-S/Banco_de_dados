with matching_temperatures as (
    select 
        temperature,
        count(temperature) as matching_count
    from records
    group by temperature,mark
    order by mark
    
)
select 
    temperature,
    matching_count as number_of_records
from matching_temperatures;
