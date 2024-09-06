INSERT INTO Endereco (idEndereco, cidade, estado, Bairro) VALUES (1, a, f, 'Asa Norte');
INSERT INTO Endereco (idEndereco, cidade, estado, Bairro) VALUES (2, b, g, 'Qd.08 Cj. 13');
INSERT INTO Endereco (idEndereco, cidade, estado, Bairro) VALUES (3, c, h, 'Bairro X rua Y casa 250');
INSERT INTO Endereco (idEndereco, cidade, estado, Bairro) VALUES (4, d, i, 'Bairro M rua N casa 12');
INSERT INTO Endereco (idEndereco, cidade, estado, Bairro) VALUES (5, e, j, 'Bairro e rua v casa 12');

INSERT INTO Proprietario (CPF, Idade, DataNascimento, Sexo, Nome, Telefone, idEndereco) VALUES (11122233344, 23, '1987-12-30', 1, 'Joao Marcos de Souza', '33333333', 1);
INSERT INTO Proprietario (CPF, Idade, DataNascimento, Sexo, Nome, Telefone, idEndereco) VALUES (11111111111, 51, '1960-12-30', 1, 'Paulo Morais', '33334444', 2);
INSERT INTO Proprietario (CPF, Idade, DataNascimento, Sexo, Nome, Telefone, idEndereco) VALUES (22222222222, 81, '1960-12-30', 2, 'Ana Maria', '99333333', 3);
INSERT INTO Proprietario (CPF, Idade, DataNascimento, Sexo, Nome, Telefone, idEndereco) VALUES (33333333333, 31, '1960-12-30', 2, 'Maria Claudia', '99443333', 4);
INSERT INTO Proprietario (CPF, Idade, DataNascimento, Sexo, Nome, Telefone, idEndereco) VALUES (33333333333, 21, '1960-12-30', 2, 'suarez', '99497633', 4);

INSERT INTO Categoria (ID, Categoria) VALUES (1, 'carro');
INSERT INTO Categoria (ID, Categoria) VALUES (2, 'moto');
INSERT INTO Categoria (ID, Categoria) VALUES (3, 'onibus');
INSERT INTO Categoria (ID, Categoria) VALUES (4, 'caminhonete');
INSERT INTO Categoria (ID, Categoria) VALUES (5, 'caminhao');

INSERT INTO Veiculos (Placa, Chassi, Cor, Ano, Data, idProprietario, idCategoria) VALUES ('ABC1234', 'ABC123456789', 'corsa', 2009, '2009-01-01', 11122233344, 1);
INSERT INTO Veiculos (Placa, Chassi, Cor, Ano, Data, idProprietario, idCategoria) VALUES ('ABC1111', 'ABC1111111111', 'gol', 2010, '2010-01-01', 11111111111, 1);
INSERT INTO Veiculos (Placa, Chassi, Cor, Ano, Data, idProprietario, idCategoria) VALUES ('ABC2222', 'ABC2222222222', 'van', 2011, '2011-01-01', 22222222222, 2);
INSERT INTO Veiculos (Placa, Chassi, Cor, Ano, Data, idProprietario, idCategoria) VALUES ('ABC3333', 'ABC33333333333', 'caminhao', 2012, '2012-01-01', 33333333333, 3);

INSERT INTO Modelo (ID, Modelo, idVeiculos) VALUES (1, 'corsa classic', 'ABC1234');
INSERT INTO Modelo (ID, Modelo, idVeiculos) VALUES (2, 'Gol 1.6', 'ABC1111');
INSERT INTO Modelo (ID, Modelo, idVeiculos) VALUES (3, 'Van', 'ABC2222');
INSERT INTO Modelo (ID, Modelo, idVeiculos) VALUES (4, 'Caminhao', 'ABC3333');
INSERT INTO Modelo (ID, Modelo, idVeiculos) VALUES (5, 'Caminhao', 'ABC3333');

INSERT INTO Agente (AgenteNumero, Nome) VALUES (123456, 'Joao');
INSERT INTO Agente (AgenteNumero, Nome) VALUES (123456, 'Paulo');
INSERT INTO Agente (AgenteNumero, Nome) VALUES (123456, 'Bonifacio');
INSERT INTO Agente (AgenteNumero, Nome) VALUES (123456, 'lambert');
INSERT INTO Agente (AgenteNumero, Nome) VALUES (123456, 'Andrada');

INSERT INTO Tipo (id, valor, Tipo) VALUES (1, '1500', 'Grave');
INSERT INTO Tipo (id, valor, Tipo) VALUES (2, '2000', 'Gravissima');
INSERT INTO Tipo (id, valor, Tipo) VALUES (3, '2900', 'Gravissima');
INSERT INTO Tipo (id, valor, Tipo) VALUES (4, '200', 'Leve');
INSERT INTO Tipo (id, valor, Tipo) VALUES (5, '500', 'media');


INSERT INTO Local (VelocidadePermitida, Latitude, Longitude) VALUES (60, -15.794229, -47.882166);
INSERT INTO Local (VelocidadePermitida, Latitude, Longitude) VALUES (61, -16.794229, -46.882166);
INSERT INTO Local (VelocidadePermitida, Latitude, Longitude) VALUES (62, -17.794229, -45.882166);
INSERT INTO Local (VelocidadePermitida, Latitude, Longitude) VALUES (63, -18.794229, -44.882166);
INSERT INTO Local (VelocidadePermitida, Latitude, Longitude) VALUES (64, -19.794229, -43.882166);

