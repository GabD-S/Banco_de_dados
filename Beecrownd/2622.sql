select customers.name from customers
inner join legal_person on legal_person.id_customers = customers.id
where legal_person is not null;