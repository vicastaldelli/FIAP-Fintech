-- Generated by Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   at:        2022-05-24 23:22:23 BRT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_categoria (
    cd_categoria unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL,
    nm_categoria unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL,
    ds_categoria unknown 
--  ERROR: Datatype UNKNOWN is not allowed 

);

ALTER TABLE t_categoria ADD CONSTRAINT t_categoria_pk PRIMARY KEY ( cd_categoria );

CREATE TABLE t_dados_usuario (
    cd_usuario INTEGER NOT NULL,
    id_email   VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL,
    tx_senha   VARCHAR2(34 CHAR) NOT NULL
);

ALTER TABLE t_dados_usuario ADD CONSTRAINT t_dados_usuario_pk PRIMARY KEY ( cd_usuario );

CREATE TABLE t_saldo (
    cd_saldo                 INTEGER NOT NULL,
    vl_saldo                 FLOAT NOT NULL,
    t_transacao_cd_transacao INTEGER NOT NULL
);

ALTER TABLE t_saldo ADD CONSTRAINT t_saldo_pk PRIMARY KEY ( cd_saldo );

CREATE TABLE t_transacao (
    cd_transacao             INTEGER NOT NULL,
    dt_transacao             DATE NOT NULL,
    vl_valor                 FLOAT NOT NULL,
    ds_transacao             CLOB,
    t_categoria_cd_categoria unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
     NOT NULL,
    t_usuario_cd_cpf_usuario INTEGER NOT NULL
);

ALTER TABLE t_transacao ADD CONSTRAINT t_transacao_pk PRIMARY KEY ( cd_transacao );

CREATE TABLE t_usuario (
    cd_cpf_usuario             INTEGER NOT NULL,
    nm_usuario                 VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL,
    tx_sexo_usuario            VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL,
    dt_nascimento              DATE NOT NULL,
    t_dados_usuario_cd_usuario INTEGER NOT NULL
);

ALTER TABLE t_usuario ADD CONSTRAINT t_usuario_pk PRIMARY KEY ( cd_cpf_usuario );

ALTER TABLE t_saldo
    ADD CONSTRAINT t_sal_transacao_fk FOREIGN KEY ( t_transacao_cd_transacao )
        REFERENCES t_transacao ( cd_transacao );

ALTER TABLE t_transacao
    ADD CONSTRAINT t_trans_categoria_fk FOREIGN KEY ( t_categoria_cd_categoria )
        REFERENCES t_categoria ( cd_categoria );

ALTER TABLE t_transacao
    ADD CONSTRAINT t_trans_usuario_fk FOREIGN KEY ( t_usuario_cd_cpf_usuario )
        REFERENCES t_usuario ( cd_cpf_usuario );

ALTER TABLE t_usuario
    ADD CONSTRAINT t_us_dados_usuario_fk FOREIGN KEY ( t_dados_usuario_cd_usuario )
        REFERENCES t_dados_usuario ( cd_usuario );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   7
-- WARNINGS                                 0
