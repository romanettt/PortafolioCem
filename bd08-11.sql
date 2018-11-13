--------------------------------------------------------
-- Archivo creado  - jueves-noviembre-08-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_ALUMNO_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_ALUMNO_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CEL_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_CEL_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CERTIFICADO_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_CERTIFICADO_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CURSO_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_CURSO_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_DETALLEALUMNO_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_DETALLEALUMNO_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_FAMILIA_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_FAMILIA_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_FOTOS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_FOTOS_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NOTAS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_NOTAS_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PAIS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_PAIS_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POSTALUM_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_POSTALUM_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POSTCEL_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_POSTCEL_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PROGRAMA_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_PROGRAMA_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USUARIO_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINISTRADOR"."SEQ_USUARIO_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ALUMNO
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."ALUMNO" 
   (	"ID_ALUM" NUMBER(9,0), 
	"RUT" VARCHAR2(20 CHAR), 
	"NOMBRE" VARCHAR2(20 CHAR), 
	"APELLIDO_MATERNO" VARCHAR2(20 CHAR), 
	"APELLIDO_PATERNO" VARCHAR2(20 CHAR), 
	"CORREO" VARCHAR2(30 CHAR), 
	"USUARIO" VARCHAR2(20 CHAR), 
	"PASS" VARCHAR2(15 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CEL
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."CEL" 
   (	"ID_CEL" NUMBER(9,0), 
	"NOMBRE" VARCHAR2(20 CHAR), 
	"DIRECCION" VARCHAR2(30 CHAR), 
	"CORREO" VARCHAR2(30 CHAR), 
	"TELEFONO" NUMBER(9,0), 
	"USUARIO" VARCHAR2(20 CHAR), 
	"PASS" VARCHAR2(15 CHAR), 
	"PAIS_ID_PAIS" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CERTIFICADO
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."CERTIFICADO" 
   (	"ID_CERT" NUMBER(9,0), 
	"CERT_ANTECEDENTES" BLOB, 
	"CERT_RESIDENCIA" BLOB, 
	"FAMILIA_ID_FAMILIA" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("CERT_ANTECEDENTES") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("CERT_RESIDENCIA") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table CURSO
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."CURSO" 
   (	"ID_CURSO" NUMBER(9,0), 
	"ESTADO" CHAR(2 CHAR), 
	"PROGRAMA_ID_PROGRAM" NUMBER(9,0), 
	"CANTIDAD" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DETALLE_ALUM
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."DETALLE_ALUM" 
   (	"ID_DETALLE" NUMBER(9,0), 
	"ESTADO" CHAR(2 CHAR), 
	"ALUMNO_ID_ALUM" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FAMILIA
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."FAMILIA" 
   (	"ID_FAMILIA" NUMBER(9,0), 
	"APELLIDO_FAMILIA" VARCHAR2(30 CHAR), 
	"JEFE_FAMILIA" VARCHAR2(20 CHAR), 
	"INTEGRANTES" NUMBER(9,0), 
	"HABITACIONES" NUMBER(9,0), 
	"DIRECCION" VARCHAR2(30 CHAR), 
	"USUARIO" VARCHAR2(15 CHAR), 
	"PASS" VARCHAR2(20 CHAR), 
	"ESTADO" CHAR(2 CHAR), 
	"CEL_ID_CEL" NUMBER(9,0), 
	"CORREO" VARCHAR2(30 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FOTOS
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."FOTOS" 
   (	"ID_FOTOS" NUMBER(9,0), 
	"FOTO1" BLOB, 
	"FOTO2" BLOB, 
	"FOTO3" BLOB, 
	"FAMILIA_ID_FAMILIA" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("FOTO1") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("FOTO2") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("FOTO3") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table NOTAS
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."NOTAS" 
   (	"ID_NOTA" NUMBER(9,0), 
	"NOTA1" NUMBER, 
	"NOTA2" NUMBER, 
	"NOTA3" NUMBER, 
	"NOTA4" NUMBER, 
	"NOTA5" NUMBER, 
	"NOTA6" NUMBER, 
	"PROMEDIO" NUMBER, 
	"CURSO_ID_CURSO" NUMBER(9,0), 
	"ALUMNO_NOTA" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PAIS
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."PAIS" 
   (	"ID_PAIS" NUMBER(9,0), 
	"NOMBRE" VARCHAR2(20 CHAR), 
	"IDIOMA" VARCHAR2(15 CHAR), 
	"CODIGO" VARCHAR2(6 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POST_ALUM
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."POST_ALUM" 
   (	"ID_POST" NUMBER(9,0), 
	"TIPO_SEGURO" VARCHAR2(20 CHAR), 
	"RESERVA_DINERO" NUMBER(9,0), 
	"COMPROBANTE_RESERVA" BLOB, 
	"CURSO_ID_CURSO" NUMBER(9,0), 
	"ALUMNO_ID_ALUM" NUMBER(9,0), 
	"POST_FAMILIA" NUMBER(9,0), 
	"ESTADO" CHAR(2 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("COMPROBANTE_RESERVA") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table POST_CEL
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."POST_CEL" 
   (	"ID_POST" NUMBER(9,0), 
	"ESTADO" CHAR(2 CHAR), 
	"PROGRAMA_ID_PROGRAM" NUMBER(9,0), 
	"CEL_ID_CEL" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROGRAMA
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."PROGRAMA" 
   (	"ID_PROGRAM" NUMBER(9,0), 
	"NOMBRE" VARCHAR2(20 CHAR), 
	"CUPO_MAXIMO" NUMBER(9,0), 
	"CUPO_MINIMO" NUMBER(9,0), 
	"TIPO" CHAR(2 CHAR), 
	"FECHA_INICIO" DATE, 
	"FECHA_TERMINO" DATE, 
	"ESTADO" CHAR(2 CHAR), 
	"DESCRIPCION" VARCHAR2(300 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR"."USUARIO" 
   (	"ID_USU" NUMBER(9,0), 
	"ROL" NUMBER(9,0), 
	"NOMBRE" VARCHAR2(20 CHAR), 
	"PASS" VARCHAR2(15 CHAR), 
	"CORREO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ALUMNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."ALUMNO_PK" ON "ADMINISTRADOR"."ALUMNO" ("ID_ALUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."CEL_PK" ON "ADMINISTRADOR"."CEL" ("ID_CEL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CERTIFICADO__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."CERTIFICADO__IDX" ON "ADMINISTRADOR"."CERTIFICADO" ("FAMILIA_ID_FAMILIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CERTIFICADO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."CERTIFICADO_PK" ON "ADMINISTRADOR"."CERTIFICADO" ("ID_CERT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CURSO__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."CURSO__IDX" ON "ADMINISTRADOR"."CURSO" ("PROGRAMA_ID_PROGRAM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CURSO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."CURSO_PK" ON "ADMINISTRADOR"."CURSO" ("ID_CURSO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DETALLE_ALUM__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."DETALLE_ALUM__IDX" ON "ADMINISTRADOR"."DETALLE_ALUM" ("ALUMNO_ID_ALUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DETALLE_ALUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."DETALLE_ALUM_PK" ON "ADMINISTRADOR"."DETALLE_ALUM" ("ID_DETALLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FAMILIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."FAMILIA_PK" ON "ADMINISTRADOR"."FAMILIA" ("ID_FAMILIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FOTOS__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."FOTOS__IDX" ON "ADMINISTRADOR"."FOTOS" ("FAMILIA_ID_FAMILIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FOTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."FOTOS_PK" ON "ADMINISTRADOR"."FOTOS" ("ID_FOTOS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index NOTAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."NOTAS_PK" ON "ADMINISTRADOR"."NOTAS" ("ID_NOTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PAIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."PAIS_PK" ON "ADMINISTRADOR"."PAIS" ("ID_PAIS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index POST_ALUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."POST_ALUM_PK" ON "ADMINISTRADOR"."POST_ALUM" ("ID_POST") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index POST_CEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."POST_CEL_PK" ON "ADMINISTRADOR"."POST_CEL" ("ID_POST") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PROGRAMA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."PROGRAMA_PK" ON "ADMINISTRADOR"."PROGRAMA" ("ID_PROGRAM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR"."USUARIO_PK" ON "ADMINISTRADOR"."USUARIO" ("ID_USU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger ACEPTAR_ALUMNO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."ACEPTAR_ALUMNO" 
AFTER UPDATE ON post_alum
FOR EACH ROW
BEGIN
  IF :new.estado = 'AC' THEN
    update curso set cantidad=cantidad+1 where id_curso=:new.curso_id_curso;
    update familia set estado='ND' where id_familia=:new.post_familia;
  END IF;
END aceptar_alumno; 
/
ALTER TRIGGER "ADMINISTRADOR"."ACEPTAR_ALUMNO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_ACEPTAR_ALUMNO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_ACEPTAR_ALUMNO" 
AFTER UPDATE ON post_alum
FOR EACH ROW
BEGIN
  IF :new.estado = 'AC' THEN
    update curso set cantidad=cantidad+1 where id_curso=:new.curso_id_curso;
    update familia set estado='ND' where id_familia=:new.post_familia;
  END IF;
END aceptar_alumno;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_ACEPTAR_ALUMNO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_ACEPTAR_CEL
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_ACEPTAR_CEL" 
AFTER UPDATE ON POST_CEL
FOR EACH ROW
BEGIN
IF :NEW.ESTADO = 'AC' THEN
UPDATE PROGRAMA SET ESTADO = 'PU' WHERE ID_PROGRAM=:NEW.PROGRAMA_ID_PROGRAM;
END IF;
END TGR_ACEPTAR_CEL;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_ACEPTAR_CEL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_ALUMNO_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_ALUMNO_ID" 
before insert on alumno
for each row
begin
select SEQ_ALUMNO_ID.nextval into :new.id_alum from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_ALUMNO_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_CEL_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_CEL_ID" 
before insert on cel
for each row
begin
select SEQ_CEL_ID.nextval into :new.id_cel from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_CEL_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_CERTIFICADO_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_CERTIFICADO_ID" 
before insert on certificado
for each row
begin
select SEQ_CERTIFICADO_ID.nextval into :new.id_cert from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_CERTIFICADO_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_CREAR_DETALLE_ALUM
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_CREAR_DETALLE_ALUM" 
AFTER INSERT
   ON alumno
   FOR EACH ROW
BEGIN
   INSERT INTO detalle_alum
   ( estado,
     alumno_id_alum)
   VALUES
   ( 'RE',
     :new.id_alum);
END;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_CREAR_DETALLE_ALUM" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_CURSO_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_CURSO_ID" 
before insert on curso
for each row
begin
select SEQ_CURSO_ID.nextval into :new.id_curso from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_CURSO_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_DETALLEALUM_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_DETALLEALUM_ID" 
before insert on detalle_alum
for each row
begin
select SEQ_DETALLEALUMNO_ID.nextval into :new.id_detalle from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_DETALLEALUM_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_FAMILIA_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_FAMILIA_ID" 
before insert on familia
for each row
begin
select SEQ_FAMILIA_ID.nextval into :new.id_familia from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_FAMILIA_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_FOTOS_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_FOTOS_ID" 
before insert on fotos
for each row
begin
select SEQ_FOTOS_ID.nextval into :new.id_fotos from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_FOTOS_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_GENERAR_CURSO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_GENERAR_CURSO" 
AFTER UPDATE ON programa
FOR EACH ROW
BEGIN
  IF :new.estado = 'PU' THEN
    insert into curso (estado, programa_id_program, cantidad)
    values ('CR', :new.id_program, 0);
  END IF;
END test_trig;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_GENERAR_CURSO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_NOTAS_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_NOTAS_ID" 
before insert on NOTAS
for each row
begin
select SEQ_NOTAS_ID.nextval into :new.id_nota from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_NOTAS_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_PAIS_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_PAIS_ID" 
before insert on pais
for each row
begin
select SEQ_PAIS_ID.nextval into :new.id_pais from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_PAIS_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_POSTALUM_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_POSTALUM_ID" 
before insert on post_alum
for each row
begin
select SEQ_POSTALUM_ID.nextval into :new.id_post from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_POSTALUM_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_POSTCEL_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_POSTCEL_ID" 
before insert on post_cel
for each row
begin
select SEQ_POSTALUM_ID.nextval into :new.id_post from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_POSTCEL_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_PROGRAMA_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_PROGRAMA_ID" 
before insert on programa
for each row
begin
select SEQ_PROGRAMA_ID.nextval into :new.id_program from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_PROGRAMA_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_USUARIO_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINISTRADOR"."TGR_USUARIO_ID" 
before insert on usuario
for each row
begin
select SEQ_USUARIO_ID.nextval into :new.id_usu from dual;
end;
/
ALTER TRIGGER "ADMINISTRADOR"."TGR_USUARIO_ID" ENABLE;
--------------------------------------------------------
--  DDL for Package PKG_ALUMNO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_ALUMNO" AS 

PROCEDURE SP_INSERT_ALUMNO (P_RUT IN alumno.rut%TYPE,
                            P_NOMBRE IN alumno.nombre%TYPE,
                            P_APELLIDO_P IN alumno.apellido_paterno%TYPE,
                            P_APELLIDO_M IN alumno.apellido_materno%TYPE,
                            P_CORREO IN alumno.correo%TYPE,
                            P_USUARIO IN ALUMNO.USUARIO%TYPE,
                            P_PASS IN ALUMNO.PASS%TYPE);

PROCEDURE sp_update_alumno (P_ID IN alumno.id_alum%TYPE,
                            P_RUT IN alumno.rut%TYPE,
                            P_NOMBRE IN alumno.nombre%TYPE,
                            P_APELLIDO_P IN alumno.apellido_paterno%TYPE,
                            P_APELLIDO_M IN alumno.apellido_materno%TYPE,
                            P_CORREO IN alumno.correo%TYPE,
                            P_USUARIO IN ALUMNO.USUARIO%TYPE,
                            P_PASS IN ALUMNO.PASS%TYPE);

PROCEDURE sp_read_alumall(Cursor_ out SYS_REFCURSOR);

PROCEDURE LOGIN(
P_USUARIO IN alumno.USUARIO%TYPE,
p_pass in alumno.pass%type,
Cursor_ out sys_refcursor);

PROCEDURE sp_read_alum_id(
p_id in alumno.id_alum%type,
Cursor_ out sys_RefCursor);

PROCEDURE SP_READ_ALUMNO_DETALLE(
p_id alumno.id_alum%type,
Cursor_ out sys_RefCursor);


END PKG_ALUMNO;

/
--------------------------------------------------------
--  DDL for Package PKG_CEL
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_CEL" AS 

 PROCEDURE sp_insert_cel (P_NOMBRE IN cel.nombre%TYPE,
                             P_DIRECCION IN cel.direccion%TYPE,
                             P_CORREO IN cel.correo%TYPE,
                             P_TELEFONO IN cel.telefono%TYPE,
                             P_USUARIO IN cel.usuario%type,
                             P_PASS IN cel.pass%type,
                             p_pais in cel.pais_id_pais%type);
PROCEDURE sp_update_cel (P_ID IN cel.id_cel%TYPE,
                             P_NOMBRE IN cel.nombre%TYPE,
                             P_DIRECCION IN cel.direccion%TYPE,
                             P_CORREO IN cel.correo%TYPE,
                             P_TELEFONO IN cel.telefono%TYPE,
                             P_USUARIO IN cel.usuario%type,
                             P_PASS IN cel.pass%type,
                             p_pais in cel.pais_id_pais%type);

PROCEDURE sp_read_celall   (Cursor_ OUT SYS_REFCURSOR);

PROCEDURE SP_READ_CEL_ID (P_ID IN cel.id_cel%type,
                          Cursor_ out SYS_REFCURSOR);

PROCEDURE LOGIN (P_USUARIO IN cel.usuario%TYPE,
                P_PASS IN cel.pass%TYPE,
                Cursor_ out SYS_REFCURSOR);
                
PROCEDURE SP_LISTAR_PAISES(
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_UPDATE_CEL_USU (P_ID IN cel.id_cel%TYPE,
P_CORREO IN cel.correo%TYPE,
P_USUARIO IN cel.usuario%TYPE,
P_PASS IN cel.pass%TYPE);

                
END PKG_CEL;

/
--------------------------------------------------------
--  DDL for Package PKG_CERTIFICADO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_CERTIFICADO" AS 

    PROCEDURE sp_update_certificado 
    (P_ID IN CERTIFICADO.ID_CERT%TYPE,
    P_CERT_ANTECEDENTES IN CERTIFICADO.CERT_ANTECEDENTES%TYPE,
    P_CERT_RESIDENCIA IN CERTIFICADO.CERT_RESIDENCIA%TYPE,
    P_FAMILIA_ID IN CERTIFICADO.FAMILIA_ID_FAMILIA%TYPE);

    PROCEDURE sp_read_certificado_id 
    (P_ID IN CERTIFICADO.ID_CERT%TYPE,
    Cursor_ OUT SYS_REFCURSOR);

END PKG_CERTIFICADO;

/
--------------------------------------------------------
--  DDL for Package PKG_CURSO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_CURSO" AS 

  PROCEDURE sp_update_curso (P_ID IN curso.id_curso%TYPE,
                           P_ESTADO IN curso.estado%TYPE,
                           P_PROGRAMA_ID IN curso.programa_id_program%TYPE,
                           P_CANTIDAD IN CURSO.CANTIDAD%TYPE);

  PROCEDURE sp_read_curso_id (P_ID IN curso.id_curso%TYPE,
                         Cursor_ OUT SYS_REFCURSOR);

  PROCEDURE sp_read_cursoall (Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_ALUMNOS_XCURSO(
Cursor_ out sys_refCursor);

PROCEDURE SP_READ_CURSOID_PROGRAMA(
p_id in curso.id_curso%type,
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_CURSO_PROGRAMA(
Cursor_ out SYS_REFCURSOR);
END PKG_CURSO;

/
--------------------------------------------------------
--  DDL for Package PKG_DETALLE_ALUM
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_DETALLE_ALUM" AS 

PROCEDURE sp_update_detalle_alum (
P_ID IN detalle_alum.id_detalle%TYPE,
P_ESTADO IN detalle_alum.estado%TYPE,
P_ALUM_ID IN detalle_alum.alumno_id_alum%TYPE);

PROCEDURE sp_read_detalle_alum (
P_ID_ALUM IN detalle_alum.ID_DETALLE%TYPE,
Cursor_ OUT SYS_REFCURSOR);

END PKG_DETALLE_ALUM;

/
--------------------------------------------------------
--  DDL for Package PKG_FAMILIA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_FAMILIA" AS 

PROCEDURE SP_INSERT_FAMILIA (
 P_APELLIDO_FAMILIA IN familia.apellido_familia%TYPE
, P_JEFE_FAMILIA IN  familia.jefe_familia%TYPE
, P_INTEGRANTES IN  familia.integranteS%TYPE
, P_CANTIDAD_HABITACIONES IN familia.HABITACIONES%TYPE
, P_DIRECCION IN  familia.direccion%TYPE
,P_USUARIO IN FAMILIA.USUARIO%TYPE
,P_PASS IN FAMILIA.PASS%TYPE
, P_ESTADO IN  familia.estado%TYPE
, P_CEL_ID IN  familia.cel_id_cel%TYPE,
P_CORREO IN familia.correo%type);

PROCEDURE SP_UPDATE_FAMILIA (
 P_ID IN familia.id_familia%TYPE
, P_APELLIDO_FAMILIA IN familia.apellido_familia%TYPE
, P_JEFE_FAMILIA IN  familia.jefe_familia%TYPE
, P_INTEGRANTES IN  familia.integranteS%TYPE
, P_CANTIDAD_HABITACIONES IN familia.HABITACIONES%TYPE
, P_DIRECCION IN  familia.direccion%TYPE
,P_USUARIO IN FAMILIA.USUARIO%TYPE
,P_PASS IN FAMILIA.PASS%TYPE
, P_ESTADO IN  familia.estado%TYPE
, P_CEL_ID IN  familia.cel_id_cel%TYPE
, P_CORREO IN familia.correo%type);

PROCEDURE SP_UPDATE_ESTADOFAMILIA (
P_ID IN familia.id_familia%type,
p_estado IN familia.estado%type);

PROCEDURE SP_READ_FAMILIASALL (
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_FAMILIA_ID (
p_id in familia.id_familia%type,
Cursor_ out SYS_REFCURSOR);

PROCEDURE LOGIN(
P_USUARIO IN familia.usuario%TYPE,
P_PASS IN familia.pass%TYPE,
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_FAMILIA_DI(
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_FAMILIA_ND(
Cursor_ out sys_refcursor);

END PKG_FAMILIA;

/
--------------------------------------------------------
--  DDL for Package PKG_FOTOS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_FOTOS" AS 

PROCEDURE SP_UPDATE_FOTOS (
P_ID IN fotos.id_fotos%TYPE,
P_FOTO1 IN fotos.foto1%TYPE,
P_FOTO2 IN fotos.foto2%TYPE,
P_FOTO3 IN fotos.foto3%TYPE,
P_FAMILIA_ID IN fotos.familia_id_familia%TYPE);

PROCEDURE SP_READ_FOTOS_ID (
p_id_familia in fotos.familia_id_familia%type,
Cursor_ out SYS_REFCURSOR);

END PKG_FOTOS;

/
--------------------------------------------------------
--  DDL for Package PKG_NOTAS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_NOTAS" AS 

PROCEDURE SP_INSERT_NOTA (
p_nota1 in notas.nota1%type,
p_nota2 in notas.nota2%type,
p_nota3 in notas.nota3%type,
p_nota4 in notas.nota4%type,
p_nota5 in notas.nota5%type,
p_nota6 in notas.nota6%type,
p_promedio in notas.promedio%type,
p_curso_idcurso in notas.curso_id_curso%type,
P_ALUMNO in notas.alumno_nota%type);

PROCEDURE SP_UPDATE_NOTAS (
p_id_notas in notas.id_nota%type,
p_nota1 in notas.nota1%type,
p_nota2 in notas.nota2%type,
p_nota3 in notas.nota3%type,
p_nota4 in notas.nota4%type,
p_nota5 in notas.nota5%type,
p_nota6 in notas.nota6%type,
p_promedio in notas.promedio%type,
p_curso_idcurso in notas.curso_id_curso%type,
P_ALUMNO in notas.alumno_nota%type);

PROCEDURE SP_READ_NOTAS_CURSO (
p_id_curso IN notas.curso_id_curso%type,
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_NOTAS_ALUM (
p_id_alum IN NOTAS.ALUMNO_NOTA%TYPE,
Cursor_ out SYS_REFCURSOR);



END PKG_NOTAS;

/
--------------------------------------------------------
--  DDL for Package PKG_POST_ALUM
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_POST_ALUM" AS 

PROCEDURE SP_INSERT_POST_ALUM (
p_tipo_seguro in post_alum.tipo_seguro%type,
p_reserva_dinero in post_alum.reserva_dinero%type,
p_comprobante_reserva in post_alum.comprobante_reserva%type,
p_curso in post_alum.curso_id_curso%type,
p_alum in post_alum.alumno_id_alum%type,
p_familia in post_alum.post_familia%type);

PROCEDURE SP_READ_POSTALUM_PE (
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_POSTALUM_ID(
p_id_postalum in post_alum.id_post%type,
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_POST_AC(
Cursor_ out sys_refcursor);

  PROCEDURE SP_READ_POSTALL(
Cursor_ out sys_refcursor);

PROCEDURE SP_ACEPTAR_POSTALUM(
p_id_post in post_alum.id_post%type);

PROCEDURE SP_RECHAZAR_POSTALUM(
p_id_post in post_alum.id_post%type);

END PKG_POST_ALUM;

/
--------------------------------------------------------
--  DDL for Package PKG_POST_CEL
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_POST_CEL" AS 

PROCEDURE SP_INSERT_POST_CEL(
P_ID_PROGRAMA IN POST_CEL.PROGRAMA_ID_PROGRAM%TYPE,
P_ID_CEL IN POST_CEL.CEL_ID_CEL%TYPE);

PROCEDURE SP_READ_POSTCEL_PE(
Cursor_ OUT SYS_REFCURSOR);

PROCEDURE SP_READ_POSTCEL_ID(
P_ID_POST IN POST_ALUM.ID_POST%TYPE,
Cursor_ OUT SYS_REFCURSOR);

PROCEDURE SP_READ_POSTCEL_ALL(
Cursor_ OUT SYS_REFCURSOR);

PROCEDURE SP_ACEPTAR_POSTCEL(
P_ID_POST in post_cel.id_post%type);

PROCEDURE SP_RECHAZAR_POSTCEL(
P_ID_POST in post_cel.id_post%type);


END PKG_POST_CEL;

/
--------------------------------------------------------
--  DDL for Package PKG_PROGRAMA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_PROGRAMA" AS 

PROCEDURE SP_INSERT_PROGRAMA (
p_nombre in programa.nombre%type,
p_cupo_maximo in programa.cupo_maximo%type,
p_cupo_minimo in programa.cupo_minimo%type,
p_tipo in programa.tipo%type,
p_inicio in programa.fecha_inicio%type,
p_termino in programa.fecha_termino%type,
p_descripcion in programa.descripcion%type);

PROCEDURE SP_UPDATE_PROGRAMA (
p_id_programa in programa.id_program%type,
p_nombre in programa.nombre%type,
p_cupo_maximo in programa.cupo_maximo%type,
p_cupo_minimo in programa.cupo_minimo%type,
p_tipo in programa.tipo%type,
p_estado in programa.estado%type,
p_inicio in programa.fecha_inicio%type,
p_termino in programa.fecha_termino%type,
p_descripcion in programa.descripcion%type);

PROCEDURE SP_READ_PROGRAMASALL (
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_PROGRAMA_ID (
p_id_programa in programa.id_program%type,
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_PROGRAMA_CR(
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_PROGRAMA_PU(
Cursor_ out SYS_REFCURSOR);

END PKG_PROGRAMA;

/
--------------------------------------------------------
--  DDL for Package PKG_USUARIO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ADMINISTRADOR"."PKG_USUARIO" AS 

procedure SP_INSERT_USUARIO(
p_ROL in USUARIO.ROL%type
,p_NOMBRE in USUARIO.NOMBRE%type
,p_PASS in USUARIO.PASS%type
,p_CORREO in USUARIO.CORREO%type);

PROCEDURE SP_UPDATE_USUARIO (
p_ID_USU in USUARIO.ID_USU%type
,p_ROL in USUARIO.ROL%type
,p_NOMBRE in USUARIO.NOMBRE%type
,p_PASS in USUARIO.PASS%type
,p_CORREO in USUARIO.CORREO%type
);

PROCEDURE SP_READ_USUARIOALL (
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_USUARIO_ID (
p_id_usu in usuario.id_usu%type,
Cursor_ out SYS_REFCURSOR);

PROCEDURE SP_READ_USUARIO_ROLADMIN (
Cursor_ OUT SYS_REFCURSOR);

PROCEDURE SP_READ_USUARIO_ROLCEM (
Cursor_ OUT SYS_REFCURSOR);

PROCEDURE LOGIN(
P_USUARIO IN usuario.nombre%TYPE,
P_PASS IN usuario.pass%TYPE,
Cursor_ OUT SYS_REFCURSOR);

END PKG_USUARIO;

/
--------------------------------------------------------
--  DDL for Package Body PKG_ALUMNO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_ALUMNO" AS

  PROCEDURE SP_INSERT_ALUMNO (P_RUT IN alumno.rut%TYPE,
                            P_NOMBRE IN alumno.nombre%TYPE,
                            P_APELLIDO_P IN alumno.apellido_paterno%TYPE,
                            P_APELLIDO_M IN alumno.apellido_materno%TYPE,
                            P_CORREO IN alumno.correo%TYPE,
                            P_USUARIO IN ALUMNO.USUARIO%TYPE,
                            P_PASS IN ALUMNO.PASS%TYPE) AS
  BEGIN
  INSERT INTO ALUMNO 
  (RUT, 
  NOMBRE, 
  APELLIDO_MATERNO, 
  APELLIDO_PATERNO, 
  CORREO, 
  USUARIO, 
  PASS)
  VALUES
  (UPPER(P_RUT), 
  UPPER(P_NOMBRE), 
  UPPER(P_APELLIDO_P), 
  UPPER(P_APELLIDO_M), 
  UPPER(P_CORREO), 
  P_USUARIO, 
  P_PASS);
  COMMIT;
  END SP_INSERT_ALUMNO;


  PROCEDURE sp_update_alumno (P_ID IN alumno.id_alum%TYPE,
                            P_RUT IN alumno.rut%TYPE,
                            P_NOMBRE IN alumno.nombre%TYPE,
                            P_APELLIDO_P IN alumno.apellido_paterno%TYPE,
                            P_APELLIDO_M IN alumno.apellido_materno%TYPE,
                            P_CORREO IN alumno.correo%TYPE,
                            P_USUARIO IN ALUMNO.USUARIO%TYPE,
                            P_PASS IN ALUMNO.PASS%TYPE) AS
  BEGIN
    UPDATE ALUMNO SET 
    RUT=P_RUT, 
    NOMBRE=P_NOMBRE, 
    apellido_materno=P_APELLIDO_M, 
    APELLIDO_PATERNO=P_APELLIDO_P, 
    CORREO=P_CORREO,
    USUARIO=P_USUARIO,
    PASS=P_PASS
    where id_alum=P_ID;
    COMMIT;   
  END sp_update_alumno;


  PROCEDURE sp_read_alumall(Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for select * from alumno;
  END sp_read_alumall;

  PROCEDURE LOGIN(
P_USUARIO IN alumno.USUARIO%TYPE,
p_pass in alumno.pass%type,
Cursor_ out sys_refcursor) AS
  BEGIN
OPEN Cursor_ for
select id_alum from alumno
where USUARIO = P_USUARIO 
and pass = p_pass;
end login;

  PROCEDURE sp_read_alum_id(
p_id in alumno.id_alum%type,
Cursor_ out sys_RefCursor) AS
  BEGIN
open Cursor_ for 
select * from alumno
where id_alum = p_id;
end sp_read_alum_id;

PROCEDURE SP_READ_ALUMNO_DETALLE(
p_id alumno.id_alum%type,
Cursor_ out sys_RefCursor) AS
BEGIN
OPEN Cursor_ FOR
SELECT AL.ID_ALUM, AL.RUT, AL.NOMBRE, al.apellido_materno, al.apellido_paterno, al.correo, al.usuario, al.pass,
da.estado
FROM ALUMNO AL, DETALLE_ALUM DA
WHERE al.id_alum = p_id
and al.id_alum = da.alumno_id_alum;
end sp_read_alumno_detalle;

END PKG_ALUMNO;

/
--------------------------------------------------------
--  DDL for Package Body PKG_CEL
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_CEL" AS

  PROCEDURE sp_insert_cel (P_NOMBRE IN cel.nombre%TYPE,
                             P_DIRECCION IN cel.direccion%TYPE,
                             P_CORREO IN cel.correo%TYPE,
                             P_TELEFONO IN cel.telefono%TYPE,
                             P_USUARIO IN cel.usuario%type,
                             P_PASS IN cel.pass%type,
                             p_pais in cel.pais_id_pais%type) AS
  BEGIN
    INSERT INTO CEL 
    (NOMBRE, 
    DIRECCION, 
    CORREO, 
    TELEFONO,
    USUARIO,
    PASS,
    PAIS_ID_PAIS)
    VALUES 
    (UPPER(P_NOMBRE), 
    UPPER(P_DIRECCION), 
    UPPER(P_CORREO),
    P_TELEFONO,
    P_USUARIO,
    P_PASS,
    P_PAIS);
    COMMIT;

      END sp_insert_cel;

  PROCEDURE sp_update_cel (P_ID IN cel.id_cel%TYPE,
                             P_NOMBRE IN cel.nombre%TYPE,
                             P_DIRECCION IN cel.direccion%TYPE,
                             P_CORREO IN cel.correo%TYPE,
                             P_TELEFONO IN cel.telefono%TYPE,
                             P_USUARIO IN cel.usuario%type,
                             P_PASS IN cel.pass%type,
                             p_pais in cel.pais_id_pais%type) AS
  BEGIN
    UPDATE CEL SET
    NOMBRE = P_NOMBRE,
    DIRECCION = P_DIRECCION,
    CORREO = P_CORREO,
    TELEFONO = P_TELEFONO,
    USUARIO = P_USUARIO,
    PASS = P_PASS,
    PAIS_ID_PAIS = P_PAIS
    WHERE ID_CEL = P_ID;
    COMMIT;
  END sp_update_cel;

  PROCEDURE sp_read_celall   (Cursor_ OUT SYS_REFCURSOR) AS
  BEGIN
   OPEN Cursor_ FOR SELECT * FROM CEL;
  END sp_read_celall;

  PROCEDURE SP_READ_CEL_ID (P_ID IN cel.id_cel%type,
                          Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    OPEN Cursor_ FOR SELECT * FROM CEL
    WHERE ID_CEL = P_ID;
  END SP_READ_CEL_ID;

  PROCEDURE LOGIN (P_USUARIO IN cel.usuario%TYPE,
                P_PASS IN cel.pass%TYPE,
                Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    OPEN Cursor_ FOR SELECT ID_CEL FROM CEL
    WHERE USUARIO = P_USUARIO AND
    PASS = P_PASS;
  END LOGIN;
  
  PROCEDURE SP_LISTAR_PAISES(
Cursor_ out SYS_REFCURSOR) AS
BEGIN 
OPEN Cursor_ for
select id_pais, nombre from pais;
end sp_listar_paises;

PROCEDURE SP_UPDATE_CEL_USU (P_ID IN cel.id_cel%TYPE,
P_CORREO IN cel.correo%TYPE,
P_USUARIO IN cel.usuario%TYPE,
P_PASS IN cel.pass%TYPE) AS
BEGIN
UPDATE CEL SET
CORREO = P_CORREO,
USUARIO = P_USUARIO,
PASS = P_PASS
WHERE ID_CEL = P_ID;
COMMIT;
END SP_UPDATE_CEL_USU;

END PKG_CEL;

/
--------------------------------------------------------
--  DDL for Package Body PKG_CERTIFICADO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_CERTIFICADO" AS

  PROCEDURE sp_update_certificado 
  (P_ID IN CERTIFICADO.ID_CERT%TYPE,
  P_CERT_ANTECEDENTES IN CERTIFICADO.CERT_ANTECEDENTES%TYPE,
  P_CERT_RESIDENCIA IN CERTIFICADO.CERT_RESIDENCIA%TYPE,
  P_FAMILIA_ID IN CERTIFICADO.FAMILIA_ID_FAMILIA%TYPE) AS
  BEGIN
  UPDATE CERTIFICADO SET 
  CERT_ANTECEDENTES=P_CERT_ANTECEDENTES, 
  CERT_RESIDENCIA=P_CERT_RESIDENCIA, 
  FAMILIA_ID_FAMILIA=P_FAMILIA_ID
        WHERE id_cert=P_ID;
        COMMIT;  
  END sp_update_certificado;

  PROCEDURE sp_read_certificado_id 
  (P_ID IN CERTIFICADO.ID_CERT%TYPE,
  Cursor_ OUT SYS_REFCURSOR) AS
  BEGIN
    OPEN cursor_ FOR
        SELECT cer.cert_antecedentes, 
        cer.cert_residencia
        FROM certificado cer, familia fa
        WHERE cer.id_cert=P_ID
        and cer.familia_id_familia = fa.id_familia;
  END sp_read_certificado_id;

END PKG_CERTIFICADO;

/
--------------------------------------------------------
--  DDL for Package Body PKG_CURSO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_CURSO" AS

  PROCEDURE sp_update_curso (P_ID IN curso.id_curso%TYPE,
                           P_ESTADO IN curso.estado%TYPE,
                           P_PROGRAMA_ID IN curso.programa_id_program%TYPE,
                           P_CANTIDAD IN curso.cantidad%type) AS
  BEGIN
    UPDATE CURSO SET ESTADO=P_ESTADO, PROGRAMA_ID_PROGRAM = p_programa_id, CANTIDAD = P_CANTIDAD
    WHERE id_curso = P_ID;
    commit;
      END sp_update_curso;

  PROCEDURE sp_read_curso_id (P_ID IN curso.id_curso%TYPE,
                         Cursor_ OUT SYS_REFCURSOR) AS
  BEGIN
    OPEN cursor_ FOR
        SELECT id_curso, estado, programa_id_program, cantidad
        FROM curso
        WHERE id_curso=P_ID;
  END sp_read_curso_id;

  PROCEDURE sp_read_cursoall (Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    OPEN Cursor_ for
    select * from curso;
  END sp_read_cursoall;

PROCEDURE SP_READ_ALUMNOS_XCURSO(
Cursor_ out sys_refCursor) AS
BEGIN
OPEN Cursor_ for
SELECT PA.ALUMNO_ID_ALUM , al.nombre, cu.id_curso
FROM POST_ALUM PA, CURSO CU, alumno AL
WHERE pa.estado = 'AP' 
and pa.curso_id_curso = cu.id_curso
and cu.estado = 'EC'
AND al.id_alum = pa.alumno_id_alum;
END SP_READ_ALUMNOS_XCURSO;

PROCEDURE SP_READ_CURSOID_PROGRAMA(
p_id in curso.id_curso%type,
Cursor_ out SYS_REFCURSOR) as
begin
open Cursor_ for
select cu.id_curso, pr.nombre, pr.fecha_inicio, pr.fecha_termino, pr.cupo_maximo, pr.cupo_minimo, cu.cantidad 
from curso cu, programa pr
where cu.id_curso = p_id
and cu.programa_id_program = pr.id_program;
end sp_read_cursoid_programa;

PROCEDURE SP_READ_CURSO_PROGRAMA(
Cursor_ out SYS_REFCURSOR) as
begin 
open Cursor_ for
select cu.id_curso, pr.nombre, pr.fecha_inicio, pr.fecha_termino, pr.cupo_maximo, pr.cupo_minimo, cu.cantidad 
from curso cu, programa pr
where cu.programa_id_program = pr.id_program;
end sp_read_curso_programa;

END PKG_CURSO;

/
--------------------------------------------------------
--  DDL for Package Body PKG_DETALLE_ALUM
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_DETALLE_ALUM" AS

  PROCEDURE sp_update_detalle_alum (
P_ID IN detalle_alum.id_detalle%TYPE,
P_ESTADO IN detalle_alum.estado%TYPE,
P_ALUM_ID IN detalle_alum.alumno_id_alum%TYPE) AS
  BEGIN
    UPDATE DETALLE_ALUM SET 
    ESTADO=P_ESTADO, 
    ALUMNO_ID_ALUM=P_ALUM_ID
    WHERE id_detalle=P_ID;
    COMMIT;
  END sp_update_detalle_alum;

  PROCEDURE sp_read_detalle_alum 
  (P_ID_ALUM IN detalle_alum.id_detalle%TYPE,
   Cursor_ OUT SYS_REFCURSOR) AS
  BEGIN
    OPEN Cursor_ FOR
        SELECT de.estado
        FROM detalle_alum de, alumno al
        WHERE de.id_detalle=P_ID_ALUM
        and de.alumno_id_alum = al.id_alum;
  END sp_read_detalle_alum;

END PKG_DETALLE_ALUM;

/
--------------------------------------------------------
--  DDL for Package Body PKG_FAMILIA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_FAMILIA" AS

  PROCEDURE SP_INSERT_FAMILIA (
 P_APELLIDO_FAMILIA IN familia.apellido_familia%TYPE
, P_JEFE_FAMILIA IN  familia.jefe_familia%TYPE
, P_INTEGRANTES IN  familia.integranteS%TYPE
, P_CANTIDAD_HABITACIONES IN familia.HABITACIONES%TYPE
, P_DIRECCION IN  familia.direccion%TYPE
,P_USUARIO IN FAMILIA.USUARIO%TYPE
,P_PASS IN FAMILIA.PASS%TYPE
, P_ESTADO IN  familia.estado%TYPE
, P_CEL_ID IN  familia.cel_id_cel%TYPE,
P_CORREO IN familia.correo%type) AS
  BEGIN
    INSERT INTO FAMILIA(
  APELLIDO_FAMILIA,
  JEFE_FAMILIA,
  INTEGRANTES,
  HABITACIONES,
  DIRECCION,
  USUARIO,
  PASS,
  ESTADO,
  CEL_ID_CEL,
  CORREO
  ) VALUES (
  p_apellido_familia,
  P_JEFE_FAMILIA,
  P_INTEGRANTES,
  P_CANTIDAD_HABITACIONES,
  P_DIRECCION,
  P_USUARIO,
  P_PASS,
  P_ESTADO,
  P_CEL_ID,
  P_CORREO
  );
  COMMIT;
  END SP_INSERT_FAMILIA;

  PROCEDURE SP_UPDATE_FAMILIA (
  P_ID IN familia.id_familia%TYPE
, P_APELLIDO_FAMILIA IN familia.apellido_familia%TYPE
, P_JEFE_FAMILIA IN  familia.jefe_familia%TYPE
, P_INTEGRANTES IN  familia.integranteS%TYPE
, P_CANTIDAD_HABITACIONES IN familia.HABITACIONES%TYPE
, P_DIRECCION IN  familia.direccion%TYPE
,P_USUARIO IN FAMILIA.USUARIO%TYPE
,P_PASS IN FAMILIA.PASS%TYPE
, P_ESTADO IN  familia.estado%TYPE
, P_CEL_ID IN  familia.cel_id_cel%TYPE
, P_CORREO IN familia.correo%type) AS
  BEGIN
    UPDATE FAMILIA SET
apellido_familia=p_apellido_familia,
jefe_familia=p_jefe_familia,
INTEGRANTES=p_integrantes,
habitaciones=p_cantidad_habitaciones,
direccion=p_direccion,
USUARIO=P_USUARIO,
PASS=P_PASS,
ESTADO=p_estado,
cel_id_cel=p_cel_id,
correo=p_correo
WHERE id_familia=P_ID;
COMMIT;

  END SP_UPDATE_FAMILIA;

  PROCEDURE SP_UPDATE_ESTADOFAMILIA (
P_ID IN familia.id_familia%type,
p_estado IN familia.estado%type) AS
  BEGIN
    UPDATE FAMILIA SET
estado = p_estado
where id_familia = p_id;
commit;
  END SP_UPDATE_ESTADOFAMILIA;

  PROCEDURE SP_READ_FAMILIASALL (
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for
select * from familia;
  END SP_READ_FAMILIASALL;

  PROCEDURE SP_READ_FAMILIA_ID (
p_id in familia.id_familia%type,
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ FOR
select * from familia
where id_familia = p_id;
  END SP_READ_FAMILIA_ID;

  PROCEDURE LOGIN(
  P_USUARIO IN familia.usuario%TYPE,
P_PASS IN familia.pass%TYPE,
Cursor_ out SYS_REFCURSOR) AS
BEGIN
OPEN Cursor_ for
select id_familia from familia
where usuario = p_usuario
and pass = p_pass;
end login;

PROCEDURE SP_READ_FAMILIA_DI(
Cursor_ out SYS_REFCURSOR) AS
BEGIN
OPEN Cursor_ FOR
SELECT * FROM FAMILIA
WHERE ESTADO = 'DI';
END SP_READ_FAMILIA_DI;

PROCEDURE SP_READ_FAMILIA_ND(
Cursor_ out sys_refcursor) AS
BEGIN 
OPEN Cursor_ FOR
SELECT * FROM FAMILIA
WHERE ESTADO = 'ND';
END SP_READ_FAMILIA_ND;


END PKG_FAMILIA;

/
--------------------------------------------------------
--  DDL for Package Body PKG_FOTOS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_FOTOS" AS

  PROCEDURE SP_UPDATE_FOTOS (
P_ID IN fotos.id_fotos%TYPE,
P_FOTO1 IN fotos.foto1%TYPE,
P_FOTO2 IN fotos.foto2%TYPE,
P_FOTO3 IN fotos.foto3%TYPE,
P_FAMILIA_ID IN fotos.familia_id_familia%TYPE) AS
  BEGIN
   UPDATE FOTOS SET
FOTO1=P_FOTO1,
FOTO2=P_FOTO2,
FOTO3=p_foto3,
familia_id_familia = p_familia_id
WHERE id_fotos = p_id;
COMMIT;

END SP_UPDATE_FOTOS;

  PROCEDURE SP_READ_FOTOS_ID (
p_id_familia in fotos.familia_id_familia%type,
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for 
select
fo.FOTO1 ,
fo.FOTO2 ,
fo.FOTO3 ,
FAMILIA_ID_FAMILIA from fotos fo, familia fa
where fo.id_fotos =p_id_familia 
and fa.id_familia = fo.familia_id_familia; 
  END SP_READ_FOTOS_ID;

END PKG_FOTOS;

/
--------------------------------------------------------
--  DDL for Package Body PKG_NOTAS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_NOTAS" AS

  PROCEDURE SP_INSERT_NOTA (
p_nota1 in notas.nota1%type,
p_nota2 in notas.nota2%type,
p_nota3 in notas.nota3%type,
p_nota4 in notas.nota4%type,
p_nota5 in notas.nota5%type,
p_nota6 in notas.nota6%type,
p_promedio in notas.promedio%type,
p_curso_idcurso in notas.curso_id_curso%type,
P_ALUMNO in notas.alumno_nota%type) AS
  BEGIN
    insert into notas(
  nota1,
  nota2,
  nota3,
  nota4,
  nota5,
  nota6,
  promedio,
  curso_id_curso,
  alumno_nota
  )values(
  p_nota1,
  p_nota2,
  p_nota3,
  p_nota4,
  p_nota5,
  p_nota6,
  p_promedio,
  p_curso_idcurso,
  p_alumno);
  commit;
  END SP_INSERT_NOTA;

  PROCEDURE SP_UPDATE_NOTAS (
p_id_notas in notas.id_nota%type,
p_nota1 in notas.nota1%type,
p_nota2 in notas.nota2%type,
p_nota3 in notas.nota3%type,
p_nota4 in notas.nota4%type,
p_nota5 in notas.nota5%type,
p_nota6 in notas.nota6%type,
p_promedio in notas.promedio%type,
p_curso_idcurso in notas.curso_id_curso%type,
P_ALUMNO in notas.alumno_nota%type) AS
  BEGIN
    update notas set
  id_nota = p_id_notas,
  nota1 = p_nota1,
  nota2 = p_nota2,
  nota3 = p_nota3,
  nota4 = p_nota4,
  nota5 = p_nota5,
  nota6 = p_nota6,
  promedio = p_promedio,
  curso_id_curso = p_curso_idcurso,
  alumno_nota = p_alumno
  where id_nota = p_id_notas;
  commit;
  END SP_UPDATE_NOTAS;

  PROCEDURE SP_READ_NOTAS_CURSO (
p_id_curso IN notas.curso_id_curso%type,
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    -- TAREA: Se necesita implantación para PROCEDURE PKG_NOTAS.SP_READ_NOTAS_CURSO
    NULL;
  END SP_READ_NOTAS_CURSO;

  PROCEDURE SP_READ_NOTAS_ALUM (
p_id_alum IN NOTAS.ALUMNO_NOTA%TYPE,
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    OPEN Cursor_ for
    select nota1, nota2, nota3, nota4, nota5, nota6, promedio
    from notas
    where alumno_nota = p_id_alum;
  END SP_READ_NOTAS_ALUM;


END PKG_NOTAS;

/
--------------------------------------------------------
--  DDL for Package Body PKG_POST_ALUM
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_POST_ALUM" AS

  PROCEDURE SP_INSERT_POST_ALUM (
p_tipo_seguro in post_alum.tipo_seguro%type,
p_reserva_dinero in post_alum.reserva_dinero%type,
p_comprobante_reserva in post_alum.comprobante_reserva%type,
p_curso in post_alum.curso_id_curso%type,
p_alum in post_alum.alumno_id_alum%type,
p_familia in post_alum.post_familia%type) AS
BEGIN
insert into post_alum(
tipo_seguro,
reserva_dinero,
comprobante_reserva,
curso_id_curso,
alumno_id_alum,
post_familia,
estado)
values(
p_tipo_seguro,
p_reserva_dinero,
p_comprobante_reserva,
p_curso,
p_alum,
p_familia,
'PE');
  END SP_INSERT_POST_ALUM;

  PROCEDURE SP_READ_POSTALUM_PE (
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for
    select * from post_alum
    where estado='PE';
  END SP_READ_POSTALUM_PE;

  PROCEDURE SP_READ_POSTALUM_ID(
p_id_postalum in post_alum.id_post%type,
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    OPEN Cursor_ for 
    select * from post_alum
    where id_post = p_id_postalum;
  END SP_READ_POSTALUM_ID;

  PROCEDURE SP_READ_POST_AC(
Cursor_ out sys_refcursor) AS
  BEGIN
    open Cursor_ for
    select * from post_alum
    where estado='AC';
  END SP_READ_POST_AC;

  PROCEDURE SP_READ_POSTALL(
Cursor_ out sys_refcursor) AS
BEGIN 
open Cursor_ for 
select * from post_alum;
END SP_READ_POSTALL;

PROCEDURE SP_ACEPTAR_POSTALUM(
p_id_post in post_alum.id_post%type) AS
BEGIN 
UPDATE post_alum set
estado = 'AC'
where id_post = p_id_post;
COMMIT;
END SP_ACEPTAR_POSTALUM;

PROCEDURE SP_RECHAZAR_POSTALUM(
p_id_post in post_alum.id_post%type) AS
begin
UPDATE post_alum set
estado = 'NA'
where id_post = p_id_post;
COMMIT;
END SP_RECHAZAR_POSTALUM;
END PKG_POST_ALUM;

/
--------------------------------------------------------
--  DDL for Package Body PKG_POST_CEL
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_POST_CEL" AS

  PROCEDURE SP_INSERT_POST_CEL(
P_ID_PROGRAMA IN POST_CEL.PROGRAMA_ID_PROGRAM%TYPE,
P_ID_CEL IN POST_CEL.CEL_ID_CEL%TYPE) AS
  BEGIN
    insert into post_cel(
    estado,
    programa_id_program,
    cel_id_cel)
    values(
    'PE',
    p_id_programa,
    p_id_cel);
    COMMIT;
  END SP_INSERT_POST_CEL;

  PROCEDURE SP_READ_POSTCEL_PE(
Cursor_ OUT SYS_REFCURSOR) AS
  BEGIN
   open Cursor_ for
   select * from post_cel 
   where estado='PE';
  END SP_READ_POSTCEL_PE;

  PROCEDURE SP_READ_POSTCEL_ID(
P_ID_POST IN POST_ALUM.ID_POST%TYPE,
Cursor_ OUT SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for
    select * from post_cel
    where id_post = p_id_post;
  END SP_READ_POSTCEL_ID;


  PROCEDURE SP_READ_POSTCEL_ALL(
Cursor_ OUT SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for
    select * from post_cel;
  END SP_READ_POSTCEL_ALL;
  
PROCEDURE SP_ACEPTAR_POSTCEL(
P_ID_POST in post_cel.id_post%type) AS
BEGIN
update post_cel set
estado = 'AC'
where id_post = P_ID_POST;
COMMIT;
END SP_ACEPTAR_POSTCEL;

PROCEDURE SP_RECHAZAR_POSTCEL(
P_ID_POST in post_cel.id_post%type) AS
BEGIN
update post_cel set
estado = 'NA'
where id_post = P_ID_POST;
COMMIT;
END SP_RECHAZAR_POSTCEL;

END PKG_POST_CEL;

/
--------------------------------------------------------
--  DDL for Package Body PKG_PROGRAMA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_PROGRAMA" AS

  PROCEDURE SP_INSERT_PROGRAMA (
p_nombre in programa.nombre%type,
p_cupo_maximo in programa.cupo_maximo%type,
p_cupo_minimo in programa.cupo_minimo%type,
p_tipo in programa.tipo%type,
p_inicio in programa.fecha_inicio%type,
p_termino in programa.fecha_termino%type,
p_descripcion in programa.descripcion%type) AS
  BEGIN
   insert into programa(
   nombre,
   cupo_maximo,
   cupo_minimo,
   tipo,
   fecha_inicio,
   fecha_termino,
   estado,
   descripcion)
   values(
   p_nombre,
   p_cupo_maximo,
   p_cupo_minimo,
   p_tipo,
   p_inicio,
   p_termino,
   'CR',
   p_descripcion);
   commit;
  END SP_INSERT_PROGRAMA;

  PROCEDURE SP_UPDATE_PROGRAMA (
p_id_programa in programa.id_program%type,
p_nombre in programa.nombre%type,
p_cupo_maximo in programa.cupo_maximo%type,
p_cupo_minimo in programa.cupo_minimo%type,
p_tipo in programa.tipo%type,
p_estado in programa.estado%type,
p_inicio in programa.fecha_inicio%type,
p_termino in programa.fecha_termino%type,
p_descripcion in programa.descripcion%type) AS
  BEGIN
    update programa set
    nombre = p_nombre,
    cupo_maximo = p_cupo_maximo,
    cupo_minimo = p_cupo_minimo,
    tipo = p_tipo,
    fecha_inicio = p_inicio,
    fecha_termino = p_termino,
    estado = p_estado,
    descripcion = p_descripcion
    where id_program = p_id_programa;
    commit;
  END SP_UPDATE_PROGRAMA;

  PROCEDURE SP_READ_PROGRAMASALL (
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for
    select * from programa;
  END SP_READ_PROGRAMASALL;

  PROCEDURE SP_READ_PROGRAMA_ID (
p_id_programa in programa.id_program%type,
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for
    select * from programa
    where id_program = p_id_programa;
  END SP_READ_PROGRAMA_ID;

  PROCEDURE SP_READ_PROGRAMA_CR(
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for
    select * from programa
    where estado = 'CR';
  END SP_READ_PROGRAMA_CR;

  PROCEDURE SP_READ_PROGRAMA_PU(
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for 
    select * from programa
    where estado = 'PU';
  END SP_READ_PROGRAMA_PU;

END PKG_PROGRAMA;

/
--------------------------------------------------------
--  DDL for Package Body PKG_USUARIO
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ADMINISTRADOR"."PKG_USUARIO" AS

  procedure SP_INSERT_USUARIO(
p_ROL in USUARIO.ROL%type
,p_NOMBRE in USUARIO.NOMBRE%type
,p_PASS in USUARIO.PASS%type
,p_CORREO in USUARIO.CORREO%type) AS
  BEGIN
    Insert into USUARIO(
ROL,
NOMBRE,
PASS,
CORREO
) values (
p_ROL
,p_NOMBRE
,p_pass
,p_CORREO
);
commit;
  END SP_INSERT_USUARIO;

  PROCEDURE SP_UPDATE_USUARIO (
p_ID_USU in usuario.id_usu%TYPE,
p_ROL in USUARIO.ROL%type,
p_NOMBRE in USUARIO.NOMBRE%type,
p_PASS in USUARIO.PASS%type,
p_CORREO in usuario.correo%TYPE) AS
  BEGIN
    update USUARIO set
ROL = p_ROL
,NOMBRE = p_NOMBRE
,pass = p_pass
,CORREO = p_CORREO
where ID_USU = p_ID_USU;
  END SP_UPDATE_USUARIO;

  PROCEDURE SP_READ_USUARIOALL (
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    OPEN Cursor_ for
    select * from usuario;
  END SP_READ_USUARIOALL;

  PROCEDURE SP_READ_USUARIO_ID (
p_id_usu in usuario.id_usu%type,
Cursor_ out SYS_REFCURSOR) AS
  BEGIN
    open Cursor_ for
    select * from usuario
    where id_usu = p_id_usu;
  END SP_READ_USUARIO_ID;

  PROCEDURE SP_READ_USUARIO_ROLADMIN (
Cursor_ OUT SYS_REFCURSOR) AS
BEGIN
open Cursor_ for
select * from usuario
where rol = '1';
END SP_READ_USUARIO_ROLADMIN;

PROCEDURE SP_READ_USUARIO_ROLCEM (
Cursor_ OUT SYS_REFCURSOR) AS
BEGIN
open Cursor_ for
select * from usuario
where rol = '2';
END SP_READ_USUARIO_ROLCEM;

  PROCEDURE LOGIN(
P_USUARIO IN usuario.nombre%TYPE,
P_PASS IN usuario.pass%TYPE,
Cursor_ OUT SYS_REFCURSOR) AS
  BEGIN
    OPEN Cursor_ for
    select id_usu, rol from usuario 
    where nombre = p_usuario
    and pass = p_pass;
  END LOGIN;

END PKG_USUARIO;

/
--------------------------------------------------------
--  Constraints for Table ALUMNO
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."ALUMNO" ADD CONSTRAINT "ALUMNO_PK" PRIMARY KEY ("ID_ALUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."ALUMNO" MODIFY ("PASS" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."ALUMNO" MODIFY ("USUARIO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."ALUMNO" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."ALUMNO" MODIFY ("APELLIDO_PATERNO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."ALUMNO" MODIFY ("APELLIDO_MATERNO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."ALUMNO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."ALUMNO" MODIFY ("RUT" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."ALUMNO" MODIFY ("ID_ALUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CEL
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."CEL" ADD CONSTRAINT "CEL_PK" PRIMARY KEY ("ID_CEL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."CEL" MODIFY ("PAIS_ID_PAIS" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CEL" MODIFY ("PASS" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CEL" MODIFY ("USUARIO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CEL" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CEL" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CEL" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CEL" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CEL" MODIFY ("ID_CEL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CERTIFICADO
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."CERTIFICADO" ADD CONSTRAINT "CERTIFICADO_PK" PRIMARY KEY ("ID_CERT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."CERTIFICADO" MODIFY ("FAMILIA_ID_FAMILIA" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CERTIFICADO" MODIFY ("ID_CERT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CURSO
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."CURSO" ADD CONSTRAINT "CURSO_PK" PRIMARY KEY ("ID_CURSO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."CURSO" MODIFY ("CANTIDAD" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CURSO" MODIFY ("PROGRAMA_ID_PROGRAM" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CURSO" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."CURSO" MODIFY ("ID_CURSO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DETALLE_ALUM
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."DETALLE_ALUM" ADD CONSTRAINT "DETALLE_ALUM_PK" PRIMARY KEY ("ID_DETALLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."DETALLE_ALUM" MODIFY ("ALUMNO_ID_ALUM" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."DETALLE_ALUM" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."DETALLE_ALUM" MODIFY ("ID_DETALLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FAMILIA
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" ADD CONSTRAINT "FAMILIA_PK" PRIMARY KEY ("ID_FAMILIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("CEL_ID_CEL" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("PASS" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("USUARIO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("HABITACIONES" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("INTEGRANTES" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("JEFE_FAMILIA" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("APELLIDO_FAMILIA" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FAMILIA" MODIFY ("ID_FAMILIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FOTOS
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."FOTOS" ADD CONSTRAINT "FOTOS_PK" PRIMARY KEY ("ID_FOTOS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."FOTOS" MODIFY ("FAMILIA_ID_FAMILIA" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."FOTOS" MODIFY ("ID_FOTOS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTAS
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."NOTAS" ADD CONSTRAINT "NOTAS_PK" PRIMARY KEY ("ID_NOTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."NOTAS" MODIFY ("ALUMNO_NOTA" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."NOTAS" MODIFY ("CURSO_ID_CURSO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."NOTAS" MODIFY ("PROMEDIO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."NOTAS" MODIFY ("NOTA6" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."NOTAS" MODIFY ("NOTA5" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."NOTAS" MODIFY ("NOTA4" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."NOTAS" MODIFY ("NOTA3" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."NOTAS" MODIFY ("NOTA2" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."NOTAS" MODIFY ("NOTA1" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."NOTAS" MODIFY ("ID_NOTA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAIS
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."PAIS" ADD CONSTRAINT "PAIS_PK" PRIMARY KEY ("ID_PAIS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."PAIS" MODIFY ("CODIGO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PAIS" MODIFY ("IDIOMA" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PAIS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PAIS" MODIFY ("ID_PAIS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST_ALUM
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."POST_ALUM" ADD CONSTRAINT "POST_ALUM_PK" PRIMARY KEY ("ID_POST")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."POST_ALUM" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."POST_ALUM" MODIFY ("POST_FAMILIA" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."POST_ALUM" MODIFY ("ALUMNO_ID_ALUM" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."POST_ALUM" MODIFY ("CURSO_ID_CURSO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."POST_ALUM" MODIFY ("RESERVA_DINERO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."POST_ALUM" MODIFY ("TIPO_SEGURO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."POST_ALUM" MODIFY ("ID_POST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST_CEL
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."POST_CEL" ADD CONSTRAINT "POST_CEL_PK" PRIMARY KEY ("ID_POST")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."POST_CEL" MODIFY ("CEL_ID_CEL" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."POST_CEL" MODIFY ("PROGRAMA_ID_PROGRAM" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."POST_CEL" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."POST_CEL" MODIFY ("ID_POST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROGRAMA
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."PROGRAMA" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PROGRAMA" ADD CONSTRAINT "PROGRAMA_PK" PRIMARY KEY ("ID_PROGRAM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."PROGRAMA" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PROGRAMA" MODIFY ("FECHA_TERMINO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PROGRAMA" MODIFY ("FECHA_INICIO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PROGRAMA" MODIFY ("TIPO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PROGRAMA" MODIFY ("CUPO_MINIMO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PROGRAMA" MODIFY ("CUPO_MAXIMO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PROGRAMA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."PROGRAMA" MODIFY ("ID_PROGRAM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("ID_USU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMINISTRADOR"."USUARIO" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."USUARIO" MODIFY ("PASS" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."USUARIO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."USUARIO" MODIFY ("ROL" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR"."USUARIO" MODIFY ("ID_USU" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CEL
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."CEL" ADD CONSTRAINT "CEL_PAIS_FK" FOREIGN KEY ("PAIS_ID_PAIS")
	  REFERENCES "ADMINISTRADOR"."PAIS" ("ID_PAIS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CERTIFICADO
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."CERTIFICADO" ADD CONSTRAINT "CERTIFICADO_FAMILIA_FK" FOREIGN KEY ("FAMILIA_ID_FAMILIA")
	  REFERENCES "ADMINISTRADOR"."FAMILIA" ("ID_FAMILIA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CURSO
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."CURSO" ADD CONSTRAINT "CURSO_PROGRAMA_FK" FOREIGN KEY ("PROGRAMA_ID_PROGRAM")
	  REFERENCES "ADMINISTRADOR"."PROGRAMA" ("ID_PROGRAM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DETALLE_ALUM
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."DETALLE_ALUM" ADD CONSTRAINT "DETALLE_ALUM_ALUMNO_FK" FOREIGN KEY ("ALUMNO_ID_ALUM")
	  REFERENCES "ADMINISTRADOR"."ALUMNO" ("ID_ALUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FAMILIA
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."FAMILIA" ADD CONSTRAINT "FAMILIA_CEL_FK" FOREIGN KEY ("CEL_ID_CEL")
	  REFERENCES "ADMINISTRADOR"."CEL" ("ID_CEL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FOTOS
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."FOTOS" ADD CONSTRAINT "FOTOS_FAMILIA_FK" FOREIGN KEY ("FAMILIA_ID_FAMILIA")
	  REFERENCES "ADMINISTRADOR"."FAMILIA" ("ID_FAMILIA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTAS
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."NOTAS" ADD CONSTRAINT "NOTAS_CURSO_FK" FOREIGN KEY ("CURSO_ID_CURSO")
	  REFERENCES "ADMINISTRADOR"."CURSO" ("ID_CURSO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST_ALUM
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."POST_ALUM" ADD CONSTRAINT "POST_ALUM_ALUMNO_FK" FOREIGN KEY ("ALUMNO_ID_ALUM")
	  REFERENCES "ADMINISTRADOR"."ALUMNO" ("ID_ALUM") ENABLE;
  ALTER TABLE "ADMINISTRADOR"."POST_ALUM" ADD CONSTRAINT "POST_ALUM_CURSO_FK" FOREIGN KEY ("CURSO_ID_CURSO")
	  REFERENCES "ADMINISTRADOR"."CURSO" ("ID_CURSO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST_CEL
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR"."POST_CEL" ADD CONSTRAINT "POST_CEL_CEL_FK" FOREIGN KEY ("CEL_ID_CEL")
	  REFERENCES "ADMINISTRADOR"."CEL" ("ID_CEL") ENABLE;
  ALTER TABLE "ADMINISTRADOR"."POST_CEL" ADD CONSTRAINT "POST_CEL_PROGRAMA_FK" FOREIGN KEY ("PROGRAMA_ID_PROGRAM")
	  REFERENCES "ADMINISTRADOR"."PROGRAMA" ("ID_PROGRAM") ENABLE;
