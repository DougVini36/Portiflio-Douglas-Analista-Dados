CREATE TABLE processos (
  id_processo INT PRIMARY KEY,
  comarca VARCHAR(100),
  tipo_processo VARCHAR(100),
  data_distribuicao DATE,
  data_sentenca DATE
);

CREATE TABLE movimentacoes (
  id INT PRIMARY KEY,
  id_processo INT,
  tipo_movimentacao VARCHAR(100),
  data_movimentacao DATE
);
