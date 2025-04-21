-- Data (06/11/2024)

-- JOIN FAZ A JUN?AO DE TABELAS 
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
WHERE c.id_cliente = co.id_cliente AND       -- 1? Jun??o
      p.id_produto = co.id_produto AND       -- 2? Jun??o
      p.id_tipo_produto = tp.id_tipo_produto -- 3? Jun??o
ORDER BY p.nm_produto;



-- CONSULTA UTILIZANDO UMA NAO-EQUIJOIN PARA RECUPERAR O SALARIO E OS NIVEIS DOS FUNCIONARIOS; O NIVEL SALARIAL E DENOMINADO PELO OPERADOR BETWEEN
-- UMA NAO-EQUIJOIN UTILIZA QUALQUER OPERADOR EXETO O SINAL DE "="
SELECT *
FROM tb_grades_salarios;

--jun?ao interna  /  nao-equijoin
-- inter join between
SELECT f.nome, f.sobrenome, f.cargo, f.salario, gs.id_salario
FROM tb_funcionarios f, tb_grades_salarios gs
WHERE f.salario BETWEEN gs.base_salario AND gs.teto_salario
ORDER BY gs.id_salario


-- JUN?AO EXTERNA ESQUERDA COLOCA OPERADOR DO LADO DIREITO
-- O PERDADOR (+) ESTA DO LADO OPOSTO DA COLUNA ID_TIPO_PRODUTO NA TABELA TB_PRODUTOS (COLUNA QUE CONTEM VALORES NULOS)
SELECT p.nm_produto AS produto,
       tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto = tp.id_tipo_produto (+)
ORDER BY 1;


-- JUN?AO EXTERNA DIREITA COLOCA O OPERADOR DO LADO ESQUERDO
SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto (+) = tp.id_tipo_produto
ORDER BY 1;


--ORA-00904: "P"."IS_TIPO_PRODUTO": identificador inv?lido
-- iSSO NAO E PERMITIDO REALIZAR VAI DA ERRO
SELECT p.nm_produto AS produto, tp.nm_tipo_produtos AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.is_tipo_produto (+) = tp.id_tipo_produto (+)
ORDER BY 1;


-- ORA-25556: Um predicado sem o operador de jun??o externa (+) n?o ? permitido no operando OR ou IN quando o operador de jun??o externa (+) est? presente
-- isso nao e permitido realizar vai da erro
SELECT p.nm_produto AS produto, tp.nm_tipo_produtos AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.is_tipo_produto (+) = tp.id_tipo_produto 
ORDER BY 1;
OR p.id_tipo_produto - 1;


--AUTOJOIN 
--E REALIZADO NA MESMA TABELA (RECURSIVIDADE)
-- NECESSIDADE DE UTILIZAR APELIDOS DISTINTOS PARA IDENTIFICAR CADA REFERENCIA ? TABELA 
-- UTILIZA AUTOJOIN PARA EXIBIR OS NOMES DE CADA FUNCIONARIO E SEU RESPECTIVO GERENTE 
-- 
SELECT f.nome || '' || f.sobrenome || ' trabalha para ' || g.nome --"Quem ? gerente de quem?"
FROM tb_funcionarios f, tb_funcionarios g
WHERE f.id_gerente = g.id_funcionario
ORDER BY f.nome;


-- COMO O ID_GERENTE DE JAMES SMITH ? NULO,  A CONDI?AO NAO RETORNA A TUPLA 
--FUN?AO NVL ? UTILIZADO PARA INCLUIR UM STRING SINALIZADOR QUE JAMES SMITH TRABALHA PARA OS ACIONISTAS 

SELECT f.nome || ' trabalha para ' || NVL(g.sobrenome, 'os acionistas')-- "Quem ? gerente de quem?"
FROM tb_funcionarios f, tb_funcionarios g
WHERE f.id_gerente = g.id_funcionario(+)
ORDER BY f.sobrenome DESC;




-- Data (13/11/2024)

SELECT id_tipo_produto, VARIANCE(preco)
FROM tb_produtos
GROUP BY id_tipo_produto
ORDER BY id_tipo_produto;


SELECT VARIANCE(preco)
FROM tb_produtos
GROUP BY id_tipo_produto
ORDER BY VARIANCE(preco);


SELECT id_tipo_produto, AVG(preco)
FROM tb_produtos;
-- ORA-00937: não é uma função de grupo de grupo simples

SELECT id_tipo_produto, AVG(preco)
FROM tb_produtos
WHERE AVG(preco) > 20.00
GROUP BY id_tipo_produto;
-- ORA-00934: a função de grupo não é permitida aqui


SELECT id_tipo_produto, AVG(preco)
FROM tb_produtos
GROUP BY id_tipo_produto
HAVING AVG(preco) > 20.00;

CREATE TABLE tb_pessoas(
nm_pessoa         VARCHAR2(60)
);

SELECT *
FROM tb_pessoas;
-- Realizando a carga na tb_pessoas

-- Executar 2 x
INSERT INTO tb_pessoas
VALUES
('Bruno');

-- Executar 1 x
INSERT INTO tb_pessoas
VALUES
('Diego');

-- Executar 3 x
INSERT INTO tb_pessoas
VALUES
('Nicole');

-- Executar 1 x 
INSERT INTO tb_pessoas
VALUES
('Rafael');

-- Executar 4 x
INSERT INTO tb_pessoas
VALUES
('Fernando');

SELECT *
FROM tb_pessoas;


SELECT nm_pessoa, COUNT(1)
FROM tb_pessoas
GROUP BY nm_pessoa
HAVING COUNT(1) > 1;

SELECT nm_pessoa
FROM tb_pessoas
GROUP BY nm_pessoa
HAVING BY nm_pessoa
HAVING COUNT (1) > 1;



SELECT id_tipo_produto, AVG(preco)
FROM tb_produtos
WHERE preco < 15.00
GROUP BY id_tipo_produto
ORDER BY id_tipo_produto;


SELECT id_tipo_produto, AVG(preco)
FROM tb_produtos
WHERE preco < 15.00
GROUP BY id_tipo_produto
HAVING AVG(preco) > 13.00
ORDER BY id_tipo_produto;


INSERT INTO tb_clientes (id_cliente, nome, sobrenome, dt_nascimento, telefone, fg_ativo)
VALUES (7, 'Steve', 'Purple', DATE'1972-10-25', '800-555-1215',1);

SELECT *
FROM tb_clientes
ORDER BY id_cliente;

ROLLBACK;


SELECT  id_cliente, TO_CHAR(dt_nascimento, 'MONTH DD, YYYY')
FROM tb_clientes;

SELECT TO_CHAR(SYSDATE, 'MONTH DD, YYYY, HH24:MI:SS')
FROM dual;

SELECT TO_CHAR(TO_DATE('05-FEV1968'),'MONTH DD, YYYY')
FROM dual;

SELECT TO_DATE('04-JUL-2023'), TO_DATE('04-JUL-23')
FROM dual;

SELECT TO_DATE('Jul 04, 2023', 'MONTH DD, YYYY')
FROM dual;

SELECT *
FROM nls_session_parameters;

ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/YYYY';

SELECT TO_DATE('7.4.23', 'MM.DD.YY')
FROM dual;

INSERT INTO tb_clientes(id_cliente, nome, sobrenome, dt_nascimento, telefone, fg_ativo)
VALUES
(10, 'Nome', 'Sobrenome', TO_DATE('Jul 04, 2013 19:32:36', 'MONTH DD, YYYY HH24:MI:SS'), '800-55501215', 1);

SELECT id_cliente,
      TO_CHAR(dt_nascimento, 'DD-MON-YYYY HH24:MI:SS')
FROM tb_clientes
ORDER BY id_cliente;

ROLLBACK;

SELECT TO_CHAR(TO_DATE('Jul 04, 2023 19:32:36', 'MONTH DD, YYYY HH24:MI:SS'), 'HH24:MI:SS')
FROM dual;

SELECT *
FROM nls_session_parameters;

ALTER SESSION SET NLS_DATE_FORMAT='MON/DD/YYYY';


SELECT *
FROM nls_session_parameters;

ALTER SESSION SET NLS_DATE_FORMAT='MON/DD/YYYY';

SELECT 
TO_CHAR(TO_DATE('Jul 04, 15', 'MONTH DD, YY'), 'MONTH DD, YYYY'),
TO_CHAR(TO_DATE('Jul 04, 75', 'MONTH DD, YY'), 'MONTH DD, YYYY')
FROM dual; 



SELECT 
  TO_CHAR(TO_DATE('Jul 04, 15', 'MONTH DD, RR'), 'MONTH DD, YYYY'),
  TO_CHAR(TO_DATE('Jul 04, 75', 'MONTH DD, RR'), 'MONTH DD, YYYY')
FROM dual;


SELECT ADD_MONTHS('Jul 01, 2023', 13)
FROM dual;


SELECT ADD_MONTHS('Jul 01, 2023', -13)
FROM dual;

SELECT LAST_DAY('Jul 01, 2023')
FROM dual;


SELECT MONTHS_BETWEEN('Jul 03, 2023', 'Mai 01, 2021')
FROM dual;

SELECT NEXT_DAY('Jul 03, 2023', 1)
FROM dual;

--DOMINGO 1 , SEGUNDA 2, TERÇA 3... 
SELECT NEXT_DAY(SYSDATE, 1)
FROM dual;
