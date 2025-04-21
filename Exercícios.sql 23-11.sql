--1-)
SELECT nome AS "Nome do Empregado", 
    COALESCE(percentual_comissao, 'Nenhuma comissão') AS "COMISSÃO"
FROM tb_empregado;

--2)
SELECT 
    e.nome AS "Empregado", 
    e.data_admissao AS "Empregado Data Admissão",
    g.nome AS "Gerente", 
    g.data_admissao AS "Gerente Data Admissão"
FROM 
    tb_empregado e
JOIN 
    tb_empregado g ON e.id_gerente = g.id_empregado
WHERE 
    e.data_admissao < g.data_admissao;


--3-)
SELECT 
    ROUND(MAX(salario)) AS "Máximo", 
    ROUND(MIN(salario)) AS "Mínimo", 
    ROUND(AVG(salario)) AS "Média", 
    ROUND(SUM(salario)) AS "Somatório"
FROM 
    tb_empregado;
    
   
    
--4-)
SELECT 
    id_gerente AS "Número do Gerente", 
    MIN(salario) AS "Menor Salário"
FROM 
    tb_empregado
WHERE 
    id_gerente IS NOT NULL
GROUP BY 
    id_gerente
HAVING 
    MIN(salario) >= 1000
ORDER BY 
    "Menor Salário" DESC;


--5-)
SELECT 
    COUNT(*) AS "Total de Empregados",
    SUM(CASE WHEN EXTRACT(YEAR FROM data_admissao) IN (1990, 1991, 1992, 1993) THEN 1 ELSE 0 END) AS "Empregados 1990-1993"
FROM 
    tb_empregado;



--6-)
SELECT 
    nome AS "Funcionários", 
    REPEAT('*', FLOOR(salario / 1000)) AS "Funcionários e seus Salários"
FROM 
    tb_empregado
ORDER BY 
    salario DESC;


--7-)
SELECT 
    CONCAT_WS(',', id_empregado, id_departamento, id_gerente, id_funcao, nome, email, telefone, data_admissao, percentual_comissao, salario) AS "Saída"
FROM 
    tb_empregado;



--8-)
SELECT 
    nome AS "Nome do Empregado",
    CASE 
        WHEN id_funcao = 'SH_CLERK' THEN 'A'
        WHEN id_funcao = 'ST_MAN' THEN 'B'
        WHEN id_funcao = 'AC_ACCOUNT' THEN 'C'
        WHEN id_funcao = 'AC_MGR' THEN 'D'
        WHEN id_funcao = 'IT_PROG' THEN 'E'
        ELSE '0'
    END AS "Classe"
FROM 
    tb_empregado;
    
    

--9-)
SELECT 
    nome AS "Nome do Empregado",
    TIMESTAMPDIFF(MONTH, data_admissao, CURDATE()) AS "Meses Trabalhado"
FROM 
    tb_empregado
ORDER BY 
    "Meses Trabalhado" DESC;


--10-)
SELECT 
    e.nome AS "Nome do Empregado",
    d.nm_departamento AS "Nome do Departamento",
    l.cidade AS "Cidade",
    l.estado AS "Estado"
FROM 
    tb_empregado e
JOIN 
    tb_departamento d ON e.id_departamento = d.id_departamento
JOIN 
    tb_localizacao l ON d.id_localizacao = l.id_localizacao
WHERE 
    e.percentual_comissao IS NOT NULL;


--11-)
SELECT 
    id_empregado AS "Número do Empregado",
    nome AS "Nome do Empregado",
    salario AS "Salário Atual",
    ROUND(salario * 1.15) AS "Novo Salário"
FROM 
    tb_empregado;


--12-)
SELECT 
    nome AS "Nome do Empregado",
    data_admissao AS "Data de Admissão",
    DATE_ADD(data_admissao, INTERVAL 6 MONTH) + INTERVAL (9 - WEEKDAY(DATE_ADD(data_admissao, INTERVAL 6 MONTH))) % 7 DAY AS "Revisão"
FROM 
    tb_empregado;


--13-)
SELECT 
    CONCAT(UPPER(SUBSTRING(nome, 1, 1)), LOWER(SUBSTRING(nome, 2))) AS "Nome Formatado",
    CHAR_LENGTH(nome) AS "Tamanho do Nome"
FROM 
    tb_empregado
WHERE 
    nome LIKE 'J%' OR nome LIKE 'A%' OR nome LIKE 'M%';


--14-)
UPDATE 
    tb_empregado
SET 
    id_funcao = REPLACE(id_funcao, 'SH', 'SHIPPING')
WHERE 
    id_funcao LIKE 'SH%';

--15-)
SELECT 
    id_departamento AS "ID Departamento",
    MIN(salario) AS "Menor Salário",
    MAX(salario) AS "Maior Salário"
FROM 
    tb_empregado
GROUP BY 
    id_departamento
HAVING 
    MIN(salario) < 7000
ORDER BY 
    "Menor Salário";
