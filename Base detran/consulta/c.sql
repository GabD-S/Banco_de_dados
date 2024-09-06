SELECT i.*, v.*
FROM Infracao i
JOIN Veiculos v ON i.idVeiculos = v.Placa
WHERE i.DataHora BETWEEN ? AND ?

