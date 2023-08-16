-- Todos os modelos de um determinado fabricante podem ser 
-- consultados sem haver necessidade de percorrer toda a tabela dos modelos
CREATE INDEX idx_fabricante ON modelos (fabricante_id);
-- Exemplo: SELECT * FROM modelos WHERE fabricante_id = <ID_DO_FABRICANTE>;

-- Conseguimos pesquisar um proprietário pelo nome sem percorrer toda a tabela
CREATE INDEX idx_nome_proprietario ON proprietarios (nome);
-- Exemplo: SELECT * FROM proprietarios WHERE nome = '<NOME_DO_PROPRIETARIO>';

-- Conseguimos pesquisar uma manutenção pelo nome do proprietário sem percorrer toda a tabela
CREATE INDEX idx_nome_proprietario_manutencao ON manutencoes (nome_proprietario);
-- Exemplo: SELECT * FROM manutencoes WHERE nome_proprietario = '<NOME_DO_PROPRIETARIO>';
