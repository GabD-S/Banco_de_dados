CREATE TABLE Endereco (
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    cidade INT,
    estado INT,
    Bairro VARCHAR(100)
);

CREATE TABLE Proprietario (
    CPF BIGINT PRIMARY KEY,
    Idade INT,
    DataNascimento DATE,
    Sexo INT,
    Nome VARCHAR(255),
    Telefone VARCHAR(20),
    idEndereco INT,
    FOREIGN KEY (idEndereco) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Categoria (
    ID INT PRIMARY KEY,
    Categoria VARCHAR(50)
);

CREATE TABLE Veiculos (
    Placa VARCHAR(20) PRIMARY KEY,
    Chassi VARCHAR(50),
    Cor VARCHAR(50),
    Ano INT,
    Data DATE,
    idProprietario BIGINT,
    idCategoria INT,
    FOREIGN KEY (idProprietario) REFERENCES Proprietario(CPF),
    FOREIGN KEY (idCategoria) REFERENCES Categoria(ID)
);

CREATE TABLE Modelo (
    ID INT PRIMARY KEY,
    Modelo VARCHAR(50),
    idVeiculos VARCHAR(20),
    FOREIGN KEY (idVeiculos) REFERENCES Veiculos(Placa)
);

CREATE TABLE Agente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    AgenteNumero INT,
    Nome VARCHAR(255)
);

CREATE TABLE Tipo (
    id INT PRIMARY KEY,
    valor VARCHAR(50),
    Tipo VARCHAR(50)
);

CREATE TABLE Local (
    id INT PRIMARY KEY AUTO_INCREMENT,
    VelocidadePermitida INT,
    Latitude DECIMAL(9,6),
    Longitude DECIMAL(9,6)
);

CREATE TABLE Infracao (
    DataHora DATETIME,
    id INT PRIMARY KEY AUTO_INCREMENT,
    Velocidade INT,
    idVeiculos VARCHAR(20),
    idLocal INT,
    idAgente INT,
    idTipo INT,
    FOREIGN KEY (idVeiculos) REFERENCES Veiculos(Placa),
    FOREIGN KEY (idLocal) REFERENCES Local(id),
    FOREIGN KEY (idAgente) REFERENCES Agente(id),
    FOREIGN KEY (idTipo) REFERENCES Tipo(id)
);

