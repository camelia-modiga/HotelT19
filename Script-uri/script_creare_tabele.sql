-- Generated by Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   at:        2021-05-05 20:14:31 EEST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE angajati (
    id_angajat       NUMBER(3) NOT NULL,
    nume_angajat     VARCHAR2(40) NOT NULL,
    passhash_angajat VARCHAR2(30) NOT NULL,
	nivel_angajat	 NUMBER(1) NOT NULL,
    post_angajat     VARCHAR2(20) NOT NULL
);

CREATE TABLE niveluri (
	nivel	VARCHAR2(20) NOT NULL
);

ALTER TABLE angajati ADD CONSTRAINT angajati_pk PRIMARY KEY ( id_angajat );

CREATE TABLE camere (
    id_camera    NUMBER(3) NOT NULL,
    tip_camera   VARCHAR2(40) NOT NULL,
    pret_camera  NUMBER(5) NOT NULL,
    id_minibar   NUMBER(3) NOT NULL,
    ocupat       CHAR(1) NOT NULL
);

CREATE UNIQUE INDEX camere__idx ON
    camere (
        id_minibar
    ASC );

ALTER TABLE camere ADD CONSTRAINT camere_pk PRIMARY KEY ( id_camera );

CREATE TABLE continut_minibar (
    id_minibar            NUMBER(3) NOT NULL,
    bauturi_carbogazoase  NUMBER(2) NOT NULL,
    apa_plata             NUMBER(2) NOT NULL,
    bere                  NUMBER(2) NOT NULL,
    vin                   NUMBER(2) NOT NULL,
    ocupat                CHAR(1) NOT NULL
);

ALTER TABLE continut_minibar ADD CONSTRAINT continut_minibar_pk PRIMARY KEY ( id_minibar );

CREATE TABLE rezervare (
    id_rezervare    NUMBER(3) NOT NULL,
    nume_client     VARCHAR2(40) NOT NULL,
    prenume_client  VARCHAR2(40) NOT NULL,
    cnp_client      NUMBER(13) NOT NULL,
    internet        CHAR(1) NOT NULL,
    parcare         CHAR(1) NOT NULL,
    telefon_fix     CHAR(1) NOT NULL,
    uscator_par     CHAR(1) NOT NULL,
    id_camera       NUMBER(3) NOT NULL,
    data_cazare     DATE NOT NULL,
    data_decazare   DATE NOT NULL
);

CREATE UNIQUE INDEX rezervare__idx ON
    rezervare (
        id_camera
    ASC );

ALTER TABLE rezervare ADD CONSTRAINT rezervare_pk PRIMARY KEY ( id_rezervare );

ALTER TABLE camere
    ADD CONSTRAINT camere_continut_minibar_fk FOREIGN KEY ( id_minibar )
        REFERENCES continut_minibar ( id_minibar );

ALTER TABLE rezervare
    ADD CONSTRAINT rezervare_camere_fk FOREIGN KEY ( id_camera )
        REFERENCES camere ( id_camera );

CREATE SEQUENCE id_angajat_seq START WITH 1 MINVALUE 1 MAXVALUE 999 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER id_angajat_trig BEFORE
    INSERT ON angajati
    FOR EACH ROW
    WHEN ( new.id_angajat IS NULL )
BEGIN
    :new.id_angajat := id_angajat_seq.nextval;
END;
/

CREATE SEQUENCE id_camera_seq START WITH 1 MINVALUE 1 MAXVALUE 999 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER id_camera_trig BEFORE
    INSERT ON camere
    FOR EACH ROW
    WHEN ( new.id_camera IS NULL )
BEGIN
    :new.id_camera := id_camera_seq.nextval;
END;
/

CREATE SEQUENCE id_minibar_seq START WITH 1 MINVALUE 1 MAXVALUE 999 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER id_minibar_trig BEFORE
    INSERT ON continut_minibar
    FOR EACH ROW
    WHEN ( new.id_minibar IS NULL )
BEGIN
    :new.id_minibar := id_minibar_seq.nextval;
END;
/

CREATE SEQUENCE id_rezervare_seq START WITH 1 MINVALUE 1 MAXVALUE 999 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER id_rezervare_trig BEFORE
    INSERT ON rezervare
    FOR EACH ROW
    WHEN ( new.id_rezervare IS NULL )
BEGIN
    :new.id_rezervare := id_rezervare_seq.nextval;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             2
-- ALTER TABLE                              6
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           4
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
-- CREATE SEQUENCE                          4
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
-- ERRORS                                   0
-- WARNINGS                                 0
