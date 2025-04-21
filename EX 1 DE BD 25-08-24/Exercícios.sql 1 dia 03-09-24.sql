CREATE TABLE tb_regiao(

id_regiao NUMBER CONSTRAINT nn_id_regiao NOT NULL,
nm_regiao VARCHAR (25));

CREATE UNIQUE INDEX pk_id_regiao
ON tb_ regiao(id_regiao);

ALTER TABLE tb_regiao 
ADD(CONSTRAINT pk_id_regiao
PRIMARY KEY (id_regiao));

CREATE TABLE tb_pais(
id_pais CHAR (2) CONSTRAINT nn_id_pais NOT NULL,
nm_pais VARCHAR(40),
id_regiao NUMBER,
CONSTRAINT pk_id_pais PRIMARY KEY (id_pais));

ALTER TABLE tb_pais
ADD(CONSTRAINT fk_regiao_pais
FOREIGN KEY (id_regiao) REFERENCES tb_regiao(id_regiao));


CREATE TABLE tb_localizacao(
id_localizacao   NUMBER(4),
id_pais     CHAR(2),
estado  VARCHAR2(25),
cidade  VARCHAR2(30) CONSTRAINT nn_loc_cidade NOT NULL,  
cep  VARCHAR2(12),
endereco     VARCHAR2(40));

CREATE UNIQUE INDEX pk_id_localizacao
ON tb_localizacao(id_localizacao);

ALTER TABLE tb_localizacao 
ADD(CONSTRAINT pk_id_localizacao
PRIMARY KEY (id_localizacao),
CONSTRAINT fk_id_pais
FOREIGN KEY (id_pais)
REFERENCES tb_pais(id_pais));


CREATE SEQUENCE seq_localizacao
START WITH 3300
INCREMENT BY 100
MAXVALUE 9900
NOCACHE 
NOCYCLE;

CREATE TABLE tb_departamento(
id_departamento NUMBER(4),
nm_departamento VARCHAR2(30) CONSTRAINT nn_nm_departo NOT NULL, 
id_gerente NUMBER(6),
id_localizacao NUMBER(4));

CREATE UNIQUE INDEX pk_id_departamento
ON tb_departamento(id_departamento);

ALTER TABLE tb_departamento
ADD ( CONSTRAINT pk_id_departamento
PRIMARY KEY (id_departamento),
CONSTRAINT fk_loc_departamento
FOREIGN KEY (id_localizacao) REFERENCES tb_localizacao (id_localizacao)); 


CREATE SEQUENCE seq_localizacao
START WITH 280
INCREMENT BY 10
MAXVALUE 9990
NOCACHE 
NOCYCLE; 


CREATE TABLE tb_funcao(
id_funcao   VARCHAR2(10),
ds_funcao   VARCHAR2(35) CONSTRAINT nn_ds_funcao NOT NULL,
base_salario    NUMBER(8,2),
teto_salario    NUMBER(8,2));

CREATE UNIQUE INDEX pk_id_funcao
ON tb_funcao(id_funcao);

ALTER TABLE tb_funcao
ADD(CONSTRAINT pk_id_funcao
PRIMARY KEY (id_funcao));


