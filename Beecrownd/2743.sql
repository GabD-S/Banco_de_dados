SELECT name, CHAR_LENGTH(name) AS quantidade_letras
FROM people
ORDER BY quantidade_letras DESC;
