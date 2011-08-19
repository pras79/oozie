# please replace "OOZIEDB" to your schema name

 CREATE TABLE "OOZIEDB"."COORD_ACTIONS" 
   (	"ID" VARCHAR2(255) NOT NULL ENABLE, 
	"ACTION_NUMBER" NUMBER, 
	"ACTION_XML" CLOB, 
	"CONSOLE_URL" VARCHAR2(255), 
	"CREATED_CONF" CLOB, 
	"ERROR_CODE" VARCHAR2(255), 
	"ERROR_MESSAGE" VARCHAR2(255), 
	"EXTERNAL_STATUS" VARCHAR2(255), 
	"MISSING_DEPENDENCIES" CLOB, 
	"RUN_CONF" CLOB, 
	"TIME_OUT" NUMBER, 
	"TRACKER_URI" VARCHAR2(255), 
	"JOB_TYPE" VARCHAR2(255), 
	"BEAN_TYPE" VARCHAR2(31), 
	"CREATED_TIME" TIMESTAMP (6), 
	"EXTERNAL_ID" VARCHAR2(255), 
	"JOB_ID" VARCHAR2(255), 
	"LAST_MODIFIED_TIME" TIMESTAMP (6), 
	"NOMINAL_TIME" TIMESTAMP (6), 
	"PENDING" NUMBER, 
	"RERUN_TIME" TIMESTAMP (6), 
	"SLA_XML" CLOB, 
	"STATUS" VARCHAR2(255), 
	 PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB" 
 LOB ("ACTION_XML") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("CREATED_CONF") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("MISSING_DEPENDENCIES") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("RUN_CONF") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("SLA_XML") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

  CREATE TABLE "OOZIEDB"."COORD_JOBS" 
   (	"ID" VARCHAR2(255) NOT NULL ENABLE, 
	"APP_NAME" VARCHAR2(255), 
	"APP_PATH" VARCHAR2(255), 
	"BUNDLE_ID" VARCHAR2(255), 
	"CONCURRENCY" NUMBER, 
	"CONF" CLOB, 
	"EXTERNAL_ID" VARCHAR2(255), 
	"FREQUENCY" NUMBER, 
	"GROUP_NAME" VARCHAR2(255), 
	"LAST_ACTION_NUMBER" NUMBER, 
	"TIME_OUT" NUMBER, 
	"TIME_ZONE" VARCHAR2(255), 
	"USER_NAME" VARCHAR2(255), 
	"BEAN_TYPE" VARCHAR2(31), 
	"AUTH_TOKEN" CLOB, 
	"CREATED_TIME" TIMESTAMP (6), 
	"END_TIME" TIMESTAMP (6), 
	"EXECUTION" VARCHAR2(255), 
	"JOB_XML" CLOB, 
	"LAST_ACTION" TIMESTAMP (6), 
	"LAST_MODIFIED_TIME" TIMESTAMP (6), 
	"NEXT_MATD_TIME" TIMESTAMP (6), 
	"ORIG_JOB_XML" CLOB, 
	"PAUSE_TIME" TIMESTAMP (6), 
	"PENDING" NUMBER, 
	"SLA_XML" CLOB, 
	"START_TIME" TIMESTAMP (6), 
	"STATUS" VARCHAR2(255), 
	"SUSPENDED_TIME" TIMESTAMP (6), 
	"TIME_UNIT" VARCHAR2(255), 
	"MAT_THROTTLING" NUMBER, 
	"DONE_MATERIALIZATION" NUMBER, 
	"APP_NAMESPACE" VARCHAR2(255), 
	 PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB" 
 LOB ("CONF") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("AUTH_TOKEN") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("JOB_XML") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("ORIG_JOB_XML") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("SLA_XML") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

  CREATE TABLE "OOZIEDB"."SLA_EVENTS" 
   (	"EVENT_ID" NUMBER NOT NULL ENABLE, 
	"ALERT_CONTACT" VARCHAR2(255), 
	"ALERT_FREQUENCY" VARCHAR2(255), 
	"ALERT_PERCENTAGE" VARCHAR2(255), 
	"APP_NAME" VARCHAR2(255), 
	"DEV_CONTACT" VARCHAR2(255), 
	"GROUP_NAME" VARCHAR2(255), 
	"JOB_DATA" CLOB, 
	"NOTIFICATION_MSG" CLOB, 
	"PARENT_CLIENT_ID" VARCHAR2(255), 
	"PARENT_SLA_ID" VARCHAR2(255), 
	"QA_CONTACT" VARCHAR2(255), 
	"SE_CONTACT" VARCHAR2(255), 
	"SLA_ID" VARCHAR2(255), 
	"UPSTREAM_APPS" CLOB, 
	"USER_NAME" VARCHAR2(255), 
	"BEAN_TYPE" VARCHAR2(31), 
	"APP_TYPE" VARCHAR2(255), 
	"EVENT_TYPE" VARCHAR2(255), 
	"EXPECTED_END" TIMESTAMP (6), 
	"EXPECTED_START" TIMESTAMP (6), 
	"JOB_STATUS" VARCHAR2(255), 
	"STATUS_TIMESTAMP" TIMESTAMP (6), 
	 PRIMARY KEY ("EVENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB" 
 LOB ("JOB_DATA") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("NOTIFICATION_MSG") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("UPSTREAM_APPS") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

  CREATE TABLE "OOZIEDB"."WF_ACTIONS" 
   (	"ID" VARCHAR2(255) NOT NULL ENABLE, 
	"CONF" CLOB, 
	"CONSOLE_URL" VARCHAR2(255), 
	"CRED" VARCHAR2(255), 
	"DATA" CLOB, 
	"ERROR_CODE" VARCHAR2(255), 
	"ERROR_MESSAGE" CLOB, 
	"EXTERNAL_ID" VARCHAR2(255), 
	"EXTERNAL_STATUS" VARCHAR2(255), 
	"NAME" VARCHAR2(255), 
	"RETRIES" NUMBER, 
	"TRACKER_URI" VARCHAR2(255), 
	"TRANSITION" VARCHAR2(255), 
	"TYPE" VARCHAR2(255), 
	"BEAN_TYPE" VARCHAR2(31), 
	"END_TIME" TIMESTAMP (6), 
	"EXECUTION_PATH" VARCHAR2(255), 
	"LAST_CHECK_TIME" TIMESTAMP (6), 
	"LOG_TOKEN" VARCHAR2(255), 
	"PENDING" NUMBER, 
	"PENDING_AGE" TIMESTAMP (6), 
	"SIGNAL_VALUE" VARCHAR2(255), 
	"SLA_XML" CLOB, 
	"START_TIME" TIMESTAMP (6), 
	"STATUS" VARCHAR2(255), 
	"WF_ID" VARCHAR2(255), 
	"USER_RETRY_COUNT" NUMBER,
	"USER_RETRY_MAX" NUMBER,
	"USER_RETRY_INTERVAL" NUMBER,
	 PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB" 
 LOB ("CONF") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("DATA") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("ERROR_MESSAGE") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("SLA_XML") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

  CREATE TABLE "OOZIEDB"."WF_JOBS" 
   (	"ID" VARCHAR2(255) NOT NULL ENABLE, 
	"APP_NAME" VARCHAR2(255), 
	"APP_PATH" VARCHAR2(255), 
	"CONF" CLOB, 
	"GROUP_NAME" VARCHAR2(255), 
	"PARENTID" VARCHAR2(255), 
	"RUN" NUMBER, 
	"USER_NAME" VARCHAR2(255), 
	"BEAN_TYPE" VARCHAR2(31), 
	"AUTH_TOKEN" CLOB, 
	"CREATED_TIME" TIMESTAMP (6), 
	"END_TIME" TIMESTAMP (6), 
	"EXTERNAL_ID" VARCHAR2(255), 
	"LAST_MODIFIED_TIME" TIMESTAMP (6), 
	"LOG_TOKEN" VARCHAR2(255), 
	"PROTO_ACTION_CONF" CLOB, 
	"SLA_XML" CLOB, 
	"START_TIME" TIMESTAMP (6), 
	"STATUS" VARCHAR2(255), 
	"WF_INSTANCE" BLOB, 
	"PARENT_ID" VARCHAR2(255), 
	 PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB" 
 LOB ("CONF") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("AUTH_TOKEN") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("PROTO_ACTION_CONF") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("SLA_XML") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("WF_INSTANCE") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

  CREATE TABLE "OOZIEDB"."BUNDLE_JOBS" 
   (	"ID" VARCHAR2(255) NOT NULL ENABLE, 
	"APP_NAME" VARCHAR2(255), 
	"APP_PATH" VARCHAR2(255), 
	"CONF" CLOB, 
	"EXTERNAL_ID" VARCHAR2(255), 
	"GROUP_NAME" VARCHAR2(255), 
	"TIME_OUT" NUMBER, 
	"USER_NAME" VARCHAR2(255), 
	"BEAN_TYPE" VARCHAR2(31), 
	"AUTH_TOKEN" CLOB, 
	"CREATED_TIME" TIMESTAMP (6), 
	"END_TIME" TIMESTAMP (6), 
	"JOB_XML" CLOB, 
	"KICKOFF_TIME" TIMESTAMP (6), 
	"LAST_MODIFIED_TIME" TIMESTAMP (6), 
	"ORIG_JOB_XML" CLOB, 
	"PAUSE_TIME" TIMESTAMP (6), 
	"PENDING" NUMBER, 
	"START_TIME" TIMESTAMP (6), 
	"STATUS" VARCHAR2(255), 
	"SUSPENDED_TIME" TIMESTAMP (6), 
	"TIME_UNIT" VARCHAR2(255), 
	 PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB" 
 LOB ("CONF") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("AUTH_TOKEN") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("JOB_XML") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("ORIG_JOB_XML") STORE AS BASICFILE (
  TABLESPACE "OOZIEDB" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

  CREATE TABLE "OOZIEDB"."BUNDLE_ACTIONS" 
   (	"BUNDLE_ACTION_ID" VARCHAR2(255) NOT NULL ENABLE, 
	"BUNDLE_ID" VARCHAR2(255), 
	"COORD_ID" VARCHAR2(255), 
	"COORD_NAME" VARCHAR2(255), 
	"CRITICAL" NUMBER, 
	"LAST_MODIFIED_TIME" TIMESTAMP (6), 
	"PENDING" NUMBER, 
	"STATUS" VARCHAR2(255), 
	"BEAN_TYPE" VARCHAR2(31), 
	 PRIMARY KEY ("BUNDLE_ACTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "OOZIEDB" ;

  CREATE TABLE "OOZIEDB"."VALIDATE_CONN" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"DUMMY" NUMBER, 
	 PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "OOZIEDB"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "OOZIEDB" ;

  CREATE TABLE "OOZIEDB"."OPENJPA_SEQUENCE_TABLE" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"SEQUENCE_VALUE" NUMBER, 
	 PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "OOZIEDB"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "OOZIEDB";
  
  CREATE SEQUENCE  "OOZIEDB"."EVENT_SEQ"
  MINVALUE 1 MAXVALUE 9999999999999999999999999999
  INCREMENT BY 1 START WITH 351 CACHE 50 NOORDER  NOCYCLE;
