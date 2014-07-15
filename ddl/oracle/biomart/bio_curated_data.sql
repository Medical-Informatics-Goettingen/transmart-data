--
-- Type: TABLE; Owner: BIOMART; Name: BIO_CURATED_DATA
--
 CREATE TABLE "BIOMART"."BIO_CURATED_DATA" 
  (	"STATEMENT" NCLOB, 
"STATEMENT_STATUS" NVARCHAR2(200), 
"BIO_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_CURATION_DATASET_ID" NUMBER(18,0) NOT NULL ENABLE, 
"REFERENCE_ID" NUMBER(18,0), 
"DATA_TYPE" NVARCHAR2(200), 
 CONSTRAINT "BIO_EXTERNALANALYSIS_FACT_PK" PRIMARY KEY ("BIO_DATA_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" 
LOB ("STATEMENT") STORE AS BASICFILE (
 TABLESPACE "TRANSMART" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE LOGGING ) ;

--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_EXT_ANALYS_EXT_ANL_FK
--
ALTER TABLE "BIOMART"."BIO_CURATED_DATA" ADD CONSTRAINT "BIO_EXT_ANALYS_EXT_ANL_FK" FOREIGN KEY ("BIO_CURATION_DATASET_ID")
 REFERENCES "BIOMART"."BIO_CURATION_DATASET" ("BIO_CURATION_DATASET_ID") ENABLE;

