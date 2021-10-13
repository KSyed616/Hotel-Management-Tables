--------------------------------------------------------
--  File created - Thursday-October-07-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "K9SYED"."DEPARTMENT" 
   (	"DEPT_ID" NUMBER(*,0), 
	"DEPT_NAME" VARCHAR2(225 BYTE), 
	"DEPT_NUM_OF_EMPLOYEES" NUMBER(*,0), 
	"DEPT_DESCRIPTION" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "K9SYED"."TABLE1_PK" ON "K9SYED"."DEPARTMENT" ("DEPT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "K9SYED"."DEPARTMENT" MODIFY ("DEPT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."DEPARTMENT" MODIFY ("DEPT_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."DEPARTMENT" MODIFY ("DEPT_NUM_OF_EMPLOYEES" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."DEPARTMENT" MODIFY ("DEPT_DESCRIPTION" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."DEPARTMENT" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("DEPT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE"  ENABLE;
