--------------------------------------------------------
--  File created - Thursday-October-07-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table HOTEL_ROOMS
--------------------------------------------------------

  CREATE TABLE "K9SYED"."HOTEL_ROOMS" 
   (	"ROOM_ID" NUMBER(*,0), 
	"ROOM_NUM" NUMBER(*,0), 
	"BOOKED_CONFIRM" VARCHAR2(20 BYTE), 
	"ROOM_TYPE_ID" NUMBER, 
	"HOTEL_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  DDL for Index HOTEL_ROOMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "K9SYED"."HOTEL_ROOMS_PK" ON "K9SYED"."HOTEL_ROOMS" ("ROOM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE" ;
--------------------------------------------------------
--  Constraints for Table HOTEL_ROOMS
--------------------------------------------------------

  ALTER TABLE "K9SYED"."HOTEL_ROOMS" ADD CONSTRAINT "HOTEL_ROOMS_PK" PRIMARY KEY ("ROOM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "DBCOURSE"  ENABLE;
 
  ALTER TABLE "K9SYED"."HOTEL_ROOMS" MODIFY ("ROOM_ID" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."HOTEL_ROOMS" MODIFY ("ROOM_NUM" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."HOTEL_ROOMS" MODIFY ("BOOKED_CONFIRM" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."HOTEL_ROOMS" MODIFY ("ROOM_TYPE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "K9SYED"."HOTEL_ROOMS" MODIFY ("HOTEL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table HOTEL_ROOMS
--------------------------------------------------------

  ALTER TABLE "K9SYED"."HOTEL_ROOMS" ADD CONSTRAINT "HOTEL_ROOMS_FK1" FOREIGN KEY ("ROOM_ID")
	  REFERENCES "K9SYED"."ROOM_TYPE" ("TYPE_ID") ENABLE;
      
  ALTER TABLE "K9SYED"."HOTEL_ROOMS" ADD CONSTRAINT "HOTEL_ROOMS_FK2" FOREIGN KEY ("HOTEL_ID")
	  REFERENCES "K9SYED"."HOTELS" ("HOTEL_ID") ENABLE;
