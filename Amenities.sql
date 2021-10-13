--------------------------------------------------------
--  File created - Wednesday-October-06-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AMENITIES
--------------------------------------------------------

  CREATE TABLE "K9SYED"."AMENITIES" 
   (	"AMENITY_ID" NUMBER(*,0), 
	"AMENITY_NAME" VARCHAR2(225 BYTE), 
	"AMENITY_DESCRIPTION" VARCHAR2(255 BYTE), 
	"AMENITY_PRICE" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Index AMENITIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "K9SYED"."AMENITIES_PK" ON "K9SYED"."AMENITIES" ("AMENITY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  Constraints for Table AMENITIES
--------------------------------------------------------

  ALTER TABLE "K9SYED"."AMENITIES" ADD CONSTRAINT "AMENITIES_PK" PRIMARY KEY ("AMENITY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE"  ENABLE;
 
  ALTER TABLE "K9SYED"."AMENITIES" MODIFY ("AMENITY_ID" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."AMENITIES" MODIFY ("AMENITY_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."AMENITIES" MODIFY ("AMENITY_DESCRIPTION" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."AMENITIES" MODIFY ("AMENITY_PRICE" NOT NULL ENABLE);
