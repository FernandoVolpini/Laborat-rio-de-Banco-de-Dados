--Exercicio 1
SELECT 'O identificador da ' || ds_funcao || ' é o ID: ' || id_funcao AS "Descrição da Função"
FROM tb_funcao;


--Exercicio 2
DEFINE raio = 6000;
DEFINE pi = (22/7);

SELECT &pi * &raio * &raio AS "Área"
FROM DUAL;


--Exercicio 3
SELECT nm_departamento
FROM tb_departamento
WHERE (nm_departamento) LIKE '%ing';

--Exercicio 4
SELECT 
    ds_funcao, 
    base_salario, 
    (teto_salario - base_salario) AS diferenca
FROM tb_funcao
WHERE ds_funcao LIKE '%Presidente%' OR ds_funcao LIKE '%Gerente%'
ORDER BY diferenca DESC, ds_funcao DESC;

--Exercicio 5
DEFINE empregado_id = &empregado_id;
DEFINE aliquota = &aliquota;

SELECT 
    id_empregado, 
    nome, 
    salario, 
    (salario * 12) AS salario_anual, 
    &aliquota AS aliquota, 
    (&aliquota * (salario * 12)) AS imposto
FROM tb_empregado
WHERE id_empregado = &empregado_id;