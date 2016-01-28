DELETE FROM METL_FLOW_STEP_LINK WHERE SOURCE_STEP_ID IN (SELECT ID FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' ));
DELETE FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' );
DELETE FROM METL_FLOW_PARAMETER WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' );
DELETE FROM METL_FLOW WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' ;
DELETE FROM METL_COMPONENT_ATTRIBUTE_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' );
DELETE FROM METL_COMPONENT_ENTITY_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' );
DELETE FROM METL_COMPONENT_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' );
DELETE FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' ;
DELETE FROM METL_RESOURCE_SETTING WHERE RESOURCE_ID IN (SELECT ID FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' );
DELETE FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' ;
DELETE FROM METL_MODEL_ATTRIBUTE WHERE ENTITY_ID IN (SELECT ID FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' ));
DELETE FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' );
DELETE FROM METL_MODEL WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2' ;
DELETE FROM METL_FOLDER WHERE PROJECT_VERSION_ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2';
DELETE FROM METL_PROJECT_VERSION WHERE ID='7c24f46b-a40a-45cb-8e06-e2a65f404cf2';
DELETE FROM METL_PROJECT WHERE ID='84f8fe12-cb73-48f9-b5dc-66df8fe36657';
insert into METL_PROJECT (ID, NAME, DESCRIPTION, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('84f8fe12-cb73-48f9-b5dc-66df8fe36657','DataDiff Flow Test',null,0,{ts '2015-12-19 10:46:56.565'},null,null,{ts '2015-12-19 10:47:10.262'});
insert into METL_PROJECT_VERSION (ID, VERSION_LABEL, PROJECT_ID, ORIG_VERSION_ID, DESCRIPTION, LOCKED, ARCHIVED, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7c24f46b-a40a-45cb-8e06-e2a65f404cf2','1.0','84f8fe12-cb73-48f9-b5dc-66df8fe36657',null,'',0,0,0,{ts '2015-12-19 10:46:56.565'},null,null,{ts '2015-12-19 10:47:10.262'});
insert into METL_MODEL (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, SHARED, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b5695ca7-8bbc-48ea-b641-57808d63f685','9ab5dca3-b97b-4198-a0b8-b1ffe41abbc4','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'model2',0,null,{ts '2016-01-28 11:18:31.304'},null,null,{ts '2016-01-28 11:18:33.701'});
insert into METL_MODEL (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, SHARED, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('f0c9c897-6444-4951-bbf4-f26dac6562d2','c859048a-c6d2-483a-918b-0b6ae5c51553','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'model1',0,null,{ts '2015-12-19 10:56:18.246'},null,null,{ts '2015-12-19 10:56:22.346'});
insert into METL_MODEL_ENTITY (ID, MODEL_ID, NAME, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('cc4016f9-607a-43c8-a8a9-e5277bef869e','f0c9c897-6444-4951-bbf4-f26dac6562d2','TABLE1',{ts '2015-12-19 10:56:26.241'},null,null,{ts '2015-12-19 11:31:11.944'});
insert into METL_MODEL_ENTITY (ID, MODEL_ID, NAME, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d5f5516e-d836-47bb-8b25-767f89021644','b5695ca7-8bbc-48ea-b641-57808d63f685','TABLE2',{ts '2016-01-28 11:18:37.107'},null,null,{ts '2016-01-28 11:20:23.102'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5178ff9d-5ca1-4d61-a156-717793d62baa','cc4016f9-607a-43c8-a8a9-e5277bef869e','ID','VARCHAR',null,1,{ts '2015-12-19 10:56:33.472'},null,null,{ts '2015-12-19 11:31:17.725'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5ace80c1-b67a-42ea-8d1d-e035ba104644','d5f5516e-d836-47bb-8b25-767f89021644','COL3','VARCHAR',null,0,{ts '2016-01-28 11:18:49.323'},null,null,{ts '2016-01-28 11:20:36.889'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('61842601-9cbc-42af-8e06-2a50ac39e86e','cc4016f9-607a-43c8-a8a9-e5277bef869e','COL_C','VARCHAR',null,0,{ts '2015-12-19 10:57:31.064'},null,null,{ts '2015-12-19 11:31:28.187'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('77a175ee-1488-4897-98a8-525a5b2cf77d','cc4016f9-607a-43c8-a8a9-e5277bef869e','COL_A','VARCHAR',null,0,{ts '2015-12-19 10:57:16.162'},null,null,{ts '2015-12-19 11:31:21.277'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7b180bc7-f6f5-4bf3-ba34-dab7028209bd','d5f5516e-d836-47bb-8b25-767f89021644','PK_COL2','VARCHAR',null,1,{ts '2016-01-28 11:18:44.345'},null,null,{ts '2016-01-28 12:13:15.583'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a564bf2c-5be2-48e7-a0b4-5e9bb7768443','cc4016f9-607a-43c8-a8a9-e5277bef869e','COL_B','VARCHAR',null,0,{ts '2015-12-19 10:57:24.134'},null,null,{ts '2015-12-19 11:31:24.644'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c45e707f-5493-437d-8260-4f3d77795e4e','d5f5516e-d836-47bb-8b25-767f89021644','PK_COL1','VARCHAR',null,1,{ts '2016-01-28 11:18:40.112'},null,null,{ts '2016-01-28 12:13:12.765'});
insert into METL_RESOURCE (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('67b7484d-ebe9-4de4-8818-53a5ede68235','36f587ba-dcc6-4f1a-b70e-b170c8e358d3','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'old_database','Database',null,{ts '2015-12-19 10:47:37.446'},null,null,{ts '2015-12-19 11:00:05.992'});
insert into METL_RESOURCE (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('dcdf1255-3e14-447e-9283-9054bb645825','23dd8dc4-fd0b-4122-adc8-dd71327fd898','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'new_database','Database',null,{ts '2015-12-19 11:00:13.840'},null,null,{ts '2015-12-19 11:00:16.714'});
insert into METL_RESOURCE_SETTING (RESOURCE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('67b7484d-ebe9-4de4-8818-53a5ede68235','db.url','jdbc:h2:mem:olddb',{ts '2015-12-19 11:15:35.254'},null,null,{ts '2015-12-19 11:15:35.254'});
insert into METL_RESOURCE_SETTING (RESOURCE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('dcdf1255-3e14-447e-9283-9054bb645825','db.url','jdbc:h2:mem:newdb',{ts '2015-12-19 11:15:22.331'},null,null,{ts '2015-12-19 11:15:28.734'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('05c697e8-98da-4a7b-82ba-ba45d7e08ca7','dbd98926-fdb7-4098-a9b8-f93683f8958d','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'Assert 1','Assert',null,0,'b5695ca7-8bbc-48ea-b641-57808d63f685',null,null,{ts '2016-01-28 12:00:04.087'},null,null,{ts '2016-01-28 12:00:26.208'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2dd2ff6c-bb0d-448a-b403-5f3826045ac1','91950fd6-310b-4149-9119-e68a64597132','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'Old Reader','RDBMS Reader',null,0,null,'f0c9c897-6444-4951-bbf4-f26dac6562d2','67b7484d-ebe9-4de4-8818-53a5ede68235',{ts '2015-12-19 11:05:04.945'},null,null,{ts '2015-12-19 23:49:50.245'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('64ded4b8-2c4e-4002-bb90-2c03acd1e244','56deac65-1864-4057-a2db-4a8cc3d81a67','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'Assert 1','Assert',null,0,'f0c9c897-6444-4951-bbf4-f26dac6562d2',null,null,{ts '2015-12-19 23:49:45.573'},null,null,{ts '2016-01-22 17:23:14.062'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7b64d2c8-b473-4d61-93a1-9b10c5700944','b6745814-937b-4e12-8bc1-c63f8b0b2ea0','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'DataDiff 1','DataDiff',null,0,'b5695ca7-8bbc-48ea-b641-57808d63f685','b5695ca7-8bbc-48ea-b641-57808d63f685',null,{ts '2016-01-28 11:25:12.935'},null,null,{ts '2016-01-28 12:16:35.991'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('95f153df-3bf1-4b47-95e4-6373cca206fe','8524d373-36c0-4297-ae22-8ab2030d16f0','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'Create Old Database','Sql Executor',null,0,null,null,'67b7484d-ebe9-4de4-8818-53a5ede68235',{ts '2016-01-28 11:19:11.440'},null,null,{ts '2016-01-28 12:00:06.965'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a65e7073-c8c3-4cfc-868f-030f12b629ed','5b1a7b8d-2344-4a76-bf46-2c0b16281a5b','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'Old Data Reader','RDBMS Reader',null,0,null,'b5695ca7-8bbc-48ea-b641-57808d63f685','67b7484d-ebe9-4de4-8818-53a5ede68235',{ts '2016-01-28 11:24:01.262'},null,null,{ts '2016-01-28 12:00:06.963'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','e9473b31-c5ee-4148-bee5-121f271fffed','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'DataDiff 1','DataDiff',null,0,'f0c9c897-6444-4951-bbf4-f26dac6562d2','f0c9c897-6444-4951-bbf4-f26dac6562d2',null,{ts '2015-12-19 11:06:28.858'},null,null,{ts '2016-01-22 17:25:38.706'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ac7da994-f331-476b-91ad-8fbce0bece89','375e11b4-f16d-451f-8248-cd1402f26b22','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'New Reader','RDBMS Reader',null,0,null,'f0c9c897-6444-4951-bbf4-f26dac6562d2','dcdf1255-3e14-447e-9283-9054bb645825',{ts '2015-12-19 11:05:27.926'},null,null,{ts '2015-12-19 23:49:50.252'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b446b0f5-8428-43ed-88f8-8bec94d7fc6e','dcc43dbc-dafd-4d79-8289-6385f1e5afbd','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'Create Old Database','Sql Executor',null,0,null,null,'67b7484d-ebe9-4de4-8818-53a5ede68235',{ts '2015-12-19 11:01:07.240'},null,null,{ts '2015-12-19 23:49:50.247'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c038e559-23c2-481a-bedd-3045b8bb51d3','3fe714fd-4860-42af-b396-1da84cce6353','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'New Data Reader','RDBMS Reader',null,0,null,'b5695ca7-8bbc-48ea-b641-57808d63f685','dcdf1255-3e14-447e-9283-9054bb645825',{ts '2016-01-28 11:24:29.292'},null,null,{ts '2016-01-28 12:00:06.970'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d4ace379-120f-4b8a-bb5d-e54f1cb09b6f','8b007795-f732-4119-af0c-643d4d76fb37','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'Create New Database','Sql Executor',null,0,null,null,'dcdf1255-3e14-447e-9283-9054bb645825',{ts '2015-12-19 11:03:48.811'},null,null,{ts '2015-12-21 07:55:37.946'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('fa299a98-861c-40e6-a716-ec65f0ee6442','ebb5e700-943b-4114-b599-56ba71fcb8d3','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'Create New Database','Sql Executor',null,0,null,null,'dcdf1255-3e14-447e-9283-9054bb645825',{ts '2016-01-28 11:22:32.996'},null,null,{ts '2016-01-28 12:00:06.966'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('03e38955-9597-457b-b242-f564007d49b1','ac7da994-f331-476b-91ad-8fbce0bece89','sql','select * from table1;',{ts '2015-12-19 11:06:09.762'},null,null,{ts '2016-01-22 16:34:50.157'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0ddf378b-2271-4f90-b0d3-486e9918be4b','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','logOutput','true',{ts '2016-01-22 17:26:45.879'},null,null,{ts '2016-01-22 17:26:45.879'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0ee58a2b-8d78-4735-b9f8-95e99aae4a52','7b64d2c8-b473-4d61-93a1-9b10c5700944','source.2','ba70395a-b94d-4dad-af15-a0e26eeac517',{ts '2016-01-28 11:25:31.153'},null,null,{ts '2016-01-28 12:16:35.992'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('191fd867-4ae2-411f-983d-d447eb46d971','b446b0f5-8428-43ed-88f8-8bec94d7fc6e','sql','drop table if exists TABLE1;
create table TABLE1 (ID integer, COL_A varchar(20), COL_B varchar(20), COL_C varchar(20), primary key (ID));
insert into table1 values (1,''a'',''b'',''c'');
insert into table1 values (2,''d'',''e'',''f'');
insert into table1 values (3,''g'',''h'',''i'');
insert into table1 values (4,''j'',null,''l'');
insert into table1 values (5,''m'',''n'',''o'');
',{ts '2015-12-19 11:01:25.295'},null,null,{ts '2016-01-28 11:19:31.002'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1b267a0e-d2da-4ef8-892c-f380e95857e3','64ded4b8-2c4e-4002-bb90-2c03acd1e244','expected.entity.messages.count','3',{ts '2015-12-19 23:50:01.159'},null,null,{ts '2016-01-22 18:22:24.507'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('22bea6a1-1def-4b6d-9061-4f3fb6bfc9ba','64ded4b8-2c4e-4002-bb90-2c03acd1e244','expected.control.messages.count','2',{ts '2015-12-19 23:50:04.062'},null,null,{ts '2016-01-22 17:23:14.063'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('3febfdd3-ea34-42ff-8146-5b8652c8e713','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','in.memory.compare','false',{ts '2015-12-19 11:23:51.446'},null,null,{ts '2016-01-22 18:20:09.783'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('41cfd57a-f643-42f6-831b-6f354574fcdb','c038e559-23c2-481a-bedd-3045b8bb51d3','sql','select * from table2;
',{ts '2016-01-28 11:24:47.974'},null,null,{ts '2016-01-28 12:00:06.971'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('487ce98a-d395-429e-ba15-795553140111','05c697e8-98da-4a7b-82ba-ba45d7e08ca7','expected.control.messages.count','1',{ts '2016-01-28 12:00:45.146'},null,null,{ts '2016-01-28 12:00:45.147'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('49b14542-b95b-48af-a029-3638e438f60a','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','source.2','65819b86-8bc7-47c9-b3d2-f9430678fceb',{ts '2015-12-19 11:06:46.730'},null,null,{ts '2016-01-22 17:25:38.711'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('4d819ad7-eb23-49e5-9eba-72d477431f4d','a65e7073-c8c3-4cfc-868f-030f12b629ed','run.when','PER MESSAGE',{ts '2016-01-28 11:24:22.908'},null,null,{ts '2016-01-28 12:00:06.964'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('503e937b-4167-418b-b043-43f34a626228','b446b0f5-8428-43ed-88f8-8bec94d7fc6e','run.when','PER UNIT OF WORK',{ts '2015-12-19 11:03:47.266'},null,null,{ts '2015-12-19 23:49:50.247'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('574c65e1-b3c0-4dbb-9de9-6f23a6c6dee0','d4ace379-120f-4b8a-bb5d-e54f1cb09b6f','sql','drop table if exists TABLE1;
create table TABLE1 (id integer, COL_A varchar(20), COL_B varchar(20), COL_C varchar(20), primary key (ID));
insert into table1 values (1,''a'',''b'',''c'');
insert into table1 values (2,''x'',''e'',''f'');
insert into table1 values (3,''g'',''h'',''x'');
insert into table1 values (4,''j'',''k'',''l'');
insert into table1 values (5,''m'',''null'',''o'');',{ts '2015-12-19 11:04:51.436'},null,null,{ts '2016-01-22 18:25:43.464'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('60f69b33-1d13-4b37-adff-48d123236eed','c038e559-23c2-481a-bedd-3045b8bb51d3','run.when','PER MESSAGE',{ts '2016-01-28 11:25:00.050'},null,null,{ts '2016-01-28 12:00:06.971'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('657629aa-6c2f-4019-94ff-06d1e731b7ba','fa299a98-861c-40e6-a716-ec65f0ee6442','run.when','PER UNIT OF WORK',{ts '2016-01-28 11:22:54.661'},null,null,{ts '2016-01-28 12:00:06.967'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('766a01c7-d349-4fd2-bafb-a94a077feb49','7b64d2c8-b473-4d61-93a1-9b10c5700944','source.1','a503bef8-c7e7-4422-a3ee-1339689d12a5',{ts '2016-01-28 11:25:29.555'},null,null,{ts '2016-01-28 12:16:35.992'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7d044d44-74c8-4753-8e32-2308425f1bb8','a65e7073-c8c3-4cfc-868f-030f12b629ed','sql','select * from table2;',{ts '2016-01-28 11:24:17.503'},null,null,{ts '2016-01-28 12:00:06.964'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8339317f-8699-4013-a2a0-776f2f089a25','d4ace379-120f-4b8a-bb5d-e54f1cb09b6f','run.when','PER UNIT OF WORK',{ts '2015-12-19 11:04:08.684'},null,null,{ts '2015-12-21 07:55:37.949'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8463995a-940c-4c21-82ea-d1091946edfa','95f153df-3bf1-4b47-95e4-6373cca206fe','sql','drop table if exists TABLE2;
create table TABLE2 (PK_COL1 varchar(20), PK_COL2 varchar(20), COL3 varchar(20), primary key (PK_COL1, PK_COL2));
insert into TABLE2 values (''a'',''b'',''c'');
insert into TABLE2 values (''d'',''e'',''x'');
insert into TABLE2 values (''g'',''h'',''i'');
insert into TABLE2 values (''1'',''2'',''3'')',{ts '2016-01-28 11:22:02.468'},null,null,{ts '2016-01-28 12:00:06.966'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9e2bd15e-e928-4376-86da-9541d4895865','2dd2ff6c-bb0d-448a-b403-5f3826045ac1','logOutput','true',{ts '2015-12-19 11:09:38.965'},null,null,{ts '2015-12-19 23:49:50.246'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a19ad174-c0d6-4eff-948e-e7f6d894df6d','05c697e8-98da-4a7b-82ba-ba45d7e08ca7','expected.entity.messages.count','2',{ts '2016-01-28 12:00:40.668'},null,null,{ts '2016-01-28 12:17:15.710'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a6af59d5-99a7-4fb5-8a8f-a98c66f2549f','95f153df-3bf1-4b47-95e4-6373cca206fe','run.when','PER UNIT OF WORK',{ts '2016-01-28 11:22:26.056'},null,null,{ts '2016-01-28 12:00:06.966'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c13118af-4e0e-40ff-830e-d8f675854256','7b64d2c8-b473-4d61-93a1-9b10c5700944','logOutput','false',{ts '2016-01-28 12:16:38.937'},null,null,{ts '2016-01-28 12:17:27.687'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('cf3ebd28-843f-468e-b36d-0bb9e1b29561','ac7da994-f331-476b-91ad-8fbce0bece89','logOutput','true',{ts '2015-12-19 11:09:41.386'},null,null,{ts '2015-12-19 23:49:50.252'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d8c4d327-30c9-4544-ba53-34204e1e68fc','2dd2ff6c-bb0d-448a-b403-5f3826045ac1','sql','select * From table1;',{ts '2015-12-19 11:05:57.084'},null,null,{ts '2015-12-19 23:49:50.245'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e61a2afd-a841-4058-8b5a-242872c4781c','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','rows.per.message','1',{ts '2015-12-19 23:48:39.552'},null,null,{ts '2016-01-22 17:25:38.710'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('edef27b4-ecb5-425e-a5ed-9431b7eab1d2','fa299a98-861c-40e6-a716-ec65f0ee6442','sql','drop table if exists TABLE2;
create table TABLE2 (PK_COL1 varchar(20), PK_COL2 varchar(20), COL3 varchar(20), primary key (PK_COL1, PK_COL2));
insert into TABLE2 values (''a'',''b'',''c'');
insert into TABLE2 values (''d'',''e'',''f'');
insert into TABLE2 values (''x'',''y'',''z'');
insert into TABLE2 values (''4'',''2'',''3'');',{ts '2016-01-28 11:23:08.626'},null,null,{ts '2016-01-28 12:00:06.967'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('f3c4464d-3faa-40bf-96a2-66deca28012a','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','source.1','c5f66379-84e6-4e76-b117-13f751a7fad0',{ts '2015-12-19 11:06:45.298'},null,null,{ts '2016-01-22 17:25:38.711'});
insert into METL_COMPONENT_ENTITY_SETTING (ID, COMPONENT_ID, ENTITY_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('66293f3a-203c-4955-9c11-45674fd7fcc5','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','cc4016f9-607a-43c8-a8a9-e5277bef869e','del.enabled','true',{ts '2015-12-19 21:10:16.395'},null,null,{ts '2016-01-22 17:25:38.710'});
insert into METL_COMPONENT_ENTITY_SETTING (ID, COMPONENT_ID, ENTITY_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e4d88ffc-522e-451d-bd57-18dfa134ec40','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','cc4016f9-607a-43c8-a8a9-e5277bef869e','chg.enabled','true',{ts '2015-12-19 11:54:07.190'},null,null,{ts '2016-01-22 17:25:38.710'});
insert into METL_COMPONENT_ENTITY_SETTING (ID, COMPONENT_ID, ENTITY_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('f89e67f9-7daf-4bf0-ad0e-6694af969ca2','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','cc4016f9-607a-43c8-a8a9-e5277bef869e','add.enabled','true',{ts '2015-12-19 18:42:51.710'},null,null,{ts '2016-01-22 17:25:38.709'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('6c2802ef-efb5-4f53-89ce-aaaf28a58bdd','7b64d2c8-b473-4d61-93a1-9b10c5700944','5ace80c1-b67a-42ea-8d1d-e035ba104644','compare.enabled','false',{ts '2016-01-28 11:25:43.503'},null,null,{ts '2016-01-28 12:16:35.991'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b14c9e88-5806-4c08-b756-0d7222038f2f','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','77a175ee-1488-4897-98a8-525a5b2cf77d','compare.enabled','true',{ts '2015-12-19 23:09:26.562'},null,null,{ts '2016-01-22 17:25:38.708'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b7abdd64-69f9-4b05-a243-5997026b1519','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2','61842601-9cbc-42af-8e06-2a50ac39e86e','compare.enabled','false',{ts '2015-12-19 23:20:03.958'},null,null,{ts '2016-01-22 17:25:38.708'});
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME, TEST) values ('0b16b5d9-0762-4be2-997a-f5ed8641db77','71b2c9e8-b9a3-4022-a341-1ded3a0a4944','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'DataDiff - Compare PK only',null,{ts '2016-01-28 11:17:47.468'},null,null,{ts '2016-01-28 12:00:06.962'},1);
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME, TEST) values ('d4cdf3dd-f377-4bd2-9c5b-4d19a052172f','5b385f28-7ade-4973-9086-79c0cf4e952f','7c24f46b-a40a-45cb-8e06-e2a65f404cf2',0,'DataDiff - Compare Specific Attributes',null,{ts '2015-12-19 11:00:23.319'},null,null,{ts '2015-12-19 23:49:50.244'},1);
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2370ef97-3e89-4340-9131-a1b5e8fecae8','d4cdf3dd-f377-4bd2-9c5b-4d19a052172f','a764ab0d-9ccb-4b23-aa40-819aeb7d78c2',500,50,6,{ts '2015-12-19 11:06:28.858'},null,null,{ts '2016-01-22 17:25:38.711'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2b509af2-aeea-4426-b39e-029d9c3d0e1e','d4cdf3dd-f377-4bd2-9c5b-4d19a052172f','d4ace379-120f-4b8a-bb5d-e54f1cb09b6f',180,60,1,{ts '2015-12-19 11:03:48.811'},null,null,{ts '2015-12-21 07:55:37.951'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('65819b86-8bc7-47c9-b3d2-f9430678fceb','d4cdf3dd-f377-4bd2-9c5b-4d19a052172f','ac7da994-f331-476b-91ad-8fbce0bece89',340,120,6,{ts '2015-12-19 11:05:27.926'},null,null,{ts '2015-12-19 23:49:50.252'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8bba89f4-1534-4447-8eb6-65c1f4ec70e5','0b16b5d9-0762-4be2-997a-f5ed8641db77','95f153df-3bf1-4b47-95e4-6373cca206fe',40,80,0,{ts '2016-01-28 11:19:11.440'},null,null,{ts '2016-01-28 12:00:06.966'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('92cf1be5-12e7-4f32-af5a-61d239bfe8a2','0b16b5d9-0762-4be2-997a-f5ed8641db77','05c697e8-98da-4a7b-82ba-ba45d7e08ca7',660,80,6,{ts '2016-01-28 12:00:04.087'},null,null,{ts '2016-01-28 12:00:06.970'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a503bef8-c7e7-4422-a3ee-1339689d12a5','0b16b5d9-0762-4be2-997a-f5ed8641db77','a65e7073-c8c3-4cfc-868f-030f12b629ed',350,30,2,{ts '2016-01-28 11:24:01.262'},null,null,{ts '2016-01-28 12:00:06.964'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a68a5f8e-d471-417a-8f0b-c28a07d01f4c','0b16b5d9-0762-4be2-997a-f5ed8641db77','fa299a98-861c-40e6-a716-ec65f0ee6442',180,80,1,{ts '2016-01-28 11:22:32.996'},null,null,{ts '2016-01-28 12:00:06.967'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('adf2c04a-aa68-458c-8e7a-3583a44d3f49','d4cdf3dd-f377-4bd2-9c5b-4d19a052172f','b446b0f5-8428-43ed-88f8-8bec94d7fc6e',40,60,1,{ts '2015-12-19 11:01:07.240'},null,null,{ts '2015-12-19 23:49:50.248'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b054adf3-ac74-42b3-b91e-653d24a2ccea','0b16b5d9-0762-4be2-997a-f5ed8641db77','7b64d2c8-b473-4d61-93a1-9b10c5700944',510,80,6,{ts '2016-01-28 11:25:12.935'},null,null,{ts '2016-01-28 12:16:35.993'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ba70395a-b94d-4dad-af15-a0e26eeac517','0b16b5d9-0762-4be2-997a-f5ed8641db77','c038e559-23c2-481a-bedd-3045b8bb51d3',350,140,4,{ts '2016-01-28 11:24:29.292'},null,null,{ts '2016-01-28 12:00:06.971'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c5f66379-84e6-4e76-b117-13f751a7fad0','d4cdf3dd-f377-4bd2-9c5b-4d19a052172f','2dd2ff6c-bb0d-448a-b403-5f3826045ac1',340,10,3,{ts '2015-12-19 11:05:04.945'},null,null,{ts '2015-12-19 23:49:50.246'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e180d68d-14de-48ea-87bf-e4b98e453db9','d4cdf3dd-f377-4bd2-9c5b-4d19a052172f','64ded4b8-2c4e-4002-bb90-2c03acd1e244',630,50,7,{ts '2015-12-19 23:49:45.573'},null,null,{ts '2016-01-22 17:23:14.063'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2370ef97-3e89-4340-9131-a1b5e8fecae8','e180d68d-14de-48ea-87bf-e4b98e453db9',{ts '2015-12-19 23:49:50.244'},null,null,{ts '2015-12-19 23:49:50.255'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2b509af2-aeea-4426-b39e-029d9c3d0e1e','65819b86-8bc7-47c9-b3d2-f9430678fceb',{ts '2015-12-19 11:05:36.365'},null,null,{ts '2015-12-19 23:49:50.254'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2b509af2-aeea-4426-b39e-029d9c3d0e1e','c5f66379-84e6-4e76-b117-13f751a7fad0',{ts '2015-12-19 11:05:20.795'},null,null,{ts '2015-12-19 23:49:50.254'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('65819b86-8bc7-47c9-b3d2-f9430678fceb','2370ef97-3e89-4340-9131-a1b5e8fecae8',{ts '2015-12-19 11:06:34.026'},null,null,{ts '2015-12-19 23:49:50.254'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8bba89f4-1534-4447-8eb6-65c1f4ec70e5','a68a5f8e-d471-417a-8f0b-c28a07d01f4c',{ts '2016-01-28 11:23:10.680'},null,null,{ts '2016-01-28 12:00:06.971'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a503bef8-c7e7-4422-a3ee-1339689d12a5','b054adf3-ac74-42b3-b91e-653d24a2ccea',{ts '2016-01-28 11:25:15.517'},null,null,{ts '2016-01-28 12:00:06.972'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a68a5f8e-d471-417a-8f0b-c28a07d01f4c','a503bef8-c7e7-4422-a3ee-1339689d12a5',{ts '2016-01-28 11:24:26.711'},null,null,{ts '2016-01-28 12:00:06.972'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a68a5f8e-d471-417a-8f0b-c28a07d01f4c','ba70395a-b94d-4dad-af15-a0e26eeac517',{ts '2016-01-28 11:25:07.553'},null,null,{ts '2016-01-28 12:00:06.972'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('adf2c04a-aa68-458c-8e7a-3583a44d3f49','2b509af2-aeea-4426-b39e-029d9c3d0e1e',{ts '2015-12-19 11:04:15.442'},null,null,{ts '2015-12-19 23:49:50.253'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b054adf3-ac74-42b3-b91e-653d24a2ccea','92cf1be5-12e7-4f32-af5a-61d239bfe8a2',{ts '2016-01-28 12:00:06.962'},null,null,{ts '2016-01-28 12:00:06.973'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ba70395a-b94d-4dad-af15-a0e26eeac517','b054adf3-ac74-42b3-b91e-653d24a2ccea',{ts '2016-01-28 11:25:17.365'},null,null,{ts '2016-01-28 12:00:06.973'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c5f66379-84e6-4e76-b117-13f751a7fad0','2370ef97-3e89-4340-9131-a1b5e8fecae8',{ts '2015-12-19 11:06:31.847'},null,null,{ts '2015-12-19 23:49:50.254'});
