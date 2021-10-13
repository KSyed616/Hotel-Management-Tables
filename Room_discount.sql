--------------------------------------------------------
--  File created - Thursday-October-07-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ROOM_DISCOUNT
--------------------------------------------------------

  CREATE TABLE "K9SYED"."ROOM_DISCOUNT" 
   (	"DISCOUNT_ID" NUMBER, 
	"DISCOUNT_TYPE" VARCHAR2(255 BYTE), 
	"DISCOUNT_AMOUNT" NUMBER, 
	"TYPE_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Index ROOM_DISCOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "K9SYED"."ROOM_DISCOUNT_PK" ON "K9SYED"."ROOM_DISCOUNT" ("DISCOUNT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  Constraints for Table ROOM_DISCOUNT
--------------------------------------------------------

  ALTER TABLE "K9SYED"."ROOM_DISCOUNT" ADD CONSTRAINT "ROOM_DISCOUNT_PK" PRIMARY KEY ("DISCOUNT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE"  ENABLE;
 
  ALTER TABLE "K9SYED"."ROOM_DISCOUNT" MODIFY ("DISCOUNT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."ROOM_DISCOUNT" MODIFY ("DISCOUNT_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."ROOM_DISCOUNT" MODIFY ("DISCOUNT_AMOUNT" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."ROOM_DISCOUNT" MODIFY ("TYPE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ROOM_DISCOUNT
--------------------------------------------------------

  ALTER TABLE "K9SYED"."ROOM_DISCOUNT" ADD CONSTRAINT "ROOM_DISCOUNT_FK1" FOREIGN KEY ("TYPE_ID")
	  REFERENCES "K9SYED"."ROOM_TYPE" ("TYPE_ID") ENABLE;
