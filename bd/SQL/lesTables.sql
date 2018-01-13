--------------------------------------------------------
--  文件已创建 - 星期一-十一月-27-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table A_POUR_ROLE
--------------------------------------------------------

  CREATE TABLE "A_POUR_ROLE" 
   (	"LOGINBENEVOLE" VARCHAR2(25 BYTE), 
	"ID_PERSONNE" NUMBER(*,0), 
	"ID_ROLE" NUMBER(*,0)
   )  ;
--------------------------------------------------------
--  DDL for Table AJOUT_ARGENT
--------------------------------------------------------

  CREATE TABLE "AJOUT_ARGENT" 
   (	"ID_AJOUT" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"MONTANTARGENT" FLOAT(126), 
	"DATEAJOUT" DATE, 
	"ID_ENFANT" NUMBER(*,0), 
	"ID_PERSONNE" NUMBER(*,0)
   )  ;
--------------------------------------------------------
--  DDL for Table BENEVOLE
--------------------------------------------------------

  CREATE TABLE "BENEVOLE" 
   (	"LOGINBENEVOLE" VARCHAR2(25 BYTE), 
	"MOTDEPASSEBENEVOLE" VARCHAR2(25 BYTE), 
	"ID_PERSONNE" NUMBER(*,0)
   )  ;
--------------------------------------------------------
--  DDL for Table CATEGORIE
--------------------------------------------------------

  CREATE TABLE "CATEGORIE" 
   (	"ID_CATEGORIE" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"LIBELLECATEGORIE" VARCHAR2(25 BYTE)
   ) ;



--------------------------------------------------------
--  DDL for Table CONSOMME
--------------------------------------------------------

  CREATE TABLE "CONSOMME" 
   (	"DATECONSOMMATION" DATE, 
	"QTECONSOMMATION" FLOAT(126), 
	"ID_PRODUIT" NUMBER(*,0), 
	"ID_ENFANT" NUMBER(*,0), 
	"ID_PERSONNE" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table COURSE
--------------------------------------------------------

  CREATE TABLE "COURSE" 
   (	"IDCOURSE" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"MONTANTCOURSE" FLOAT(126), 
	"DATECOURSE" DATE, 
	"LOGINBENEVOLE" VARCHAR2(25 BYTE), 
	"ID_PERSONNE" NUMBER(*,0)
   )  ;
--------------------------------------------------------
--  DDL for Table ENFANT
--------------------------------------------------------

  CREATE TABLE "ENFANT" 
   (	"ID_ENFANT" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"MAILCONTACTENFANT" VARCHAR2(25 BYTE), 
	"TELCONTACTENFANT" VARCHAR2(25 BYTE), 
	"ID_PERSONNE" NUMBER(*,0), 
	"ID_CATEGORIE" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table EST_COMPOSE_DE
--------------------------------------------------------

  CREATE TABLE "EST_COMPOSE_DE" 
   (	"QTECOMPOSITION" FLOAT(126), 
	"ID_PRODUIT" NUMBER(*,0), 
	"ID_PRODUIT_PRODUIT" NUMBER(*,0)
   ) ;



--------------------------------------------------------
--  DDL for Table PERSONNE
--------------------------------------------------------

  CREATE TABLE "PERSONNE" 
   (	"ID_PERSONNE" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"NOMPERSONNE" VARCHAR2(25 BYTE), 
	"PRENOMPERSONNE" VARCHAR2(25 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUIT
--------------------------------------------------------

  CREATE TABLE "PRODUIT" 
   (	"ID_PRODUIT" NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"LIBELLEPRODUIT" VARCHAR2(25 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUIT_COMPOSE
--------------------------------------------------------

  CREATE TABLE "PRODUIT_COMPOSE" 
   (	"ID_PRODUIT" NUMBER(*,0)
   );
--------------------------------------------------------
--  DDL for Table PRODUIT_SIMPLE
--------------------------------------------------------

  CREATE TABLE "PRODUIT_SIMPLE" 
   (	"PRIXUNITAIRE" FLOAT(126), 
	"STOCK" FLOAT(126), 
	"ID_PRODUIT" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ROLE
--------------------------------------------------------

  CREATE TABLE "ROLE" 
   (	"ID_ROLE" NUMBER(*,0)
   ) ;


--------------------------------------------------------
--  Constraints for Table A_POUR_ROLE
--------------------------------------------------------

  ALTER TABLE "A_POUR_ROLE" ADD CONSTRAINT "A_POUR_ROLE_PK" PRIMARY KEY ("ID_ROLE", "ID_PERSONNE", "LOGINBENEVOLE");
  ALTER TABLE "A_POUR_ROLE" MODIFY ("LOGINBENEVOLE" NOT NULL ENABLE);
  ALTER TABLE "A_POUR_ROLE" MODIFY ("ID_PERSONNE" NOT NULL ENABLE);
  ALTER TABLE "A_POUR_ROLE" MODIFY ("ID_ROLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AJOUT_ARGENT
--------------------------------------------------------

  ALTER TABLE "AJOUT_ARGENT" ADD CONSTRAINT "AJOUT_ARGENT_PK" PRIMARY KEY ("ID_AJOUT");
  --ALTER TABLE "AJOUT_ARGENT" MODIFY ("ID_AJOUT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BENEVOLE
--------------------------------------------------------

  ALTER TABLE "BENEVOLE" ADD CONSTRAINT "BENEVOLE_PK" PRIMARY KEY ("ID_PERSONNE", "LOGINBENEVOLE");
  ALTER TABLE "BENEVOLE" MODIFY ("LOGINBENEVOLE" NOT NULL ENABLE);
  ALTER TABLE "BENEVOLE" MODIFY ("ID_PERSONNE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORIE
--------------------------------------------------------

  ALTER TABLE "CATEGORIE" ADD CONSTRAINT "CATEGORIE_PK" PRIMARY KEY ("ID_CATEGORIE");
  --ALTER TABLE "CATEGORIE" MODIFY ("ID_CATEGORIE" NOT NULL ENABLE);


--------------------------------------------------------
--  Constraints for Table CONSOMME
--------------------------------------------------------

  ALTER TABLE "CONSOMME" ADD CONSTRAINT "CONSOMME_PK" PRIMARY KEY ("ID_PERSONNE", "ID_ENFANT", "ID_PRODUIT");
  ALTER TABLE "CONSOMME" MODIFY ("ID_PRODUIT" NOT NULL ENABLE);
  ALTER TABLE "CONSOMME" MODIFY ("ID_ENFANT" NOT NULL ENABLE);
  ALTER TABLE "CONSOMME" MODIFY ("ID_PERSONNE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COURSE
--------------------------------------------------------

  --ALTER TABLE  "COURSE" MODIFY ("IDCOURSE" NOT NULL ENABLE);
  ALTER TABLE  "COURSE" MODIFY ("LOGINBENEVOLE" NOT NULL ENABLE);
  ALTER TABLE  "COURSE" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("IDCOURSE");
--------------------------------------------------------
--  Constraints for Table ENFANT
--------------------------------------------------------

  ALTER TABLE  "ENFANT" ADD CONSTRAINT "ENFANT_PK" PRIMARY KEY ("ID_ENFANT", "ID_PERSONNE");
 -- ALTER TABLE  "ENFANT" MODIFY ("ID_ENFANT" NOT NULL ENABLE);
  ALTER TABLE  "ENFANT" MODIFY ("ID_PERSONNE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EST_COMPOSE_DE
--------------------------------------------------------

  ALTER TABLE  "EST_COMPOSE_DE" ADD CONSTRAINT "EST_COMPOSE_DE_PK" PRIMARY KEY ("ID_PRODUIT_PRODUIT", "ID_PRODUIT");
  ALTER TABLE  "EST_COMPOSE_DE" MODIFY ("ID_PRODUIT" NOT NULL ENABLE);
  ALTER TABLE  "EST_COMPOSE_DE" MODIFY ("ID_PRODUIT_PRODUIT" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table PERSONNE
--------------------------------------------------------

  ALTER TABLE  "PERSONNE" ADD CONSTRAINT "PERSONNE_PK" PRIMARY KEY ("ID_PERSONNE");
 -- ALTER TABLE  "PERSONNE" MODIFY ("ID_PERSONNE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUIT
--------------------------------------------------------

  ALTER TABLE  "PRODUIT" ADD CONSTRAINT "PRODUIT_PK" PRIMARY KEY ("ID_PRODUIT");
  --ALTER TABLE  "PRODUIT" MODIFY ("ID_PRODUIT" NOT NULL ENABLE);
  ALTER TABLE  "PRODUIT" ADD CONSTRAINT "UNIQUELIBELLE" UNIQUE ("LIBELLEPRODUIT");
--------------------------------------------------------
--  Constraints for Table PRODUIT_COMPOSE
--------------------------------------------------------

  ALTER TABLE  "PRODUIT_COMPOSE" ADD CONSTRAINT "PRODUIT_COMPOSE_PK" PRIMARY KEY ("ID_PRODUIT");
  ALTER TABLE  "PRODUIT_COMPOSE" MODIFY ("ID_PRODUIT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUIT_SIMPLE
--------------------------------------------------------

  ALTER TABLE  "PRODUIT_SIMPLE" ADD CONSTRAINT "PRODUIT_SIMPLE_PK" PRIMARY KEY ("ID_PRODUIT");
  ALTER TABLE  "PRODUIT_SIMPLE" MODIFY ("ID_PRODUIT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROLE
--------------------------------------------------------

  ALTER TABLE  "ROLE" ADD CONSTRAINT "ROLE_PK" PRIMARY KEY ("ID_ROLE");
