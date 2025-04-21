-- JOIN FAZ A JUN�AO DE TABELAS 
SELECT nm_produto, id_tipo_produto
FROM tb_produtos
WHERE id_produto = 3;


SELECT nm_tipo_produto
FROM tb_tipos_produtos
WHERE id_tipo_produto = 2;


SELECT tb_produtos.nm_produto,
        tb_tipos_produtos.nm_tipo_produto
FROM tb_produtos, tb_tipos_produtos
WHERE tb_produtos.id_tipo_produto = tb_tipos_produtos.id_tipo_produto
AND tb_produtos.id_produto = 3;



SELECT tb_produtos.nm_produto,
        tb_tipos_produtos.nm_tipo_produto
FROM tb_produtos, tb_tipos_produtos
WHERE tb_produtos.id_tipo_produto = tb_tipos_produtos.id_tipo_produto
ORDER BY tb_produtos.nm_produto; 


-- CONSULTAB UTILIZANDO APELIDOS
SELECT p.nm_produto, tp.nm_tipo_produto
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto = tp.id_tipo_produto
ORDER BY p.nm_produto;

-- APRESENTA UM SUBCONJUNTO DAS LINHAS DE UM PRODUTO CARTESIANO ENTRE AS TABELAS 
SELECT p.id_tipo_produto, tp.id_tipo_produto
FROM tb_produtos p, tb_tipos_produtos tp;


SELECT *
FROM tb_produtos p, tb_tipos_produtos tp;


-- AS JOINS USARAO OS RALACIONAMENTOS ENTRE ESSAS TABELAS 
SELECT c.nome, c.sobrenome, p.nm_produto AS produto,
       tp.nm_tipo_produto AS tipo
FROM tb_clientes c, tb_compras co, tb_produtos p, tb_tipos_produtos tp
WHERE c.id_cliente = co.id_cliente AND       -- 1� Jun��o
      p.id_produto = co.id_produto AND       -- 2� Jun��o
      p.id_tipo_produto = tp.id_tipo_produto -- 3� Jun��o
ORDER BY p.nm_produto;



-- CONSULTA UTILIZANDO UMA NAO-EQUIJOIN PARA RECUPERAR O SALARIO E OS NIVEIS DOS FUNCIONARIOS; O NIVEL SALARIAL E DENOMINADO PELO OPERADOR BETWEEN
-- UMA NAO-EQUIJOIN UTILIZA QUALQUER OPERADOR EXETO O SINAL DE "="
SELECT *
FROM tb_grades_salarios;

--jun�ao interna  /  nao-equijoin
-- inter join between
SELECT f.nome, f.sobrenome, f.cargo, f.salario, gs.id_salario
FROM tb_funcionarios f, tb_grades_salarios gs
WHERE f.salario BETWEEN gs.base_salario AND gs.teto_salario
ORDER BY gs.id_salario


-- JUN�AO EXTERNA ESQUERDA COLOCA OPERADOR DO LADO DIREITO
-- O PERDADOR (+) ESTA DO LADO OPOSTO DA COLUNA ID_TIPO_PRODUTO NA TABELA TB_PRODUTOS (COLUNA QUE CONTEM VALORES NULOS)
SELECT p.nm_produto AS produto,
       tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto = tp.id_tipo_produto (+)
ORDER BY 1;


-- JUN�AO EXTERNA DIREITA COLOCA O OPERADOR DO LADO ESQUERDO
SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto (+) = tp.id_tipo_produto
ORDER BY 1;


--ORA-00904: "P"."IS_TIPO_PRODUTO": identificador inv�lido
-- iSSO NAO E PERMITIDO REALIZAR VAI DA ERRO
SELECT p.nm_produto AS produto, tp.nm_tipo_produtos AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.is_tipo_produto (+) = tp.id_tipo_produto (+)
ORDER BY 1;


-- ORA-25556: Um predicado sem o operador de jun��o externa (+) n�o � permitido no operando OR ou IN quando o operador de jun��o externa (+) est� presente
-- isso nao e permitido realizar vai da erro
SELECT p.nm_produto AS produto, tp.nm_tipo_produtos AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.is_tipo_produto (+) = tp.id_tipo_produto 
ORDER BY 1;
OR p.id_tipo_produto - 1;


--AUTOJOIN 
--E REALIZADO NA MESMA TABELA (RECURSIVIDADE)
-- NECESSIDADE DE UTILIZAR APELIDOS DISTINTOS PARA IDENTIFICAR CADA REFERENCIA � TABELA 
-- UTILIZA AUTOJOIN PARA EXIBIR OS NOMES DE CADA FUNCIONARIO E SEU RESPECTIVO GERENTE 
-- 
SELECT f.nome || '' || f.sobrenome || ' trabalha para ' || g.nome --"Quem � gerente de quem?"
FROM tb_funcionarios f, tb_funcionarios g
WHERE f.id_gerente = g.id_funcionario
ORDER BY f.nome;


-- COMO O ID_GERENTE DE JAMES SMITH � NULO,  A CONDI�AO NAO RETORNA A TUPLA 
--FUN�AO NVL � UTILIZADO PARA INCLUIR UM STRING SINALIZADOR QUE JAMES SMITH TRABALHA PARA OS ACIONISTAS 

SELECT f.nome || ' trabalha para ' || NVL(g.sobrenome, 'os acionistas')-- "Quem � gerente de quem?"
FROM tb_funcionarios f, tb_funcionarios g
WHERE f.id_gerente = g.id_funcionario(+)
ORDER BY f.sobrenome DESC;


SELECT f nome ||" Trabalha para"||,
NVL(g nome "Os acionistas"),
FROM tb_empregados f, tb_empregados g
WHERE f id_gerente, g id_empregado (+)
ORDER BY g nome DEST;

