SELECT *
FROM tb_clientes
WHERE id_cliente = 2;

SELECT ROWID, id_cliente
FROM tb_clientes;

DESCRIBE tb_clientes;

SELECT ROWNUM, id_cliente, nome, sobrenome
FROM tb_clientes;

SELECT ROWNUM, id_cliente, nome, sobrenome
FROM tb_clientes
WHERE id_cliente = 3;



SELECT 2* 6
FROM dual;

SELECT 10 * 12 / 3 - 1
FROM dual;

SELECT 10 * (12 / 3 - 1)
FROM dual;

SELECT TO_DATE('22/JUN/2024') + 2 
FROM dual;

SELECT TO_DATE('31/DEC/2023') - TO_DATE('22/JUN/2023')
FROM dual;

SELECT nm_produto, preco, preco + 2.00
FROM tb_produtos;

DESCRIBE dual;

SELECT *
FROM dual;


//o AS é uma variavel opcional do programador em SQL.

SELECT preco, preco * 2 DOBRO_PREÇO
FROM tb_produtos;

SELECT preco, preco * 2 "Dobro do preço"
FROM tb_produtos;

SELECT preco, preco * 2 AS "Dobro do preço"
FROM tb_produtos;


SELECT nome || '' || sobrenome "Nome do cliente"
FROM tb_clientes;

SELECT nome || '' || sobrenome AS "Nome do cliente"
FROM tb_clientes;

SELECT 'O funcionario' || nome || ' ' || sobrenome ||
        ' recebe o salario de R$ ' || salario || ', mas deseja ' ||
        salario * 3 "Salario dos sonhos"
FROM tb_funcionarios;


//VERIFICADOR DE EXISTENCIA DE VALORES NULOS - DEVE SER ESPECIFICADO
SELECT id_cliente, nome, sobrenome, dt_nascimento
FROM tb_clientes 
WHERE dt_nascimento IS NULL;


SELECT id_cliente, nome, sobrenome, telefone
FROM tb_clientes
WHERE telefone IS NULL;


//PERMITE QUE TROQUE O VALOR NULO PARA OUTRO VALOR OU NOME DENOMINADO -
//NVL SO TRABALHA COM 2 VALORES 
//SE A COLUNA FOR VARCHAR EU SO CONSIGO DEVOLVER VARCHAR 
// SE A COLUNA FOR UM NUMBER EU SO CONSIGO DEVOLVER UM NUMBER 
//SE A COLUNA FOR DATE EU SO CONSIGO DEVOLVER UM DATE 
SELECT id_cliente, nome, sobrenome,
        NVL(telefone, 
        'Numero do telefone desconhecido') Numero_Telefone
FROM tb_clientes;


SELECT id_cliente, nome, sobrenome,
        NVL(dt_nascimento, 
        '22/JUN/2004') "Data de nascimento"
FROM tb_clientes;



SELECT nome, LENGTH(nome) "expressao 1",
        sobrenome, LENGTH(sobrenome) "expressao 2",
        NULLIF(LENGTH(nome), LENGTH(sobrenome)) "resultado"
FROM tb_funcionarios;

SELECT *
FROM tb_clientes;

//SUBSTITUTO DO NVL
//SUA VANTAGEM ELE RETORNA VARIOS VALORES DIFERENTE DO NVL QUE RETORNA APENAS 2
SELECT nome, sobrenome, 
       COALESCE(dt_nascimento, TO_DATE('04/SET/24')) "Exemplo COALESCE"
FROM tb_clientes 
WHERE id_cliente = 4;

SELECT nome, sobrenome,
      COALESCE(telefone, TO_CHAR('Telefone inexistente')) "Exemplo COALESCE"
FROM tb_clientes;      



SELECT sobrenome, id_empregado, percentual_comissao, id_gerente,
        COALESCE(TO_CHAR(percentual_comissao), 
                TO_CHAR(id_gerente), 
                'Nenhuma comissão e nenhum gerente')
FROM tb_empregado;

