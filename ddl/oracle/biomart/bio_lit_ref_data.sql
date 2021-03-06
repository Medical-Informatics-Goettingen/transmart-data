--
-- Type: TABLE; Owner: BIOMART; Name: BIO_LIT_REF_DATA
--
 CREATE TABLE "BIOMART"."BIO_LIT_REF_DATA" 
  (	"BIO_LIT_REF_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"ETL_ID" NVARCHAR2(50), 
"COMPONENT" NVARCHAR2(100), 
"COMPONENT_CLASS" NVARCHAR2(250), 
"GENE_ID" NVARCHAR2(50), 
"MOLECULE_TYPE" NVARCHAR2(50), 
"VARIANT" NVARCHAR2(250), 
"REFERENCE_TYPE" NVARCHAR2(50), 
"REFERENCE_ID" NVARCHAR2(250), 
"REFERENCE_TITLE" NVARCHAR2(2000), 
"BACK_REFERENCES" NVARCHAR2(1000), 
"STUDY_TYPE" NVARCHAR2(250), 
"DISEASE" NVARCHAR2(250), 
"DISEASE_ICD10" NVARCHAR2(250), 
"DISEASE_MESH" NVARCHAR2(250), 
"DISEASE_SITE" NVARCHAR2(250), 
"DISEASE_STAGE" NVARCHAR2(250), 
"DISEASE_GRADE" NVARCHAR2(250), 
"DISEASE_TYPES" NVARCHAR2(250), 
"DISEASE_DESCRIPTION" NVARCHAR2(1000), 
"PHYSIOLOGY" NVARCHAR2(250), 
"STAT_CLINICAL" NVARCHAR2(500), 
"STAT_CLINICAL_CORRELATION" NVARCHAR2(250), 
"STAT_TESTS" NVARCHAR2(500), 
"STAT_COEFFICIENT" NVARCHAR2(500), 
"STAT_P_VALUE" NVARCHAR2(100), 
"STAT_DESCRIPTION" NVARCHAR2(1000), 
 CONSTRAINT "BIO_LIT_REF_DATA_PK" PRIMARY KEY ("BIO_LIT_REF_DATA_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_LIT_REF_DATA_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_LIT_REF_DATA_ID" 
before insert on "BIO_LIT_REF_DATA"
for each row
begin
     if inserting then
       if :NEW."BIO_LIT_REF_DATA_ID" is null then
          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_LIT_REF_DATA_ID" from dual;
       end if;
    end if; end;







/
ALTER TRIGGER "BIOMART"."TRG_BIO_LIT_REF_DATA_ID" ENABLE;
 
