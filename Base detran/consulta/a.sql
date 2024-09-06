SELECT *
FROM Veiculos v
JOIN Proprietario p ON v.idProprietario = p.CPF
WHERE p.CPF = ?

