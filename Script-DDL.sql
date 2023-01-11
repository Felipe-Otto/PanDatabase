-- DROP TABLE
DROP TABLE tb_estado CASCADE CONSTRAINTS;
DROP TABLE tb_cidade CASCADE CONSTRAINTS;
DROP TABLE tb_end_cliente CASCADE CONSTRAINTS; 
DROP TABLE tb_classificacao CASCADE CONSTRAINTS;
DROP TABLE tb_cliente CASCADE CONSTRAINTS;
DROP TABLE tb_cliente_pf CASCADE CONSTRAINTS;
DROP TABLE tb_cliente_pj CASCADE CONSTRAINTS;
DROP TABLE tb_conta CASCADE CONSTRAINTS;
DROP TABLE tb_tp_conta CASCADE CONSTRAINTS;
DROP TABLE tb_operacao CASCADE CONSTRAINTS; 
DROP TABLE tb_op_autonoma CASCADE CONSTRAINTS; 
DROP TABLE tb_op_supervisionada CASCADE CONSTRAINTS;
DROP TABLE tb_tp_op_autonoma CASCADE CONSTRAINTS; 
DROP TABLE tb_tp_op_supervisionada CASCADE CONSTRAINTS;
DROP TABLE tb_gerente CASCADE CONSTRAINTS; 
DROP TABLE tb_empregado CASCADE CONSTRAINTS; 
DROP TABLE tb_end_empregado CASCADE CONSTRAINTS; 
DROP TABLE tb_tel_empregado CASCADE CONSTRAINTS; 
DROP TABLE tb_cargo_empregado CASCADE CONSTRAINTS; 
DROP TABLE tb_agencia CASCADE CONSTRAINTS; 
DROP TABLE tb_end_agencia CASCADE CONSTRAINTS; 
DROP TABLE tb_tel_agencia CASCADE CONSTRAINTS; 
-- DROP SEQUENCE
DROP SEQUENCE cidade_cd_seq;
DROP SEQUENCE end_cli_cd_seq;
DROP SEQUENCE classificacao_cd_seq;
DROP SEQUENCE cliente_id_seq;
DROP SEQUENCE conta_cd_seq;
DROP SEQUENCE tp_conta_cd_seq;
DROP SEQUENCE operacao_cd_seq;
DROP SEQUENCE operacao_aut_cd_seq;
DROP SEQUENCE operacao_sup_cd_seq;
DROP SEQUENCE tp_operacao_aut_cd_seq;
DROP SEQUENCE tp_operacao_sup_cd_seq;
DROP SEQUENCE gerente_id_seq;
DROP SEQUENCE empregado_id_seq;
DROP SEQUENCE end_empregado_cd_seq;
DROP SEQUENCE cargo_emp_cd_seq;
DROP SEQUENCE agencia_cd_seq;
DROP SEQUENCE end_agencia_cd_seq;

-- CREATE TABLE
CREATE TABLE tb_estado (
    sg_uf VARCHAR2(2) NOT NULL,
    nm_uf VARCHAR2(19) NOT NULL,
    CONSTRAINT estado_pk PRIMARY KEY (sg_uf),
    CONSTRAINT estado_nm_un UNIQUE (nm_uf)
);
CREATE TABLE tb_cidade (
    sg_uf     VARCHAR2(2) NOT NULL,
    cd_cidade NUMBER(4) NOT NULL,
    nm_cidade VARCHAR2(75) NOT NULL,
    CONSTRAINT cidade_pk PRIMARY KEY (cd_cidade, sg_uf)
);
CREATE TABLE tb_end_cliente (
    cd_end_cli   NUMBER NOT NULL,
    sg_uf        VARCHAR2(2) NOT NULL,
    cd_cidade    NUMBER(4) NOT NULL,
    cep_end_cli  VARCHAR2(9) NOT NULL,
    nr_end_cli   NUMBER(5) NOT NULL,
    comp_end_cli VARCHAR2(50),
    CONSTRAINT end_cliente_pk PRIMARY KEY (cd_end_cli)
);
CREATE TABLE tb_classificacao (
    cd_classificacao NUMBER(2) NOT NULL,
    nm_classificacao VARCHAR2(50) NOT NULL,
    CONSTRAINT classificacao_pk PRIMARY KEY (cd_classificacao),
    CONSTRAINT classificacao_nm_un UNIQUE (nm_classificacao)
);
CREATE TABLE tb_cliente (
    id_cli           NUMBER NOT NULL,
    nm_cli           VARCHAR2(75) NOT NULL,
    tp_cli           VARCHAR2(2) NOT NULL,
    tel_cli          VARCHAR2(15) NOT NULL,
    email_cli        VARCHAR2(75) NOT NULL,
    cd_end_cli       NUMBER NOT NULL,
    cd_classificacao NUMBER(2) NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (id_cli),
    CONSTRAINT tp_cliente_ck CHECK (tp_cli IN ('PF', 'PJ')),
    CONSTRAINT cliente_tel_un UNIQUE (tel_cli),
    CONSTRAINT cliente_email_un UNIQUE (email_cli)
);
CREATE TABLE tb_cliente_pf (
    id_cli       NUMBER NOT NULL,
    cpf_cli      VARCHAR2(14) NOT NULL,
    rg_cli       VARCHAR2(12) NOT NULL,
    dt_nscmt_cli DATE NOT NULL,
    sexo_cli     VARCHAR2(1) NOT NULL,
    CONSTRAINT cliente_pf_pk PRIMARY KEY (id_cli),
    CONSTRAINT cli_pf_cpf_un UNIQUE (cpf_cli),
    CONSTRAINT cli_pf_rg_un UNIQUE (rg_cli)
);
CREATE TABLE tb_cliente_pj (
    id_cli       NUMBER NOT NULL,
    cnpj         VARCHAR2(18) NOT NULL,
    razao_social VARCHAR2(50) NOT NULL,
    nm_fantasia  VARCHAR2(50) NOT NULL,
    dt_fundacao  DATE NOT NULL,
    CONSTRAINT cliente_pj_pk PRIMARY KEY (id_cli),
    CONSTRAINT cli_pj_rz_un UNIQUE (razao_social),
    CONSTRAINT cli_pj_nm_un UNIQUE (nm_fantasia),
    CONSTRAINT cli_pj_cnpj_un UNIQUE (cnpj)
);

CREATE TABLE tb_conta (
    cd_conta           NUMBER NOT NULL,
    id_cli             NUMBER NOT NULL,
    nr_conta           VARCHAR2(10) NOT NULL,
    cd_tp_conta        NUMBER(2) NOT NULL,
    dt_abertura_conta DATE DEFAULT sysdate NOT NULL,
    saldo_conta        FLOAT NOT NULL,
    CONSTRAINT conta_pk PRIMARY KEY (cd_conta),
    CONSTRAINT conta_nr_un UNIQUE (nr_conta)
);
CREATE TABLE tb_tp_conta (
    cd_tp_conta NUMBER(2) NOT NULL,
    nm_tp_conta VARCHAR2(50) NOT NULL,
    CONSTRAINT tp_conta_pk PRIMARY KEY (cd_tp_conta),
    CONSTRAINT tp_conta_nm_un UNIQUE (nm_tp_conta)
);
CREATE TABLE tb_operacao (
    cd_op          NUMBER NOT NULL,
    id_cli         NUMBER NOT NULL,
    tp_op          VARCHAR2(3) NOT NULL,
    dt_op          DATE DEFAULT sysdate NOT NULL,
    valor_operacao NUMBER(12, 2) NOT NULL,
    CONSTRAINT operacao_pk PRIMARY KEY ( cd_op ),
    CONSTRAINT tp_operacao_ck CHECK (tp_op IN ('AUT', 'SUP'))
);
CREATE TABLE tb_op_autonoma (
    cd_op_autonoma    NUMBER NOT NULL,
    cd_op             NUMBER NOT NULL,
    cd_tp_op_autonoma NUMBER NOT NULL,
    CONSTRAINT op_autonoma_pk PRIMARY KEY (cd_op_autonoma)
);
CREATE TABLE tb_op_supervisionada (
    cd_op_supervisionada    NUMBER NOT NULL,
    cd_op                   NUMBER NOT NULL,
    cd_tp_op_supervisionada NUMBER NOT NULL,
    id_gerente              NUMBER NOT NULL,
    CONSTRAINT op_supervisionada_pk PRIMARY KEY ( cd_op_supervisionada, cd_op )
);
CREATE TABLE tb_tp_op_autonoma (
    cd_tp_op_autonoma NUMBER NOT NULL,
    nm_tp_op_autonoma VARCHAR2(75) NOT NULL,
    CONSTRAINT tp_op_auto_pk PRIMARY KEY (cd_tp_op_autonoma),
    CONSTRAINT tp_op_auto_nm_un UNIQUE (nm_tp_op_autonoma)
);
CREATE TABLE tb_tp_op_supervisionada (
    cd_tp_op_supervisionada NUMBER NOT NULL,
    nm_tp_op_supervisionada VARCHAR2(50) NOT NULL,
    CONSTRAINT tp_op_superv_pk PRIMARY KEY (cd_tp_op_supervisionada),
    CONSTRAINT tp_op_superv_nm_un UNIQUE (nm_tp_op_supervisionada)
);
CREATE TABLE tb_gerente (
    id_gerente    NUMBER NOT NULL,
    qntd_operacao NUMBER NOT NULL,
    CONSTRAINT gerente_pk PRIMARY KEY (id_gerente)
);
CREATE TABLE tb_empregado (
    id_emp       NUMBER NOT NULL,
    nm_emp       VARCHAR2(75) NOT NULL,
    cd_cargo     NUMBER(2) NOT NULL,
    cd_ag        NUMBER NOT NULL,
    cpf_emp      VARCHAR2(14) NOT NULL,
    rg_emp       VARCHAR2(12) NOT NULL,
    dt_nscmt_emp DATE NOT NULL,
    sexo_emp     VARCHAR2(1) NOT NULL,
    salario_emp  FLOAT NOT NULL,
    email_emp     VARCHAR2(75) NOT NULL,
    cd_end_emp   NUMBER NOT NULL,
    CONSTRAINT empregado_pk PRIMARY KEY (id_emp),
    CONSTRAINT empregado_email_un UNIQUE (email_emp)
);
CREATE TABLE tb_end_empregado (
    cd_end_emp   NUMBER NOT NULL,
    sg_uf        VARCHAR2(2) NOT NULL,
    cd_cidade    NUMBER(4) NOT NULL,
    cep_end_emp  VARCHAR2(9) NOT NULL,
    nr_end_emp   NUMBER(5) NOT NULL,
    comp_end_emp VARCHAR2(50),
    CONSTRAINT end_emp_pk PRIMARY KEY (cd_end_emp)
);
CREATE TABLE tb_tel_empregado (
    id_emp  NUMBER NOT NULL,
    tel_emp VARCHAR2(15) NOT NULL,
    CONSTRAINT tel_emp_pk PRIMARY KEY (id_emp),
    CONSTRAINT tel_empregado_un UNIQUE (tel_emp)
);
CREATE TABLE tb_cargo_empregado (
    cd_cargo NUMBER(2) NOT NULL,
    nm_cargo VARCHAR2(75) NOT NULL,
    CONSTRAINT cargo_empregado_pk PRIMARY KEY (cd_cargo),
    CONSTRAINT cargo_emp_nm_un UNIQUE (nm_cargo)
);
CREATE TABLE tb_agencia (
    cd_ag     NUMBER NOT NULL,
    email_ag  VARCHAR2(50) NOT NULL,
    cd_end_ag NUMBER NOT NULL,
    CONSTRAINT agencia_pk PRIMARY KEY(cd_ag),
    CONSTRAINT tb_agencia_email_un UNIQUE (email_ag)
);
CREATE TABLE tb_end_agencia (
    cd_end_ag   NUMBER NOT NULL,
    sg_uf       VARCHAR2(2) NOT NULL,
    cd_cidade   NUMBER(4) NOT NULL,
    cep_end_ag  VARCHAR2(9) NOT NULL,
    nr_end_ag   NUMBER(5) NOT NULL,
    comp_end_ag VARCHAR2(50),
    CONSTRAINT end_agencia_pk PRIMARY KEY (cd_end_ag)
);
CREATE TABLE tb_tel_agencia (
    cd_ag  NUMBER NOT NULL,
    tel_ag VARCHAR2(15) NOT NULL,
    CONSTRAINT tel_ag_pk PRIMARY KEY (cd_ag),
    CONSTRAINT tel_agencia_un UNIQUE (tel_ag)
);

-- FOREIGN KEY
ALTER TABLE tb_cidade ADD CONSTRAINT cidade_estado_fk 
FOREIGN KEY (sg_uf) REFERENCES tb_estado (sg_uf);

ALTER TABLE tb_end_cliente ADD CONSTRAINT end_cli_cidade_fk 
FOREIGN KEY (cd_cidade, sg_uf) REFERENCES tb_cidade (cd_cidade, sg_uf);

ALTER TABLE tb_cliente ADD CONSTRAINT cliente_classificacao_fk 
FOREIGN KEY (cd_classificacao) REFERENCES tb_classificacao (cd_classificacao);

ALTER TABLE tb_cliente ADD CONSTRAINT cliente_end_cli_fk 
FOREIGN KEY (cd_end_cli) REFERENCES tb_end_cliente (cd_end_cli);

ALTER TABLE tb_conta ADD CONSTRAINT conta_cliente_fk 
FOREIGN KEY (id_cli) REFERENCES tb_cliente (id_cli);

ALTER TABLE tb_conta ADD CONSTRAINT conta_tp_conta_fk 
FOREIGN KEY (cd_tp_conta) REFERENCES tb_tp_conta (cd_tp_conta);

ALTER TABLE tb_agencia ADD CONSTRAINT agencia_end_agencia_fk 
FOREIGN KEY (cd_end_ag) REFERENCES tb_end_agencia (cd_end_ag);

ALTER TABLE tb_cliente_pf ADD CONSTRAINT cli_pf_cliente_fk 
FOREIGN KEY (id_cli) REFERENCES tb_cliente (id_cli);

ALTER TABLE tb_cliente_pj ADD CONSTRAINT cli_pj_cliente_fk 
FOREIGN KEY (id_cli) REFERENCES tb_cliente (id_cli);

ALTER TABLE tb_operacao ADD CONSTRAINT operacao_cliente_fk 
FOREIGN KEY (id_cli) REFERENCES tb_cliente (id_cli);

ALTER TABLE tb_op_autonoma ADD CONSTRAINT op_auto_operacao_fk 
FOREIGN KEY (cd_op) REFERENCES tb_operacao (cd_op);

ALTER TABLE tb_op_autonoma ADD CONSTRAINT op_auto_tp_op_auto_fk 
FOREIGN KEY (cd_tp_op_autonoma) REFERENCES tb_tp_op_autonoma (cd_tp_op_autonoma);

ALTER TABLE tb_op_supervisionada ADD CONSTRAINT op_superv_gerente_fk 
FOREIGN KEY (id_gerente) REFERENCES tb_gerente (id_gerente);

ALTER TABLE tb_op_supervisionada ADD CONSTRAINT op_superv_operacao_fk 
FOREIGN KEY (cd_op) REFERENCES tb_operacao (cd_op);

ALTER TABLE tb_op_supervisionada ADD CONSTRAINT op_superv_tp_op_superv_fk 
FOREIGN KEY (cd_tp_op_supervisionada) REFERENCES tb_tp_op_supervisionada (cd_tp_op_supervisionada);

ALTER TABLE tb_gerente ADD CONSTRAINT gerente_empregado_fk 
FOREIGN KEY (id_gerente) REFERENCES tb_empregado (id_emp);

ALTER TABLE tb_empregado ADD CONSTRAINT empregado_agencia_fk 
FOREIGN KEY (cd_ag) REFERENCES tb_agencia (cd_ag);

ALTER TABLE tb_empregado ADD CONSTRAINT empregado_cargo_emp_fk 
FOREIGN KEY (cd_cargo) REFERENCES tb_cargo_empregado (cd_cargo);

ALTER TABLE tb_empregado ADD CONSTRAINT empregado_end_emp_fk 
FOREIGN KEY (cd_end_emp) REFERENCES tb_end_empregado (cd_end_emp);

ALTER TABLE tb_end_empregado ADD CONSTRAINT end_emp_cidade_fk 
FOREIGN KEY (cd_cidade, sg_uf) REFERENCES tb_cidade (cd_cidade, sg_uf);

ALTER TABLE tb_tel_empregado ADD CONSTRAINT tel_emp_empregado_fk 
FOREIGN KEY (id_emp) REFERENCES tb_empregado (id_emp);

ALTER TABLE tb_end_agencia ADD CONSTRAINT end_ag_cidade_fk 
FOREIGN KEY (cd_cidade, sg_uf) REFERENCES tb_cidade (cd_cidade, sg_uf);

ALTER TABLE tb_tel_agencia ADD CONSTRAINT tel_ag_agencia_fk 
FOREIGN KEY (cd_ag) REFERENCES tb_agencia (cd_ag);

-- CREATE UNIQUE INDEX
CREATE UNIQUE INDEX tb_conta_idx ON tb_conta (
        nr_conta ASC,
        saldo_conta ASC );
        
CREATE UNIQUE INDEX tb_cliente_idx ON tb_cliente (
        id_cli ASC,
        nm_cli ASC );
 
-- CREATE SEQUENCE
CREATE SEQUENCE cidade_cd_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999 NOCACHE NOCYCLE;
CREATE SEQUENCE end_cli_cd_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE classificacao_cd_seq START WITH 1 INCREMENT BY 1 MAXVALUE 99 NOCACHE NOCYCLE;
CREATE SEQUENCE cliente_id_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE conta_cd_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE tp_conta_cd_seq START WITH 1 INCREMENT BY 1 MAXVALUE 99 NOCACHE NOCYCLE;
CREATE SEQUENCE operacao_cd_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE operacao_aut_cd_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE operacao_sup_cd_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE tp_operacao_aut_cd_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE tp_operacao_sup_cd_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE gerente_id_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE empregado_id_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE end_empregado_cd_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE cargo_emp_cd_seq START WITH 1 INCREMENT BY 1 MAXVALUE 99 NOCACHE NOCYCLE;
CREATE SEQUENCE agencia_cd_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;
CREATE SEQUENCE end_agencia_cd_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE NOCACHE NOCYCLE;

-- CREATE OR REPLACE TRIGGER   
CREATE OR REPLACE TRIGGER cidade_cd_trg 
BEFORE INSERT ON tb_cidade
FOR EACH ROW
BEGIN
    SELECT cidade_cd_seq.NEXTVAL INTO :NEW.cd_cidade FROM dual;
END;
/
CREATE OR REPLACE TRIGGER end_cliente_cd_trg 
BEFORE INSERT ON tb_end_cliente
FOR EACH ROW
BEGIN
    SELECT end_cli_cd_seq.NEXTVAL INTO :NEW.cd_end_cli FROM dual;
END;
/
CREATE OR REPLACE TRIGGER classificacao_cd_trg
BEFORE INSERT ON tb_classificacao
FOR EACH ROW
BEGIN
    SELECT classificacao_cd_seq.NEXTVAL INTO :NEW.cd_classificacao FROM dual;
END;
/
CREATE OR REPLACE TRIGGER cliente_id_trg 
BEFORE INSERT ON tb_cliente
FOR EACH ROW
BEGIN
    SELECT cliente_id_seq.NEXTVAL INTO :NEW.id_cli FROM dual;
END;
/

CREATE OR REPLACE TRIGGER conta_cd_trg 
BEFORE INSERT ON tb_conta
FOR EACH ROW
BEGIN
    SELECT conta_cd_seq.NEXTVAL INTO :NEW.cd_conta FROM dual;
END;
/
CREATE OR REPLACE TRIGGER tp_conta_cd_trg 
BEFORE INSERT ON tb_tp_conta
FOR EACH ROW
BEGIN
    SELECT tp_conta_cd_seq.NEXTVAL INTO :NEW.cd_tp_conta FROM dual;
END;
/
CREATE OR REPLACE TRIGGER operacao_cd_trg 
BEFORE INSERT ON tb_operacao
FOR EACH ROW
BEGIN
    SELECT operacao_cd_seq.NEXTVAL INTO :NEW.cd_op FROM dual;
END;
/
CREATE OR REPLACE TRIGGER operacao_aut_cd_trg 
BEFORE INSERT ON tb_op_autonoma
FOR EACH ROW
BEGIN
    SELECT operacao_aut_cd_seq.NEXTVAL INTO :NEW.cd_op_autonoma FROM dual;
END;
/
CREATE OR REPLACE TRIGGER operacao_sup_cd_trg 
BEFORE INSERT ON tb_op_supervisionada
FOR EACH ROW
BEGIN
    SELECT operacao_sup_cd_seq.NEXTVAL INTO :NEW.cd_op_supervisionada FROM dual;
END;
/
CREATE OR REPLACE TRIGGER tp_operacao_aut_cd_trg
BEFORE INSERT ON tb_tp_op_autonoma
FOR EACH ROW
BEGIN
    SELECT tp_operacao_aut_cd_seq.NEXTVAL INTO :NEW.cd_tp_op_autonoma FROM dual;
END;
/
CREATE OR REPLACE TRIGGER tp_operacao_sup_cd_trg 
BEFORE INSERT ON tb_tp_op_supervisionada
FOR EACH ROW
BEGIN
    SELECT tp_operacao_sup_cd_seq.NEXTVAL INTO :NEW.cd_tp_op_supervisionada FROM dual;
END;
/
CREATE OR REPLACE TRIGGER gerente_id_trg 
BEFORE INSERT ON tb_gerente
FOR EACH ROW
BEGIN
    SELECT gerente_id_seq.NEXTVAL INTO :NEW.id_gerente FROM dual;
END;
/
CREATE OR REPLACE TRIGGER tb_empregado_id_emp_trg 
BEFORE INSERT ON tb_empregado
FOR EACH ROW
BEGIN
    SELECT empregado_id_seq.NEXTVAL INTO :NEW.id_emp FROM dual;
END;
/
CREATE OR REPLACE TRIGGER end_empregado_cd_trg 
BEFORE INSERT ON tb_end_empregado
FOR EACH ROW
BEGIN
    SELECT end_empregado_cd_seq.NEXTVAL INTO :NEW.cd_end_emp FROM dual;
END;
/
CREATE OR REPLACE TRIGGER cargo_empregado_cd_trg 
BEFORE INSERT ON tb_cargo_empregado
FOR EACH ROW
BEGIN
    SELECT cargo_emp_cd_seq.NEXTVAL INTO :NEW.cd_cargo FROM dual;
END;
/
CREATE OR REPLACE TRIGGER agencia_cd_trg 
BEFORE INSERT ON tb_agencia
FOR EACH ROW
BEGIN
    SELECT agencia_cd_seq.NEXTVAL INTO :NEW.cd_ag FROM dual;
END;
/
CREATE OR REPLACE TRIGGER end_agencia_cd_trg
BEFORE INSERT ON tb_end_agencia
FOR EACH ROW
BEGIN
    SELECT end_agencia_cd_seq.NEXTVAL INTO :NEW.cd_end_ag FROM dual;
END;
/

CREATE OR REPLACE TRIGGER arc_cliente_pj BEFORE
    INSERT OR UPDATE OF id_cli ON tb_cliente_pj
    FOR EACH ROW
DECLARE
    d VARCHAR2(2);
BEGIN
    SELECT
        a.tp_cli
    INTO d
    FROM
        tb_cliente a
    WHERE
        a.id_cli = :new.id_cli;

    IF ( d IS NULL OR d <> 'PJ' ) THEN
        raise_application_error(-20223, 'FK CLI_PJ_CLIENTE_FK in Table TB_CLIENTE_PJ violates Arc constraint on Table TB_CLIENTE - discriminator column tp_cli doesn''t have value ''PJ'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/
CREATE OR REPLACE TRIGGER arc_cliente_pf BEFORE
    INSERT OR UPDATE OF id_cli ON tb_cliente_pf
    FOR EACH ROW
DECLARE
    d VARCHAR2(2);
BEGIN
    SELECT
        a.tp_cli
    INTO d
    FROM
        tb_cliente a
    WHERE
        a.id_cli = :new.id_cli;

    IF ( d IS NULL OR d <> 'PF' ) THEN
        raise_application_error(-20223, 'FK CLI_PF_CLIENTE_FK in Table TB_CLIENTE_PF violates Arc constraint on Table TB_CLIENTE - discriminator column tp_cli doesn''t have value ''PF'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/
CREATE OR REPLACE TRIGGER arc_op_autonoma BEFORE
    INSERT OR UPDATE OF cd_op ON tb_op_autonoma
    FOR EACH ROW
DECLARE
    d VARCHAR2(3);
BEGIN
    SELECT
        a.tp_op
    INTO d
    FROM
        tb_operacao a
    WHERE
        a.cd_op = :new.cd_op;

    IF ( d IS NULL OR d <> 'AUT' ) THEN
        raise_application_error(-20223, 'FK OP_AUTO_OPERACAO_FK in Table TB_OP_AUTONOMA violates Arc constraint on Table TB_OPERACAO - discriminator column tp_op doesn''t have value ''AUT'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/
CREATE OR REPLACE TRIGGER arc_op_supervisionada BEFORE
    INSERT OR UPDATE OF cd_op ON tb_op_supervisionada
    FOR EACH ROW
DECLARE
    d VARCHAR2(3);
BEGIN
    SELECT
        a.tp_op
    INTO d
    FROM
        tb_operacao a
    WHERE
        a.cd_op = :new.cd_op;

    IF ( d IS NULL OR d <> 'SUP' ) THEN
        raise_application_error(-20223, 'FK OP_SUPERV_OPERACAO_FK in Table TB_OP_SUPERVISIONADA violates Arc constraint on Table TB_OPERACAO - discriminator column tp_op doesn''t have value ''SUP'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/
-- COMIIT
COMMIT;
