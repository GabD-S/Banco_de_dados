SELECT 
    packages.year,
    senders.name AS sender,
    receivers.name AS receiver
FROM 
    packages
INNER JOIN 
    users AS senders 
    ON packages.id_user_sender = senders.id
INNER JOIN 
    users AS receivers 
    ON packages.id_user_receiver = receivers.id
WHERE 
    (packages.color = 'blue' OR packages.year = 2015) 
    AND (senders.address <> 'Taiwan' AND receivers.address <> 'Taiwan')
ORDER BY 
    packages.year DESC;
