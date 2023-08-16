CREATE TABLE fabricantes (
    id UUID PRIMARY KEY,
    nome TEXT,
    fundacao INT,
);


CREATE TABLE modelos (
    id UUID PRIMARY KEY,
    nome TEXT,
    ano INT,
    fabricante_id UUID,
    caracteristicas MAP<TEXT, TEXT>
);

CREATE TABLE proprietarios (
    id UUID PRIMARY KEY,
    nome TEXT,
    idade INT,
    carros LIST<TEXT>
);

CREATE TABLE manutencoes (
    id UUID PRIMARY KEY,
    modelo_id UUID,
    nome_proprietario TEXT,
    data TIMESTAMP,
    descricao TEXT,
    custo DOUBLE
);

