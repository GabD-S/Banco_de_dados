with 
    c_hours_earns as (values(150)), salaries as (
        select
            attendances.id_doctor,
            round(sum((attendances.hours * (table c_hours_earns))
            + (attendances.hours * (table c_hours_earns) * ( work_shifts.bonus/100))),1) as salary
            from attendances
            inner join work_shifts
                on attendances.id_work_shift = work_shifts.id
            group by attendances.id_doctor
    )
    select
        doctors.name,
        salaries.salary
        from doctors
        inner join salaries
            on doctors.id = salaries.id_doctor
        order by salary desc;