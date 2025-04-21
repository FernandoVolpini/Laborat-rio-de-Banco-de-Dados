INSERT INTO tb_regiao
VALUES (1, 'Europa');

INSERT INTO tb_regiao
VALUES (2, 'Am�rica');

INSERT INTO tb_regiao
VALUES (3, '�sia');

INSERT INTO tb_regiao
VALUES (4, 'Oriente M�dio e �frica');

SELECT *
FROM tb_regiao;



INSERT INTO tb_pais
VALUES ('IT', 'It�lia, 1);

INSERT INTO tb_pais
VALUES ( 'JP', 'Jap�o', 3);

INSERT INTO tb_pais
VALUES ( 'US', 'EUA', 2);

INSERT INTO tb_pais
VALUES ( 'CA', 'Canad�', 2);

INSERT INTO tb_pais
VALUES ( 'CN', 'China', 3);

INSERT INTO tb_pais
VALUES ( 'IN', '�ndia', 3);

INSERT INTO tb_pais
VALUES ( 'AU', 'Austr�lia', 3);

INSERT INTO tb_pais
VALUES ( 'ZW', 'Zimb�bue', 4);

INSERT INTO tb_pais
VALUES ( 'SG', 'Cingapura', 3);

INSERT INTO tb_pais
VALUES ( 'UK', 'Reino Unido', 1);

INSERT INTO tb_pais
VALUES ( 'FR', 'Fran�a', 1);

INSERT INTO tb_pais
VALUES ( 'DE', 'Alemanha', 1);

INSERT INTO tb_pais
VALUES ( 'ZM', 'Z�mbia', 4);

INSERT INTO tb_pais
VALUES ( 'EG', 'Egito', 4);

INSERT INTO tb_pais
VALUES ( 'BR', 'Brasil', 2);

INSERT INTO tb_pais
VALUES ( 'CH', 'Su��a', 1);

INSERT INTO tb_pais
VALUES ( 'NL', 'Holanda', 1);

INSERT INTO tb_pais
VALUES ( 'MX', 'M�xico', 2);

INSERT INTO tb_pais
VALUES ( 'KW', 'Kuweit', 4);

INSERT INTO tb_pais
VALUES ( 'IL', 'Israel', 4 );

INSERT INTO tb_pais
VALUES ( 'DK', 'Dinamarca', 1);

INSERT INTO tb_pais
VALUES ( 'HK', 'Hong Kong', 3);

INSERT INTO tb_pais
VALUES ( 'NG', 'Nig�ria', 4 );

INSERT INTO tb_pais
VALUES ( 'AR', 'Argentina', 2);

INSERT INTO tb_pais
VALUES ( 'BE', 'B�lgica', 1 );

SELECT *
FROM tb_pais;


INSERT INTO tb_localizacao
VALUES ( 1000, 'IT', 'Via Cola di Rie, 1297', '00989', 'Roma', NULL);

INSERT INTO tb_localizacao
VALUES ( 1100, 'IT', 'Calle della Testa, 93091', '10934', 'Veneza', NULL);

INSERT INTO tb_localizacao
VALUES ( 1200, 'JP', 'Shinjuku-ku, 2017 ', '1689', 'T�quio', 'Prefeitura de T�quio');

INSERT INTO tb_localizacao
VALUES ( 1300, 'JP', 'Kamiya-cho, 9450 ', '6823', 'Hiroshima', NULL);

INSERT INTO tb_localizacao
VALUES ( 1400, 'US' , 'Jabberwocky Rd, 2014 ', '26192', 'Southlake', 'Texas');

INSERT INTO tb_localizacao
VALUES (1500, 'US', 'Interiors Blvd, 2011 ', '99236', 'Sul de S�o Francisco', 'Calif�rnia');

INSERT INTO tb_localizacao
VALUES (1600, 'US', 'Zagora St, 2007 ', '50090', 'South Brunswick', 'New Jersey');

INSERT INTO tb_localizacao
VALUES (1700, 'US', 'Charade Rd, 2004 ', '98199', 'Seattle', 'Washington');

INSERT INTO tb_localizacao
VALUES (1800, 'CA', 'Spadina Ave, 147 ', 'M5V 2L7', 'Toronto', 'Ont�rio');

INSERT INTO tb_localizacao
VALUES (1900, 'CA', 'Boxwood St, 6092 ', 'YSW 9T2', 'Whitehorse', 'Yukon');

INSERT INTO tb_localizacao
VALUES (2000, 'CN', 'Laogianggen, 40-5-12', '190518', 'Pequim', NULL);

INSERT INTO tb_localizacao
VALUES (2100, 'IN', 'Vileparle (E), 1298 ', '490231', 'Bombaim', 'Maharashtra');

INSERT INTO tb_localizacao
VALUES (2200, 'AU', 'Victoria Street, 12-98', '2901', 'Sydney', 'Nova Gales do Sul');

INSERT INTO tb_localizacao
VALUES (2300, 'SG', 'Clementi North, 198 ', '540198', 'Cingapua', NULL);

INSERT INTO tb_localizacao
VALUES (2400, 'UK', 'Arthur St, 8204 ', NULL, 'Londres', NULL);

INSERT INTO tb_localizacao
VALUES (2500, 'UK', 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford');

INSERT INTO tb_localizacao
VALUES (2600, 'UK', 'Chester Road, 9702 ', '09629850293', 'Stretford', 'Manchester');

INSERT INTO tb_localizacao
VALUES (2700, 'DE', 'Schwanthalerstr. 7031', '80925', 'Munique', 'Bavaria');

INSERT INTO tb_localizacao
VALUES (2800, 'BR', 'Rua Frei Caneca 1360 ', '01307-002', 'S�o Paulo', 'S�o Paulo');

INSERT INTO tb_localizacao
VALUES (2900, 'CH', 'Rue des Corps-Saints, 20', '1730', 'Geneva', 'Geneve');

INSERT INTO tb_localizacao
VALUES (3000, 'CH', 'Murtenstrasse 921', '3095', 'Bern', 'BE');

INSERT INTO tb_localizacao
VALUES (3100, 'NL', 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht');

INSERT INTO tb_localizacao
VALUES (3200, 'MX', 'Mariano Escobedo 9991', '11932', 'Cidade do M�xico', 'Distrito Federal');

SELECT *
FROM tb_localizacao;



ALTER TABLE tb_departamento
DISABLE CONSTRAINT fk_gerente_depto;

INSERT INTO tb_departamento
VALUES (10, 'Administra��o', 200, 1700);

INSERT INTO tb_departamento
VALUES (20, 'Marketing', 201, 1800);

INSERT INTO tb_departamento
VALUES (30, 'Aquisi��o', 114, 1700);

INSERT INTO tb_departamento
VALUES (40, 'Recursos Humanos', 203, 2400);

INSERT INTO tb_departamento
VALUES (50, 'Expedi��o', 121, 1500);

INSERT INTO tb_departamento
VALUES (60, 'TI', 103, 1400);

INSERT INTO tb_departamento
VALUES (70, 'Rela��es P�blicas', 204, 2700);

INSERT INTO tb_departamento
VALUES (80, 'Vendas', 145, 2500);

INSERT INTO tb_departamento
VALUES (90, 'Executivo', 100, 1700);

INSERT INTO tb_departamento
VALUES (100, 'Financeiro', 108, 1700);

INSERT INTO tb_departamento
VALUES (110, 'Contabilidade', 205, 1700);

INSERT INTO tb_departamento
VALUES (120, 'Tesouraria', NULL, 1700);

INSERT INTO tb_departamento
VALUES (130, 'Corporativo', NULL, 1700);

INSERT INTO tb_departamento
VALUES (140, 'Controle de Cr�dito', NULL, 1700);

INSERT INTO tb_departamento
VALUES (150, 'Suporte de Servi�os', NULL, 1700);

INSERT INTO tb_departamento
VALUES (160, 'Benef�cios', NULL, 1700);

INSERT INTO tb_departamento
VALUES (170, 'F�brica', NULL, 1700);

INSERT INTO tb_departamento
VALUES (180, 'Constru��o', NULL, 1700);

INSERT INTO tb_departamento
VALUES (190, 'Contratante', NULL, 1700);

INSERT INTO tb_departamento
VALUES (200, 'Opera��es', NULL, 1700);

INSERT INTO tb_departamento
VALUES (210, 'Suporte de TI', NULL, 1700);

INSERT INTO tb_departamento
VALUES (220, 'NOC', NULL, 1700);

INSERT INTO tb_departamento
VALUES (230, 'Helpdesk', NULL, 1700);

INSERT INTO tb_departamento
VALUES (240, 'Vendas Governo', NULL, 1700);

INSERT INTO tb_departamento
VALUES (250, 'Vendas Varejo', NULL, 1700);

INSERT INTO tb_departamento
VALUES (260, 'Recrutamento', NULL, 1700);

INSERT INTO tb_departamento
VALUES (270, 'Folha de Pagamentos', NULL, 1700);

SELECT *
FROM tb_departamento;



