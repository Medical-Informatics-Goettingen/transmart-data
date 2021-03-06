--
-- Type: SEQUENCE; Owner: DEAPP; Name: DE_TWO_RGN_JUNCTION_EVENT_SEQ
--
CREATE SEQUENCE  "DEAPP"."DE_TWO_RGN_JUNCTION_EVENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

--
-- Type: TABLE; Owner: DEAPP; Name: DE_TWO_REGION_JUNCTION_EVENT
--
 CREATE TABLE "DEAPP"."DE_TWO_REGION_JUNCTION_EVENT" 
  (	"TWO_REGION_JUNCTION_EVENT_ID" NUMBER NOT NULL ENABLE, 
"JUNCTION_ID" NUMBER, 
"EVENT_ID" NUMBER, 
"READS_SPAN" NUMBER(*,0), 
"READS_JUNCTION" NUMBER(*,0), 
"PAIRS_SPAN" NUMBER(*,0), 
"PAIRS_JUNCTION" NUMBER(*,0), 
"PAIRS_END" NUMBER(*,0), 
"READS_COUNTER" NUMBER(*,0), 
"BASE_FREQ" FLOAT(126), 
 CONSTRAINT "TWO_REGION_JUNCTION_EVENT_ID" PRIMARY KEY ("TWO_REGION_JUNCTION_EVENT_ID")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

--
-- Type: TRIGGER; Owner: DEAPP; Name: TRG_TWO_RGN_JUNCTION_EVENT_ID
--
  CREATE OR REPLACE TRIGGER "DEAPP"."TRG_TWO_RGN_JUNCTION_EVENT_ID" 
before insert on "DEAPP"."DE_TWO_REGION_JUNCTION_EVENT"
for each row begin
       	if inserting then
               	if :NEW."TWO_REGION_JUNCTION_EVENT_ID" is null then
                       	select DE_TWO_RGN_JUNCTION_EVENT_SEQ.nextval into :NEW."TWO_REGION_JUNCTION_EVENT_ID" from dual;
               	end if;
       	end if;
end;
/
ALTER TRIGGER "DEAPP"."TRG_TWO_RGN_JUNCTION_EVENT_ID" ENABLE;
 
