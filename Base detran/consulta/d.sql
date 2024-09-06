SELECT m.Modelo, COUNT(v.Placa) AS NumeroDeVeiculos
FROM Modelo m
JOIN Veiculos v ON m.idVeiculos = v.Placa
GROUP BY m.Modelo
ORDER BY NumeroDeVeiculos DESC

