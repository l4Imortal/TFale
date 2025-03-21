CREATE TABLE alunos (
    aluno_id VARCHAR(5) NOT NULL PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    endereco VARCHAR(60),
    cidade VARCHAR(15),
    estado VARCHAR(15),
    cep VARCHAR(10),
    pais VARCHAR(15),
    telefone VARCHAR(24)
);

INSERT INTO alunos (aluno_id, nome, endereco, cidade, estado, cep, pais, telefone) VALUES
('A001', 'João Silva', 'Rua A', 'São Paulo', 'SP', '01000-000', 'Brasil', '11999999999'),
('A002', 'Maria Oliveira', 'Rua B', 'Rio de Janeiro', 'RJ', '21000-000', 'Brasil', '21999999999'),
('A003', 'Pedro Santos', 'Rua C', 'Salvador', 'BA', '40000-000', 'Brasil', '71999999999');