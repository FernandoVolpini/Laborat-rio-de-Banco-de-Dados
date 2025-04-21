SELECT f.nome || 'trabalha para' ||  NVL(g.sobrenome, 'os acionistas')
FROM tb_funcionarios f, tb_funcionarios g
WHERE f.id_gerente = g.id_funcionario (+)
ORDER BY f.sobrenome DESC;


--REALIZANDO UMA INTRODUÇAO DA CLAUSULA INNER JOIN COM UMA ON PARA REALIZAR UMA JOIN INTEIRA 
SELECT p.nm_produto AS PRODUTO, tp.nm_tipo_produto AS TIPO
FROM tb_produtos p
INNER JOIN tb_tipos_produtos tp ON (p.id_tipo_produto = tp.id_tipo_produto)
ORDER BY p.nm_produto;


--EXEMPLO DE UMA NAO-EQUIJOIN COM A CLAUSULA ON
SELECT f.nome, f.sobrenome, f.cargo, f.salario, gs.id_salario
FROM tb_funcionarios f  
INNER JOIN tb_grades_salarios gs ON (f.salario BETWEEN gs.base_salario
                                                    AND gs.teto_salario)
ORDER BY gs.id_salario;


--USO DE "USING" SUBSTITUINDO O "ON"
--USING CONFUGURA AUTOMATICAMENTE A CLAUSULA ON
--AS COLUNAS NA EQUIJOIN DEVEM TER O MESMO NOME 
--A CALUSLA DEVE SER UMA EQUIJOIN
-- DIFICILMENTE USA NO MERCADO POIS TER NOMES DIFERENTES, COM ISSO NAO ATENDE OS REQUISITOS OBRIGATORIOS PARA USAR A USING
SELECT p.nm_produto AS PRODUTO, tp.nm_tipo_produto AS TIPO
FROM tb_produtos p
INNER JOIN tb_tipos_produtos tp
USING (id_tipo_produto);

--PRECEDER ANTES DO NOME E DA COLUNA, O NOME DA TABELA 
--DEVEMOS COLOCAR O NOME SOZINHO 
SELECT p.nm_produto AS PRODUTO, 
        tp.nm_tipo_produto AS TIPO, id_tipo_produto
FROM tb_produtos p
INNER JOIN tb_tipos_produtos tp
USING (id_tipo_produto);



--USING (P.ID_TIPO_PRODUTO)
--" CASO TENTE RODAR DARA ESSE ERRO": ORA-01748: somente nomes simples de coluna permitidos aqui
SELECT p.nm_produto AS PRODUTO,
        tp.nm_tipo_produto AS TIPO, id_tipo_produto
FROM tb_produtos p
INNER JOIN tb_tipos_produtos tp
USING (p.id_tipo_produto);



SELECT c.nome, c.sobrenome, p.nm_produto AS produto,
        tp.nm_tipo_produto AS tipo
FROM tb_clientes c
INNER JOIN tb_compras co USING (id_cliente)
INNER JOIN tb_produtos p USING (id_produto)
INNER JOIN tb_tipos_produtos tp USING (id_tipo_produto)
ORDER BY p.nm_produto;


-- Preserva as tabelas do lado esquerdo
SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p
LEFT OUTER JOIN tb_tipos_produtos tp USING(id_tipo_produto)
ORDER BY p.nm_produto;


--prezerva as tabelas do lado direito
SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p
RIGHT OUTER JOIN tb_tipos_produtos tp USING (id_tipo_produto)
ORDER BY p.nm_produto;


--o tipo "full" prezerva tanto a tabela da direita quanto da esquerda 
SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p
FULL OUTER JOIN tb_tipos_produtos tp USING (id_tipo_produto)
ORDER BY p.nm_produto;


-- UMA OUTOJUNÇAO UTILIZANDO UMA JUNÇAO INTERNA 
SELECT f.nome ||' ' || f.sobrenome || 'trabalha para' || g.nome 
FROM tb_funcionarios f
INNER JOIN tb_funcionarios g ON(f.id_gerente = g.id_funcionario)
ORDER BY f.nome;


-- FORÇANDO UM PRODUTO CARTESIANO 
-- 
SELECT *
FROM tb_tipos_produtos
CROSS JOIN tb_produtos;


SELECT id_produto, nm_produto, preco
FROM tb_produtos
WHERE id_produto = &v_id_produto;


SELECT nm_produto, &v_coluna
FROM &v_tabela
WHERE &v_coluna = &v_id_produto;


-- & para definiçao de variaveis
SELECT nm_produto, &&v_coluna
FROM &v_tabela
WHERE &&v_coluna = &v_id_produto;



DEFINE v_id_produto = 7;

SELECT nm_produto, id_produto
FROM tb_produtos
WHERE id_produto = &v_id_produto;



ACCEPT v_id NUMBER FORMAT 99 PROMPT 'ENTRE COM O ID';

SELECT id_produto, nm_produto, preco 
FROM tb_produtos
WHERE id_produto - &v_id;


DEFINE v_id_produto = 7;

SELECT nm_produto, id_produto
FROM tb_produtos
WHERE id_produto = &v_id_produto;

UNDEFINE v_id_produto;

@ C:\temp\teste_1.sql