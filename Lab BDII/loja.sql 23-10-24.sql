-- Conteúdo do script "teste_2.sql"
@C:\temp\teste_2.sql

-- Invocando o script "teste_3.sql"
@C:\temp\teste_3.sql 2

-- Invocando o script "teste_4.sql"
@C:\temp\teste_3.sql 6 19.99


--Teste de estresse no BD, utilizando codigo em PL/sql
CREATE TABLE tb_teste(
ID      INTEGER,
valor   VARCHAR2(100)
);

BEGIN
    FOR v_loop IN 1..100000 LOOP
            INSERT INTO tb_teste (ID, valor)
            VALUES (v_loop, 'DBA_' || v_loop);
        END LOOP;
END;


SELECT *
FROM tb_teste
ORDER BY 1 DESC;

--removendo todas as tuplas com a instruçao DELETE 
DELETE 
FROM tb_teste;


--REMOVENDO TODAS AS TUPLAS COM AS INSTRUÇOES TRUNCATE
TRUNCATE TABLE tb_teste;




CREATE TABLE tb_cliente_teste(
id_cliente  INTEGER,
ds_cliente  VARCHAR2(40),
nm_cliente  VARCHAR2(40),
valor   NUMERIC,
fg_ativo    INTEGER,
PRIMARY KEY(id_cliente)
);


    
--opcao inserir (parametro opcao =I)
CALL manipula_dados(1, 'Cliente 1', 'Nome Cliente 1', 22, 1, 'I');


--opcao inserir (parametros opçao = I)
CALL manipula_dados(2, 'Cliente 2', 'Nome cliente 2', 99, 1, 'I');

--opcao alterar (paramentro opçao = U)
CALL manipula_dados(2, 'Cliente - Alterado hoje', 'Alterado', 99, 1, 'U');

--opçao exclir (parametros opçao = D)
CALL manipula_dados(2, NULL, NULL, NULL, NULL, 'D');


SELECT *
FROM tb_cliente_teste;