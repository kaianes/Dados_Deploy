-- Criação da tabela Unidade_de_Saude
CREATE TABLE Unidade_de_Saude (
    ID_Unidade_de_Saude INT PRIMARY KEY,
    Nome_Unidade VARCHAR(100),
    Endereco VARCHAR(255),
    Tipo_Unidade VARCHAR(50),
    Capacidade_Atendimento INT,
    Especialidades_Disponiveis VARCHAR(255)
);

-- Criação da tabela Produto_Medico
CREATE TABLE Produto_Medico (
    ID_Produto INT PRIMARY KEY,
    Nome_Produto VARCHAR(100),
    Descricao TEXT,
    Fabricante VARCHAR(100),
    Tipo_Produto VARCHAR(50),
    Quantidade_Estoque INT,
    Data_Validade DATE,
    ID_Unidade_de_Saude INT,
    FOREIGN KEY (ID_Unidade_de_Saude) REFERENCES Unidade_de_Saude(ID_Unidade_de_Saude)
);

-- Criação da tabela Paciente
CREATE TABLE Paciente (
    ID_Paciente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Data_Nascimento DATE,
    Genero VARCHAR(10),
    Endereco VARCHAR(255),
    Telefone VARCHAR(20),
    Condicao_Medica VARCHAR(255),
    Historico_Medico TEXT,
    ID_Unidade_de_Saude INT,
    FOREIGN KEY (ID_Unidade_de_Saude) REFERENCES Unidade_de_Saude(ID_Unidade_de_Saude)
);

-- Criação da tabela Veiculo_Medico
CREATE TABLE Veiculo_Medico (
    ID_Veiculo INT PRIMARY KEY,
    Tipo_Veiculo VARCHAR(50),
    Placa_Veiculo VARCHAR(20),
    Capacidade_Passageiros INT,
    Capacidade_Carga DECIMAL(10, 2),
    Disponibilidade VARCHAR(20)
);

-- Criação da tabela Rota
CREATE TABLE Rota (
    ID_Rota INT PRIMARY KEY,
    Origem VARCHAR(100),
    Destino VARCHAR(100),
    Distancia DECIMAL(10, 2),
    Tempo_Estimado_Viagem TIME,
    Restricoes TEXT
);

-- Criação da tabela Entrega
CREATE TABLE Entrega (
    ID_Entrega INT PRIMARY KEY,
    ID_Produto INT,
    ID_Unidade_de_Saude INT,
    Data_Hora_Entrega DATETIME,
    Quantidade_Entregue INT,
    Status_Entrega VARCHAR(20),
    FOREIGN KEY (ID_Produto) REFERENCES Produto_Medico(ID_Produto),
    FOREIGN KEY (ID_Unidade_de_Saude) REFERENCES Unidade_de_Saude(ID_Unidade_de_Saude)
);

-- Criação da tabela Viagem
CREATE TABLE Viagem (
    ID_Viagem INT PRIMARY KEY,
    ID_Veiculo INT,
    ID_Rota INT,
    ID_Paciente INT,
    Data_Hora_Partida DATETIME,
    Data_Hora_Chegada DATETIME,
    Status_Viagem VARCHAR(20),
    FOREIGN KEY (ID_Veiculo) REFERENCES Veiculo_Medico(ID_Veiculo),
    FOREIGN KEY (ID_Rota) REFERENCES Rota(ID_Rota),
    FOREIGN KEY (ID_Paciente) REFERENCES Paciente(ID_Paciente)
);

-- Criação da tabela Avaliacao_do_Sistema
CREATE TABLE Avaliacao_do_Sistema (
    ID_Avaliacao INT PRIMARY KEY,
    Data_Avaliacao DATE,
    Metricas_Avaliadas TEXT,
    Resultados_Obtidos TEXT,
    Acoes_Recomendadas TEXT
);
