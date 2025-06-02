-- Total de vendas por categoria
SELECT categoria, SUM(valor * quantidade) AS total_vendas
FROM base_vendas
GROUP BY categoria;

-- Vendas mensais por região
SELECT DATE_TRUNC('month', data_venda) AS mes, regiao, SUM(valor * quantidade) AS total
FROM base_vendas
GROUP BY mes, regiao
ORDER BY mes;

-- Produto mais vendido em quantidade
SELECT produto, SUM(quantidade) AS total_unidades
FROM base_vendas
GROUP BY produto
ORDER BY total_unidades DESC
LIMIT 1;
