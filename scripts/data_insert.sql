-- Inserção de dados na tabela Unidade_de_Saude
INSERT INTO Unidade_de_Saude (ID_Unidade_de_Saude, Nome_Unidade, Endereco, Tipo_Unidade, Capacidade_Atendimento, Especialidades_Disponiveis)
VALUES
(1, 'Hospital Central', 'Rua Principal, 123', 'Hospital', 500, 'Cardiologia, Ortopedia, Pediatria'),
(2, 'Clinica do Bairro', 'Rua da Paz, 456', 'Clínica', 200, 'Ginecologia, Dermatologia, Oftalmologia');

-- Inserção de dados na tabela Produto_Medico
INSERT INTO Produto_Medico (ID_Produto, Nome_Produto, Descricao, Fabricante, Tipo_Produto, Quantidade_Estoque, Data_Validade, ID_Unidade_de_Saude)
VALUES
(1, 'Paracetamol', 'Analgésico e antipirético', 'Farmaco', 'Medicamento', 1000, '2024-12-31', 1),
(2, 'Máscara Cirúrgica', 'Máscara descartável para uso médico', 'MedSupplies', 'Equipamento', 5000, '2025-06-30', 1),
(3, 'Gaze Estéril', 'Atadura de gaze para curativos', 'MedSupplies', 'Suprimento', 2000, '2026-03-31', 1),
(4, 'Seringa Descartável', 'Seringa para administração de medicamentos', 'MedSupplies', 'Equipamento', 3000, '2025-09-30', 2);

-- Inserção de dados na tabela Paciente
INSERT INTO Paciente (ID_Paciente, Nome, Data_Nascimento, Genero, Endereco, Telefone, Condicao_Medica, Historico_Medico, ID_Unidade_de_Saude)
VALUES
(1, 'Maria Silva', '1980-05-15', 'Feminino', 'Rua das Flores, 789', '99999-1234', 'Diabetes tipo 2', 'Hipertensa', 1),
(2, 'José Santos', '1975-10-20', 'Masculino', 'Av. Principal, 456', '98888-5678', 'Asma', 'Cirurgia de apendicite em 2010', 1),
(3, 'Ana Souza', '1992-03-08', 'Feminino', 'Rua da Esperança, 321', '97777-2468', 'Hipertensão', 'Nenhuma', 2);

-- Inserção de dados na tabela Veiculo_Medico
INSERT INTO Veiculo_Medico (ID_Veiculo, Tipo_Veiculo, Placa_Veiculo, Capacidade_Passageiros, Capacidade_Carga, Disponibilidade)
VALUES
(1, 'Ambulância', 'ABC-1234', 4, 500, 'Disponível'),
(2, 'Carro de Entrega', 'DEF-5678', 2, 200, 'Indisponível');

-- Inserção de dados na tabela Rota
INSERT INTO Rota (ID_Rota, Origem, Destino, Distancia, Tempo_Estimado_Viagem, Restricoes)
VALUES
(1, 'Hospital Central', 'Clinica do Bairro', 15.5, '00:30:00', 'Nenhuma'),
(2, 'Clinica do Bairro', 'Hospital Central', 15.5, '00:30:00', 'Nenhuma');

-- Inserção de dados na tabela Entrega
INSERT INTO Entrega (ID_Entrega, ID_Produto, ID_Unidade_de_Saude, Data_Hora_Entrega, Quantidade_Entregue, Status_Entrega)
VALUES
(1, 1, 1, '2024-05-05 10:00:00', 100, 'Entregue'),
(2, 2, 1, '2024-05-05 09:00:00', 500, 'Entregue'),
(3, 3, 1, '2024-05-05 11:30:00', 200, 'Entregue');

-- Inserção de dados na tabela Viagem
INSERT INTO Viagem (ID_Viagem, ID_Veiculo, ID_Rota, ID_Paciente, Data_Hora_Partida, Data_Hora_Chegada, Status_Viagem)
VALUES
(1, 1, 1, 1, '2024-05-05 08:00:00', '2024-05-05 08:30:00', 'Concluída'),
(2, 2, 2, 2, '2024-05-05 09:30:00', '2024-05-05 10:00:00', 'Cancelada');

-- Inserção de dados na tabela Avaliacao_do_Sistema
INSERT INTO Avaliacao_do_Sistema (ID_Avaliacao, Data_Avaliacao, Metricas_Avaliadas, Resultados_Obtidos, Acoes_Recomendadas)
VALUES
(1, '2024-05-05', 'Acesso a Serviços de Saúde, Disponibilidade de Produtos Médicos, Eficiência do Transporte', 'Avaliação positiva', 'Realizar treinamento para melhorar eficiência do transporte');
