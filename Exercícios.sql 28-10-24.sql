-- EXERCICIO 1
--Insira as seguintes tuplas na tabela “mulher”
CREATE TABLE mulher (
    id_mulher NUMBER PRIMARY KEY,
    nome_mulher VARCHAR2(50)
);

INSERT INTO mulher (id_mulher, nome_mulher) VALUES (1, 'Edna');
INSERT INTO mulher (id_mulher, nome_mulher) VALUES (2, 'Stefanny');
INSERT INTO mulher (id_mulher, nome_mulher) VALUES (3, 'Cássia');

SELECT * FROM mulher;


-- EXERCICIO 2
--Insira as seguintes tuplas na tabela “homem”
CREATE TABLE homem (
    id_homem NUMBER PRIMARY KEY,
    nome_homem VARCHAR2(50),
    id_mulher NUMBER,
    FOREIGN KEY (id_mulher) REFERENCES mulher(id_mulher)
);

INSERT INTO homem (id_homem, nome_homem, id_mulher) VALUES (10, 'Anderson', 1);
INSERT INTO homem (id_homem, nome_homem, id_mulher) VALUES (20, 'Jander', 2);
INSERT INTO homem (id_homem, nome_homem, id_mulher) VALUES (30, 'Rogério', NULL);


SELECT * FROM homem;


--Exercicio 3
-- a) Selecionar os casamentos
SELECT h.nome_homem, m.nome_mulher
FROM homem h
INNER JOIN mulher m ON h.id_mulher = m.id_mulher;


--b) Selecionar os casamentos utilizando NATURAL JOIN
SELECT nome_homem, nome_mulher
FROM homem NATURAL JOIN mulher;

--c) Selecionar os casamentos utilizando JOIN...USING
SELECT nome_homem, nome_mulher
FROM homem NATURAL JOIN mulher;

--d) Selecionar os casamentos utilizando JOIN...ON
SELECT h.nome_homem, m.nome_mulher
FROM homem h
JOIN mulher m ON h.id_mulher = m.id_mulher;

--e) Por meio de um produto cartesiano, simule todos os casamentos possíveis. Existem duas respostas para essa questão, realize ambas
SELECT h.nome_homem, m.nome_mulher
FROM homem h
CROSS JOIN mulher m;


--Exercicio 4
--f. Selecionar os casamentos, caso não exista homens casados, é desejável exibi-los
SELECT h.nome_homem, m.nome_mulher
FROM homem h
LEFT JOIN mulher m ON h.id_mulher = m.id_mulher;


--g. Selecionar os casamentos, caso não exista mulheres casadas, é desejável exibi-las
SELECT h.nome_homem, m.nome_mulher
FROM homem h
RIGHT JOIN mulher m ON h.id_mulher = m.id_mulher;


--h. Além do símbolo (+), um OUTER JOIN pode ser realizada por meio da NATURAL OUTER JOIN, OUTER JOIN...USING e OUTER JOIN...ON. Selecionar os casamentos e todos os homens que não estejam casados
SELECT h.nome_homem, m.nome_mulher
FROM homem h
LEFT OUTER JOIN mulher m ON h.id_mulher = m.id_mulher;


--i. Selecionar os casamentos e todas as mulheres mesmo que não estejam casadas
SELECT h.nome_homem, m.nome_mulher
FROM homem h
RIGHT OUTER JOIN mulher m ON h.id_mulher = m.id_mulher;


--j. Refaça as consultas acima (c e d) usando OUTER JOIN...USING e OUTER JOIN...ON
SELECT h.nome_homem, m.nome_mulher
FROM homem h
LEFT OUTER JOIN mulher m USING (id_mulher);


--k. Selecionar todos os casamentos e, caso não exista homens e mulheres casados também é desejável exibi-los.
SELECT h.nome_homem, m.nome_mulher
FROM homem h
FULL OUTER JOIN mulher m ON h.id_mulher = m.id_mulher;


--l. Refaça a consulta anterior (f) usando OUTER JOIN...USING e OUTER JOIN...ON. Observe que não é possível o uso do símbolo (+).
SELECT h.nome_homem, m.nome_mulher
FROM homem h
FULL OUTER JOIN mulher m USING (id_mulher);

