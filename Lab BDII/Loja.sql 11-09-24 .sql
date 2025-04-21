SELECT id_cliente
FROM tb_compras;


SELECT DISTINCT id_cliente
FROM tb_compras;


SELECT *
FROM tb_clientes
WHERE id_cliente !=2;


SELECT id_produto, nm_produto
FROM tb_produtos
WHERE id_produto > 2;


SELECT ROWNUM, id_produto, nm_produto
FROM tb_produtos
WHERE ROWNUM <=3;


SELECT * 
FROM tb_clientes
WHERE id_cliente > ANY (2, 3, 4);


SELECT * 
FROM tb_clientes
WHERE id_cliente > ALL (2, 3, 4);

// CORINGAS DO "LIKE"
// "_" -> CORRESPONDE A QUALQUER CARACTER A POSIÇÃO DENOMINADA.
//"%" -> CORRESPONDE A TODOS OS CARACTERES APOS O CARACTER DENOMINADO.
SELECT *
FROM tb_clientes
WHERE nome LIKE '_o%';


SELECT *
FROM tb_clientes
WHERE nome LIKE '_a%';


SELECT *
FROM tb_funcionarios
WHERE nome LIKE '_a%';


SELECT *
FROM tb_clientes
WHERE nome LIKE 'J%';


SELECT *
FROM tb_clientes
WHERE nome LIKE '____';


SELECT *
FROM tb_funcionarios
WHERE nome LIKE '____';


//ESCAPE -> USANDO O ESCAPE DEIXA DE SER CRINGA, SERAO CARACTERES REAIS DE BUSCA 
SELECT nome 
FROM tb_promocao 
WHERE nome LIKE '%\%%' ESCAPE '\';


SELECT nome 
FROM tb_promocao 
WHERE nome LIKE '%\_%' ESCAPE '\';


//O USO DO "IN" RECUPERA AS LINHAS DA TABELA tb_clientes ONDE id_CLIENTE  corresponde a 2, 3 ou 5: 
SELECT * 
FROM tb_clientes
WHERE id_cliente IN (2, 3, 5);


-- O NOT IN PARA RECUPERAR AS LINHAS NAO RECUPERADAS POR IN
SELECT *
FROM tb_clientes 
WHERE id_cliente NOT IN(2, 3, 5);


-- NOT IN RETORNA FALSO SE O VALOR DA LISTA FOR NULO
-- A CONSULTA A SEGUIR NAO RETORNA NUENHUMA LINHA, POIS UM VALOR NULO ESTA INCLUIDO NA LISTA 
SELECT *
FROM tb_clientes 
WHERE id_cliente NOT IN (2, 3, 5, NULL);

SELECT *
FROM tb_clientes
WHERE id_cliente NOT IN(2, 3, 5, NVL(NULL, 0));

--
SELECT *
FROM tb_clientes 
WHERE id_cliente BETWEEN 1 AND 3;


SELECT *
FROM tb_clientes
WHERE id_cliente NOT BETWEEN 1 AND 3;


-- a coluna dt_nascimento é maior que 01 JAN  DE 1970.
--A COLUNA id_cliente é maior que 3.
-- AND -> AS DUAS CONDIÇOES TEM QUE SER VERDADEIRAS. 
SELECT *
FROM tb_clientes
WHERE dt_nascimento > '01/JAN/1970' AND 
      id_cliente > 3;
      
-- a coluna dt_nascimento é maior que 01 JAN  DE 1970.
--A COLUNA id_cliente é maior que 3.
-- OR -> PELO MENOS UMA DAS CONDIÇOES DEVEM SER VERDADEIRAS. 
SELECT *
FROM tb_clientes
WHERE dt_nascimento > '01/JAN/1970' OR
      id_cliente > 3;
      
-- AND TEM PRECEDENCIA SOBRE OR 
-- OPERADOR DE COMPARAÇAO TEM PRECENDENCIA SOBRE AND 
-- A NAO SER QUE USE ENTRE PARENTESES "()" OCORRENDO A ANULAÇAO DAPRECEDENCIA, INDICANDO A ORDEM QUE DESEJA EXECUTAR AS EXPRESSOES 
-- a coluna dt_nascimento é maior que 01 JAN  DE 1970.
--A COLUNA id_cliente é maior que 2.
-- A COLUNA TELEFONE TEM 1211 NO FINAL 
SELECT * 
FROM tb_clientes
WHERE dt_nascimento > '01/JAN/1970' OR
      id_cliente < 2 AND
      telefone LIKE '%1211';
      
SELECT * 
FROM tb_clientes
WHERE (dt_nascimento > '01/JAN/1970' OR id_cliente < 2) AND
      telefone LIKE '%1211';
   
      
SELECT * 
FROM tb_clientes
WHERE dt_nascimento > '01/JAN/1970' OR
      (id_cliente < 2 AND telefone LIKE '%1211');
      

-- OREDER BY PARA DIFERENCIAR E CLASSIFICAR CASO TENHA O MESMO NOME, ORDENANDO E CLASSIFICANDO A TABELA 
SELECT * 
FROM tb_clientes 
ORDER BY sobrenome;

-- ASCENDENTE PELO NOME E DESCENTE PELO SOBRENOME, USADO COMO CRITERIO DE DESEMPATE CASO TENHA NOMES IDENTICOS
SELECT * 
FROM tb_clientes 
ORDER BY nome ASC, sobrenome DESC;


SELECT id_cliente, nome, sobrenome
FROM tb_clientes 
ORDER BY 1;

--SEGUE A ORDEM DA TABELA QUE EU DENOMINEI ABAIXO
--SELECT col_d, col_c, col_a, col_b
--FROM tb_x
--ORDER BY 2; 

-- SEGUE A OREDEM DA TABELA ORIGINAL 
--SELECT x
--FROM tb_x
--ORDER BY 2;

