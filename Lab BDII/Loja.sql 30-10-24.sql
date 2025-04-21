-- 30/10/24

SELECT ASCII('a'), ASCII('A'), ASCII('z'), ASCII('Z'), ASCII('0'), ASCII('9')
FROM dual;

SELECT CHR(97), CHR(65), CHR(122), CHR(90), CHR(48), CHR(57)
FROM dual;

SELECT CONCAT(nome, sobrenome)
FROM tb_funcionarios;


SELECT id_produto, INITCAP(ds_produto)
FROM tb_produtos;

-- INSTR = PROCURA O STRING EM "X", RETORNANDO A POSIÇÃO
--INSTR = (X, LOCALIZAR_STRING):
 
SELECT nm_produto, INSTR(nm_produto, 'Science')
FROM tb_produtos
WHERE id_produto = 1;

SELECT nm_produto, INSTR(nm_produto, 'e', 1, 2)
FROM tb_produtos
WHERE id_produto = 1;


--LENGTH = OBTEM O NUMERO DE CARACTERES EM "X"

SELECT nm_produto, LENGTH(nm_produto)
FROM tb_produtos;


--LOWER = CONVERTER AS LETRAS DE "X" PARA MINUSCULO
--UPPER = CONVERTER AS LETRAS DE "X" PARA MAIUSCULO 
SELECT UPPER(nome), LOWER(sobrenome)
FROM tb_funcionarios;


--LPAD = PREENCHE "X" COM ESPAÇOS À ESQUERDA ATÉ ATINGIR O COMPRIMENTO TOTAL DO STRING (LARGURA)
--PERMITE FORNECER O STRING DE PREENCHIMENTO (OPICIONAL) 

--RPAD = PREENCHE "X" COM ESPAÇOS À DIREITA ATÉ ATINGIR O COMPRIMENTO TOTAL DO STRING (LARGURA)
--PERMITE FORNECER O STRING DE PREENCHIMENTO (OPICIONAL) 

SELECT RPAD(nm_produto, 30, '.'), LPAD(preco, 8, '*+')
FROM tb_produtos
WHERE id_produto < 4;


--LTRIM = CORTA A ESQUERDA DE X 
--PERMITE FORNECER O STRING DE CORTE (OPICIONAL)
--CASO NAO SEJA INFORMADO O STRING DE CORTE, OS ESPAÇOS SERAO CORTADOS POR PADRAO 

--RTRIM = CORTA A DIREITA DE "X"
--PERMITE FORNECER O STRING DE CORTE (OPICIONAL)
--CASO NAO SEJA INFORMADO O STRING DE CORTE, OS ESPAÇOS SERAO CORTADOS POR PADRAO 

--TRIM = CORTA A DIREITA E ESQUERDA DE "x"
--PERMITE FORNECER O STRING DE CORTE (OPICIONAL)
--CASO NAO SEJA INFORMADO O STRING DE CORTE, OS ESPAÇOS SERAO CORTADOS POR PADRAO 


SELECT
   LTRIM('   Olá pessoal, tudo joia?'),
   RTRIM('Oi, tudo bem!abcabc', 'abc'),
   TRIM('0' FROM '000Treinamento Oracle!00000')
FROM dual;


--NVL = RETORNA UM VALOR CASO "X" SEJA NULO, CASO CONTRARIO, "X" É RETORNADO
--RECUPERA AS COLUNAS ID_CLIENTE E TELEFONE DA TB_CLIENTES 
--OS VALORES ULOS DA COLUNA TELEFONE SERAO CNVERTIDOS PARA STRING "TELEFONE INEXISTENTE" 

SELECT id_cliente, NVL(telefone, 'Telefone inexistente')
FROM tb_clientes

ORDER BY id_cliente DESC;

    
--NVL2 = Retorna valor1 se "x" nao for nulo, caso contrario valor2 e retornado 
SELECT id_cliente, NVL2(telefone, 'Telefone existente', 'Telefone inexistente')
FROM tb_clientes
ORDER BY id_cliente DESC;


--replace = procura string_busca em x e substitui por string_substituta 
SELECT REPLACE(nm_produto, 'Science', 'Physics')
FROM tb_produtos
WHERE id_produto = 1;

SELECT sobrenome
FROM tb_clientes
WHERE SOUNDEX(sobrenome) = SOUNDEX('whyte');

SELECT SUBSTR('Laboratório de Banco de Dados', 16, 14)
FROM dual;

SELECT nm_produto, UPPER(SUBSTR(nm_produto, 2, 8))
FROM tb_produtos
WHERE id_produto < 4;


SELECT id_produto, preco, preco - 30.00, ABS(preco - 30.00)
FROM tb_produtos
WHERE id_produto < 4;


SELECT CEIL(5.8), CEIL(-5.2)
FROM dual;

SELECT FLOOR(5.8), FLOOR(-5.2)
FROM dual;

SELECT MOD(8, 3), MOD(8, 4)
FROM dual;


SELECT POWER(2, 1), POWER(2, 3)
FROM dual;


SELECT ROUND(5.75), ROUND(5.75, 1), ROUND(5.75, -1)
FROM dual;


SELECT SIGN(-5), SIGN(5), SIGN(0), SIGN(NULL)
FROM dual;

SELECT SQRT(25), SQRT(5)
FROM dual;

SELECT SQRT(25), ROUND(SQRT(5), 2)
FROM dual;

SELECT TRUNC(5.75), TRUNC(5.75, 1), TRUNC(5.75, -1)
FROM dual;


SELECT TO_CHAR(12345.67)
FROM dual;


SELECT TO_CHAR(12345.67, '99,999.99')
FROM dual;


SELECT TO_CHAR(12345.67, '$99,999.99')
FROM dual;

SELECT TO_CHAR(00.67, 'B9.99')
FROM dual;


SELECT TO_CHAR(12345.67, 'C99,999.99')
FROM dual;

SELECT TO_CHAR(12345.67, '99999.99EEEE')
FROM dual;


SELECT TO_CHAR(0012345.6700, 'FM99999.99')
FROM dual;

SELECT TO_CHAR(12345.67, 'L99,999.99')
FROM dual;

SELECT TO_CHAR(-12345.67, '99,999.99MI')
FROM dual;

SELECT TO_CHAR(-12345.67, '99,999.99PR')
FROM dual;

SELECT TO_CHAR(2024, 'RN')
FROM dual;


SELECT TO_CHAR(12345.67, 'S99999.99')
FROM dual;

SELECT TO_CHAR(12345.67, '99999V99')
FROM dual;

SELECT 'Produto de ID: ' || id_produto || ' têm o preço de: ' || 
        TO_CHAR(preco, 'L99.99') "Preço dos Produtos"
FROM tb_produtos
WHERE id_produto < 5;
