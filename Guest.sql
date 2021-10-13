--------------------------------------------------------
--  File created - Wednesday-October-06-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GUEST
--------------------------------------------------------

  CREATE TABLE "K9SYED"."GUEST" 
   (	"GUEST_ID" NUMBER(*,0), 
	"GUEST_NAME" VARCHAR2(255 BYTE), 
	"GUEST_CONTACT_NUMBER" NUMBER(*,0), 
	"GUEST_PAYMENT_INFO" VARCHAR2(225 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Index GUEST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "K9SYED"."GUEST_PK" ON "K9SYED"."GUEST" ("GUEST_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  Constraints for Table GUEST
--------------------------------------------------------

  ALTER TABLE "K9SYED"."GUEST" ADD CONSTRAINT "GUEST_PK" PRIMARY KEY ("GUEST_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE"  ENABLE;
 
  ALTER TABLE "K9SYED"."GUEST" MODIFY ("GUEST_ID" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."GUEST" MODIFY ("GUEST_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."GUEST" MODIFY ("GUEST_CONTACT_NUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."GUEST" MODIFY ("GUEST_PAYMENT_INFO" NOT NULL ENABLE);
