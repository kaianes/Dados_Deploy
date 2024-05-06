# Mapeamento do Diagrama

## Etapa 1 - Entidades Fortes

Paciente = (ID_Paciente, Nome, Data_Nascimento, Genero, Endereco, Telefone, Condicao_Medica, Historico_Medico)
Unidade_de_Saude = (ID_Unidade_de_Saude, Nome_Unidade, Endereco, Tipo_Unidade, Capacidade_Atendimento, Especialidades_Disponiveis)
Produto_Medico = (ID_Produto, Nome_Produto, Descricao, Fabricante, Tipo_Produto, Quantidade_Estoque, Data_Validade)
Veiculo_Medico = (ID_Veiculo, Tipo_Veiculo, Placa_Veiculo, Capacidade_Passageiros, Capacidade_Carga, Disponibilidade)
Rota = (ID_Rota, Origem, Destino, Distancia, Tempo_Estimado_Viagem, Restricoes)

## Etapa 2 - Entidades Fracas

Avaliacao_do_Sistema = (ID_Avaliacao, Data_Avaliacao, Metricas_Avaliadas, Resultados_Obtidos, Acoes_Recomendadas)

## Etapa 3 - Relacionamento 1:1

Não existe

## Etapa 4 - Relacionamento 1: N

Paciente = (ID_Paciente, Nome, Data_Nascimento, Genero, Endereco, Telefone, Condicao_Medica, Historico_Medico, ID_Unidade_de_Saude) ID_Unidade_de_Saude FK Unidade_de_Saude
Unidade_de_Saude = (ID_Unidade_de_Saude, Nome_Unidade, Endereco, Tipo_Unidade, Capacidade_Atendimento, Especialidades_Disponiveis)
Produto_Medico = (ID_Produto, Nome_Produto, Descricao, Fabricante, Tipo_Produto, Quantidade_Estoque, Data_Validade, ID_Unidade_de_Saude) ID_Unidade_de_Saude FK Unidade_de_Saude
Veiculo_Medico = (ID_Veiculo, Tipo_Veiculo, Placa_Veiculo, Capacidade_Passageiros, Capacidade_Carga, Disponibilidade)
Rota = (ID_Rota, Origem, Destino, Distancia, Tempo_Estimado_Viagem, Restricoes)

## Etapa 5 - Relacionamento N:M

Entrega = (ID_Entrega, ID_Produto, ID_Unidade_de_Saude, Data_Hora_Entrega, Quantidade_Entregue, Status_Entrega) ID_Produto FK Produto_Medico, ID_Unidade_de_Saude FK Unidade_de_Saude
Viagem = (ID_Viagem, ID_Veiculo, ID_Rota, ID_Paciente, Data_Hora_Partida, Data_Hora_Chegada, Status_Viagem) ID_Veiculo FK Veiculo_Medico, ID_Rota FK Rota, ID_Paciente FK Paciente

## Tabelas Finais

Viagem = (ID_Viagem, ID_Veiculo, ID_Rota, ID_Paciente, Data_Hora_Partida, Data_Hora_Chegada, Status_Viagem) ID_Veiculo FK Veiculo_Medico, ID_Rota FK Rota, ID_Paciente FK Paciente
Entrega = (ID_Entrega, ID_Produto, ID_Unidade_de_Saude, Data_Hora_Entrega, Quantidade_Entregue, Status_Entrega) ID_Produto FK Produto_Medico, ID_Unidade_de_Saude FK Unidade_de_Saude
Paciente = (ID_Paciente, Nome, Data_Nascimento, Genero, Endereco, Telefone, Condicao_Medica, Historico_Medico, ID_Unidade_de_Saude) ID_Unidade_de_Saude FK Unidade_de_Saude
Produto_Medico = (ID_Produto, Nome_Produto, Descricao, Fabricante, Tipo_Produto, Quantidade_Estoque, Data_Validade, ID_Unidade_de_Saude) ID_Unidade_de_Saude FK Unidade_de_Saude
Unidade_de_Saude = (ID_Unidade_de_Saude, Nome_Unidade, Endereco, Tipo_Unidade, Capacidade_Atendimento, Especialidades_Disponiveis)
Veiculo_Medico = (ID_Veiculo, Tipo_Veiculo, Placa_Veiculo, Capacidade_Passageiros, Capacidade_Carga, Disponibilidade)
Rota = (ID_Rota, Origem, Destino, Distancia, Tempo_Estimado_Viagem, Restricoes)
Avaliacao_do_Sistema = (ID_Avaliacao, Data_Avaliacao, Metricas_Avaliadas, Resultados_Obtidos, Acoes_Recomendadas)

Este mapeamento reflete como as entidades estão relacionadas entre si e como os atributos estão distribuídos em tabelas no banco de dados.