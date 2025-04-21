CREATE TABLE tb_empregados(

id_empregado    NUMBER(6),
nome    VARCHAR2(20),
sobrenome   VARCHAR2(20) CONSTRAINT nn_emp_sobrenome NOT NULL,
email   VARCHAR2(20) CONSTRAINT nn_emp_email NOT NULL,
telefone    NUMBER(20),
data_admissao   DATE CONSTRAINT nn_emp_dt_adm NOT NULL,
id_funcao   VARCHAR2(20) CONSTRAINT nn_emp_funcao NOT NULL,
salario     NUMBER(8,2),
percentual_comissao     NUMBER(8,2),
id_gerente  NUMBER(6),
departamento    NUMBER(4),
CONSTRAINT min_emp_salario CHECK (salario > 0)
CONSTRAINT un_emp_email UNIQUE (email);

CREATE UNIQUE INDEX pk_id_emp
ON tb_empregado (id_empregado);


ALTER TABLE tb_empregado
ADD (CONSTRAINT pk_id_emp
PRIMARY KEY (id_mepregado),
    CONSTRAINT fk_emp_depto
FOREIGN KEY(id_departamento) REFERENCE tb_departamento,
    CONSTRAINT fk_emp_funcao
FOREIGN KEY(id_funcao) REFERENCE tb_funcao (id_funcao),
    CONSTRAINT fk_emp_gerente
FOREIGN KEY (id_gerente) REFERENCES tb_empregado);
    
    
ALTER TABLE tb_departamento
ADD(CONSTRAINT fk_gerente_depto
    FOREIGN KEY (id_gerente) REFERENCES tb_empregado (id_empregado));
    
CREATE SEQUENCE seq_empregado 
START WITH  207 
INCREMENT BY    1
NOCACHE 
NOCYCLE 
    
    
CREATE TABLE tb_historico_funcao(
id_empregado NUMBER(6) CONSTRAINT nn_hist_emp_id_emp NOT NULL,
data_inicio DATE CONSTRAINT nn_hist_emp_dt_inicio NOT NULL,
data_termino DATE CONSTRAINT nn_hist_emp_dt_termino NOT NULL,
id_funcao VARCHAR2(10) CONSTRAINT nn_hist_emp_id_funcao NOT NULL,
id_departamento NUMBER(4),
CONSTRAINT ck_hist_emp_data_intervalo CHECK (data_termino > data_inicio));


CREATE UNIQUE INDEX pk_hist_emp_id_emp
ON tb_historico_funcao (id_empregado, data_inicio);


ALTER TABLE tb_historico_funcao
ADD ( CONSTRAINT pk_hist_emp_id_emp
     PRIMARY KEY (id_empregado, data_inicio),
    CONSTRAINT fk_hist_funcao_funcao
     FOREIGN KEY (id_funcao) REFERENCES tb_funcao,
    CONSTRAINT fk_hist_funcao_emp
     FOREIGN KEY (id_empregado) REFERENCES tb_empregado,
    CONSTRAINT fk_hist_funcao_depto
     FOREIGN KEY (id_departamento) REFERENCES tb_departamento);